
typedef enum
{//logique d'�tat de la communication
	scxpkINVALID=0,
	scxpkOK=1,

	scxpkWaitingRcvACK, //le dernier message �mis doit �tre valid� par ACK et/ou la prochaine lecture/ecriture doit attendre la reception de ACK suite au dernier message (appeler scxReadACK)
	scxpkRcvTimeout,    //l'attente de ACK du dernier message s'est termin�e par timeout
	scxpkRcvACK,		//l'attente de ACK du dernier message s'est termin�e par reception de ACK
	scxpkRcvACKR,		//l'attente de ACK du dernier message s'est termin�e par reception de ACKR
	scxpkRcvNACK,		//l'attente de ACK du dernier message s'est termin�e par reception de NACK
	scxpkRcvNACKR,		//l'attente de ACK du dernier message s'est termin�e par reception de NACKR
	scxpkRcvSTX,		//l'attente de ACK du dernier message s'est termin�e par reception de STX (erreur)

	scxpkWaitingSndACK, //le dernier message recu doit �tre valid� par ACK et/ou il faut indiquer une erreur si la prochaine lecture/ecriture n'est pas pr�c�d�e de scxWriteACK/scxWriteNACK
	scxpkSndACK,		//on a renvoy� ACK en r�ponse au dernier message recu
	scxpkSndNACK,		//on a renvoy� NACK en r�ponse au dernier message recu
	scxpkSndTimeout,	//on a repondu hors d�lai au dernier message recu

	scxpkAbort
} SCX_PACKET_ETAT;

typedef struct
{//�tat courant de la communication
	SCX_PACKET_ETAT Etat;
	int Address;
	int msTimeOut;
	double secTimeOrigin;
} SCX_PACKET_HIST;

typedef enum
{//codes de r�ponse de la fonction scxTestACK(non bloquante) et scxReadACK(bloquante)
	scx_STX=-4,
	scx_NACKR=-3,
	scx_NACK=-2,
	scx_Timeout=-1,
	scx_Waiting=0,
	scx_ACK=1,
	scx_ACKR=2
} SCX_ACK_ETAT;

typedef struct
{//la communication est d�finie par un �tat, et un canal de communication (Protocol) qui met en forme les messages (transcodage, STX/ETX/Checksum)
	SCX_PACKET_HIST Hist;//�tat courant (scxpkOK ou scxpkWaitingRcvACK ou scxpkWaitingSndACK)
	SCX_PACKET_HIST pHist;//derni�re transition (scxpkRcvXXX ou scxpkSndXXX)
	SCX_PACKET_HIST ppHist;//etat pr�c�dant (scxpkOK ou scxpkWaitingRcvACK ou scxpkWaitingSndACK)

	SCX_CONNEXION* Protocol;

	//SCX_CONNEXION* PhysicalR;//alias vers C->Protocol->State->R.C
	//SCX_CONNEXION* PhysicalW;//alias vers C->Protocol->State->W.C

	S_TIMER Timer;

} SCX_PACKET_CONNEXION;

/*
typedef struct
{
	unsigned char Address;
	unsigned char Command;
	unsigned char Data[];
} SCX_PACKET_BYTE;

typedef struct
{
	unsigned char Address;
	unsigned char Command;
	char Data[];
} SCX_PACKET_CHAR;

typedef struct
{
	unsigned char Address;
	unsigned char Command;
	unsigned long Data[];
} SCX_PACKET_DWORD;

typedef struct
{
	unsigned char Address;
	unsigned char Command;
	float Data[];
} SCX_PACKET_FLOAT;
*/

void scxDbgAppendState(char* Msg, SCX_PACKET_HIST Hist);
void scxDbgGetState(SCX_PACKET_CONNEXION* CP, char* Msg, int MsgLen); //test et debug

void scxChangeState(SCX_PACKET_CONNEXION* CP, SCX_PACKET_ETAT Etat, int Address=0, int msTimeOut=0);

#define scxPacketAddress(Data) ((Data)?((BYTE*)(Data))[0]:0)
#define scxPacketCommand(Data) ((Data)?((BYTE*)(Data))[1]:0)

#define scxpkEtat(CP) (CP->Hist.Etat)

//cette interface g�re la logique de ACK/NACK par dessus l'encodage RIA (connexion PACKET)
//la connexion PACKET se charge de l'encodage RIA, du calcul de checksum et de la gestion
//des d�limiteurs de trame (STX/ETX)
SCX_PACKET_CONNEXION* SPG_CONV scxPacketOpen(SCX_CONNEXION* C);
int SPG_CONV scxClose(SCX_PACKET_CONNEXION* &CP);

//scxWrite attend ACK ou NACK en retour, utiliser msTimeOut=0 0 si une r�ponse autre est attendue (utiliser alors scxRead ou scxReadACK)
//dans tous les cas la fonction retourne imm�diatement, le tests de r�ception de ACK/NACK/Timeout sera report� 
//lors des appels ult�rieurs � n'importe laquelle des fonctions de communication
#ifdef DebugNetwork
int SPG_CONV scxWrite(void* Data, int DataLen, SCX_PACKET_CONNEXION* CP, int msACKTimeOut /*=20000*/);
#else
int SPG_CONV scxWrite(void* Data, int DataLen, SCX_PACKET_CONNEXION* CP, int msACKTimeOut /*=600*/);
#endif

//scxRead doit etre suivi scxWriteACK en r�ponse, sauf si msTimeOut=0
int SPG_CONV scxRead(void* Data, int& DataLen, SCX_PACKET_CONNEXION* CP, int msACKTimeOut /*=600*/);

int SPG_CONV scxTestRead(SCX_PACKET_CONNEXION* C);  //-1:un packet valide est en attente, 0:pas de packet valide, mais un packet en cours de d�codage peut exister
void SPG_CONV scxFlushRead(SCX_PACKET_CONNEXION* C);//vide tous les packets en attente y compris ceux en cours de d�codage

//utiliser pour renvoyer ACK apres interp�taion du message, uniquement apres avoir effectu� un read avec msTimeOut non nul
int SPG_CONV scxWriteACK(SCX_PACKET_CONNEXION* CP);
int SPG_CONV scxWriteNACK(SCX_PACKET_CONNEXION* CP);

//utiliser pour attendre ACK apres scxWrite, inutile de l'appeler explicitement
//sauf pour forcer l'attente de ACK apres un appel de scxWrite avec msTimeout<>0
SCX_ACK_ETAT SPG_CONV scxTestACK(SCX_PACKET_CONNEXION* CP);//retourne imm�diatement
SCX_ACK_ETAT SPG_CONV scxReadACK(SCX_PACKET_CONNEXION* CP);//attend ack jusqu'� expiration du timeout sp�cifi� dans scxWrite

//ecriture directe sur la liaison RS232 (utilise scxWriteThrough())
int SPG_CONV scxWriteThrough(void* Data, int DataLen, SCX_PACKET_CONNEXION* CP); //test et debug: ecriture directe sur la liaison physique
int SPG_CONV scxReadThrough(void* Data, int& DataLen, SCX_PACKET_CONNEXION* CP); //test et debug: ecriture directe sur la liaison physique

int SPG_CONV scxInput(void* Data, int& DataLen, SCX_CONNEXION* C);


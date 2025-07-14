
typedef struct
{
	int Etat;

	Profil Reference;//image de r�f�rence (flottant)

	Profil RTransform;//image de r�f�rence transform�e (! taille diff�rente de la r�f�rence)

	//taille caract�ristique des motifs � chercher pour en d�duire automatiquement les parametres
	int BumpSize;

	//parametres de SPG_AlignTransform
	float MaxIntensityLevel;//niveau max de la camera (256 en 8bits)
	float Threshold;//seuil de rugosit� env.0.05f
	int Downsampling;//sous �chantillonnage de la r�f�rence
	int AeraSize;//zone d'integration

	//d�placement en pixel permettant d'aligner le profil test� avec la r�f�rence
	int PosX;
	int PosY;
	float Weight;

} SPG_Align;

void SPG_CONV SPG_AlignTransform(Profil& Ref, Profil& T, int Downsampling, int AeraSize, float Threshold, float MaxIntensityLevel);
int SPG_CONV SPG_AlignInit(SPG_Align& SA, Profil& Reference, int BumpSize, float Threshold=0.05f, float MaxIntensityLevel=256.0f);
void SPG_CONV SPG_AlignClose(SPG_Align& SA);
void SPG_CONV SPG_AlignEcart(SPG_Align& SA, Profil& PTransform, float& Diff, float& Weight, int XTest, int YTest);
void SPG_CONV SPG_AlignGetPos(SPG_Align& SA, Profil& P, int& PosX, int& PosY, int SearchAera);

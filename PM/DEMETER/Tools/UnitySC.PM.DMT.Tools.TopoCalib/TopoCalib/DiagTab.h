#ifndef _DIAGONGLET_H_
#define _DIAGONGLET_H_

/* ****************** INCLUDES ******************* */
//#include "afxcmn.h"

/** Utilisation
    Ins�rer la classe CDiagTab dans le projet
    Dans la boite de dialogue h�te, d�clarer :
    un contr�le CTabCtrl et lui associer une variable contr�le 'm_Onglet'
    modifier manuellement le type de la variable associ�e en 'CDiagTab'
    Construire les ressources de toutes le boites de dialogue des pages et les classes associ�es
    Dans la fonction InitDialogue de la boite h�te :
    	- Cr�er les boites de dialogues : Dlg.Create(IDD_DIALOG, &m_Onglet);
    	_ les associer aux pages : m_Onglet.InsertItem(indice, (CDialog *) Dlg, "Titre onglet");
*/
class CDiagTab : public CTabCtrl
{
// ----------- TYPES -----------
private:
	enum {ONG_NBMAX = 16,};

// ----------- ATTRIBUTS -----------
private:
	int		m_nNbItem;
	int		m_CurDlg;
	CDialog *TabDlg[ONG_NBMAX];

// ----------- METHODES -----------
public:
    /** Constructeur.   
	 */
			CDiagTab();

    /** Destructeur.   
	 */
	virtual ~CDiagTab();

    /** Insertion d'un nouvel onglet au num�ro nItem.
		@return -1 si erreur.
	 */
	int		InsertItem(int nItem, CDialog *pDlg, CString sCaption);

    /** supression de l'onglet num�ro nItem (d�calage des suivants).
	 */
	BOOL	DeleteItem(int nItem);

    /** renomme l'onglet d'indice nItem.
	 */
	void	Rename(int nItem, CString sCaption);

    /** Active et affiche la boite de dialogue associ�e � l'onglet d'indice nItem.
		@return indice de l'onglet pr�c�demment s�lect�.
	 */
	int		SetCurSel(int nItem = -1);

    /** Retourne le pointeur vers la CDialog d'indice sp�cifi�.
	@param nItem Indice de l'onglet.
		@return indice de l'onglet pr�c�demment s�lect�.
	 */
inline	CDialog *		GetDialog(int nItem) 
			{ return( ((nItem >=0) && (nItem < m_nNbItem)) ? TabDlg[nItem] : NULL); };

private:
	void	Hide();

protected:
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(COnglet)
	//}}AFX_VIRTUAL

	//{{AFX_MSG(COnglet)
	afx_msg void OnClick(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

#endif //#ifndef _DIAGONGLET_H_

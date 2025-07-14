// 30/01/2007: Ini parser Taken from http://files.codes-sources.com/fichier.aspx?id=40414&f=default.ini

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Collections;
using System.Text.RegularExpressions;



namespace IniFileTools
{
    public class INIfile
    {
        // chemin vers le fichier de conf qui est stock�
        private string _path = ".\\default.ini";
        // variable qui stock toutes les information lu et � �crire sur le fichier.
        private Dictionary<string, Dictionary<string, string>> groupes = new Dictionary<string,Dictionary<string, string>>();

        // les deux regex utilis� lors du parsing du fichier de conf
        private Regex reg_options = new Regex(@"\[([^]]+)]");
        private Regex reg_elements = new Regex(@"^([^\=]+)\=(.*)$");


        // constructeur de la classe qui prend le param�tre vers le fichier de configuration
        public INIfile(string path)
        {
            _path = path;
            getFile();
        }

        /*
         * m�thode qui va parser le fichier donn� en parametre lors de la construction de la classe.
         * chaque ent�te de type [quelquechose] va �tre r�f�renc� dans la variable groupes avec 
         * pour clef quelquechose et pour valeur un dictionnaire qui contiendra les valeurs
         * telles que chaque ligne de type : 'index=valeur' dans l'ent�te [quelquechose] sera accessible
         * par la commande suivante : groupes["quelquechose"]["index"] = valeur.
         * 
         * PS: le lecteur n'a pas l'air d'appr�cier les accents, il ne les consid�re pas si il en rencontre.
         */

        public bool getFile()
        {
            TextReader lecteur = null;
            string line = "";
            string cur_groupe = "";
            string temp_group = "";
            string temp_index = "";
            string temp_value = "";
            int num_line = 0;

            try
            {
                lecteur = new StreamReader(_path);
                while ((line = lecteur.ReadLine()) != null)
                {
                    num_line++;
                    if (!string.IsNullOrEmpty(line.Trim()))
                    {
                        if (reg_options.IsMatch(line) == true)
                        {
                            temp_group = reg_options.Match(line).Groups[1].Value;
                            //MessageBox.Show("J'ai trouv� le groupe '" + temp_group +"' � la ligne n�"+ num_line.ToString());
                            cur_groupe = temp_group.ToUpper();
                            // on ne cr�e l'entr�e dans le dictionnaire que si elle n'existe pas.
                            // possibilit� de faire : 'groupes[temp_group] = new Dictionary<string, string>();' ?
                            if (groupes.ContainsKey(temp_group.ToUpper()) == false)
                                groupes.Add(temp_group.ToUpper(), new Dictionary<string, string>());
                        }
                        else if (reg_elements.IsMatch(line) == true)
                        {
                            temp_index = reg_elements.Match(line).Groups[1].Value;
                            temp_value = reg_elements.Match(line).Groups[2].Value;
                            //MessageBox.Show("J'ai trouv� l'�l�ment '" + temp_index + "' avec la valeur '"+ temp_value +"' � la ligne n�" + num_line.ToString());
                            if (groupes[cur_groupe].ContainsKey(temp_index) == false)
                            // si le �l�ment n'existe pas, on le rajoute.
                                groupes[cur_groupe].Add(temp_index.Trim(), temp_value.Trim());
                            else
                            // si l'�l�ment existe, on le met tout bonnement � jour.
                                groupes[cur_groupe][temp_index] = temp_value.Trim();

                        }
             //           else
            //                MessageBox.Show("La ligne n�"+ num_line.ToString() + " : "+ line +"\nN'est pas une ligne de configuration valide.");
                    }
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Une erreur c'est produite lors de la lecture du fichier '"+ _path +"' :\n"+ e.ToString());
                lecteur.Close();
                return false;
            }

            lecteur.Close();
            return true;
        }

        // m�thode qui va �crire les informations contenues dans la variable 'groupes' dans le fichier de conf initial.
        public bool writeFile()
        {
            TextWriter ecriveur = null;
            try
            {
                ecriveur = new StreamWriter(_path);
                foreach (KeyValuePair<string, Dictionary<string, string>> groupe in groupes)
                {
                    //text = "Dans le groupe '" + groupe.Key + "', j'ai trouv� les �l�ments suivants :\n\n";
                    ecriveur.Write("["+ groupe.Key + "]\r\n");
                    foreach (KeyValuePair<string, string> element in groupe.Value)
                    {
                        //text += "\t- " + element.Key + "=" + element.Value + "\n";
                        ecriveur.Write(element.Key +"="+ element.Value +"\r\n");
                    }
                    //MessageBox.Show(text);
                    ecriveur.Write("\r\n");
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Une erreur c'est produite lors de l'�criture du fichier '" + _path + "' :\n" + e.ToString());
                ecriveur.Close();
                return false;
            }

            ecriveur.Close();
            return true;
        }

        // m�thode qui va �crire les informations contenues dans la variable 'groupes' dans le fichier de conf d�finie par 'my_path'
        public bool writeFile(string my_path)
        {
            TextWriter ecriveur = null;
            try
            {
                ecriveur = new StreamWriter(my_path);
                foreach (KeyValuePair<string, Dictionary<string, string>> groupe in groupes)
                {
                    //text = "Dans le groupe '" + groupe.Key + "', j'ai trouv� les �l�ments suivants :\n\n";
                    ecriveur.Write("["+ groupe.Key + "]\r\n");
                    foreach (KeyValuePair<string, string> element in groupe.Value)
                    {
                        //text += "\t- " + element.Key + "=" + element.Value + "\n";
                        ecriveur.Write(element.Key + "=" + element.Value + "\r\n");
                    }
                    //MessageBox.Show(text);
                    ecriveur.Write("\r\n");
                }
            }
            catch (Exception e)
            {
                System.Windows.Forms.MessageBox.Show("Une erreur c'est produite lors de l'�criture du fichier '" + _path + "' :\n" + e.ToString());
                ecriveur.Close();
                return false;
            }

            ecriveur.Close();
            return true;
        }

        /*
         * cette instruction permet d'utiliser  la classe ini d'une mani�re assez pratique je trouve car
         * on peux acceder � une valeur gr�ce a cette synthaxe : value = INIFile[ent�te, index]; et on peux
         * facilement mettre � jour ou cr�er une entr� par la meme synthaxe : INIFile[ent�te, index] = value;
         */

        public string this[string groupe, string element]
        {
            get
            {
                if (string.IsNullOrEmpty(groupe) || string.IsNullOrEmpty(element))
                    return null;
                if (groupes.ContainsKey(groupe) == false)
                    return null;
                if (groupes[groupe].ContainsKey(element) == false)
                    return null;
                return groupes[groupe][element];
            }

            set
            {
                if (string.IsNullOrEmpty(groupe) || string.IsNullOrEmpty(element))
                    return;
                if (groupes.ContainsKey(groupe) == false)
                    groupes.Add(groupe, new Dictionary<string, string>());
                if (groupes[groupe].ContainsKey(element) == true)
                    groupes[groupe][element] = Convert.ToString(value);
                else
                    groupes[groupe].Add(element, Convert.ToString(value));
            }
        }

        // m�thode con�u pour v�rifier les valeurs pr�sentes dans la variable 'groupes'
        // chaque popup contient une ent�te et les �l�ments associ�s.
        public void popup_values()
        {
            string text = "";

            foreach (KeyValuePair<string, Dictionary<string, string>> groupe in groupes)
            {
                text = "Dans le groupe '"+ groupe.Key +"', j'ai trouv� les �l�ments suivants :\n\n";
                foreach (KeyValuePair<string, string> element in groupe.Value)
                {
                    text += "\t- " + element.Key + "=" + element.Value +"\n";
                }
                MessageBox.Show(text);
            }
        }
    }
}

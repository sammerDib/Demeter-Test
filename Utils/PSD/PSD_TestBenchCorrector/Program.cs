﻿using System;
using System.Windows.Forms;

namespace AppsTestBenchCorrector
{
    internal static class Program
    {
        /// <summary>
        /// Point d'entrée principal de l'application.
        /// </summary>
        [STAThread]
        private static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new ApssTestBenchCorrector());
        }
    }
}

using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace DSED01AppRx.WPF
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private void OnStartup(object sender, StartupEventArgs e)
        {
            //var mainWindow = sender as Window;

            
            //mainWindow.Top = 100;
            //mainWindow.Left = 100;


            /*  http://www.c-sharpcorner.com/uploadfile/mahesh/show-multiple-windows-at-startup-in-wpf/ */

            RouletteGUI view = new RouletteGUI();

            view.Show();
        }
    }


}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace DSED01AppRx.WPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        const string random_string = "Random Number";
        const string sequence_string = "Sequence Number";
        int count = 0;
        private void btnSetNumberSequence_Click(object sender, RoutedEventArgs e)
        {


            string text = (btnSetNumberSequence.Content.ToString() == random_string) ?
                            sequence_string : random_string;


            switch(text)
            {
                case random_string:
                    RandomImage01.Visibility = Visibility.Visible;
                    RandomImage02.Visibility = Visibility.Visible;
                    RandomImage03.Visibility = Visibility.Visible;
                    RandomImage04.Visibility = Visibility.Visible;
                    RandomImage05.Visibility = Visibility.Visible;
                    RandomImage06.Visibility = Visibility.Visible;
                    break;
                case sequence_string:
                    Image01.Visibility = Visibility.Visible;
                    Image02.Visibility = Visibility.Visible;
                    Image03.Visibility = Visibility.Visible;
                    Image04.Visibility = Visibility.Visible;
                    Image05.Visibility = Visibility.Visible;
                    Image06.Visibility = Visibility.Visible;
                    break;
            }





            void SetGridVisibility(Grid selected_grid)
            {
                Visibility set_visible = (selected_grid.Visibility == Visibility.Hidden )?                                      Visibility.Visible : Visibility.Hidden;

                selected_grid.Visibility = set_visible;
            }

            SetGridVisibility(GridRandom);
            SetGridVisibility(GridSequence);

            btnSetNumberSequence.Content = text;
            SelectedImage.Source = null;
            count = 0;
        }

        private void Image_Click(object sender, MouseButtonEventArgs e)
        {
            Image image = sender as Image;

            if(btnSetNumberSequence.Content.ToString()== random_string)
            {
                string tag = image.Tag.ToString();
                int index;
                if (int.TryParse(tag, out index))
                {
                    if (index != count + 1)
                        return;
                    count = (count + 1) % 6;
                }     
                else
                    return;
            }

            image.Visibility = Visibility.Hidden;
            //SelectedImage.Resources = image.Resources;
            SelectedImage.Source = image.Source;
        }
    }
}

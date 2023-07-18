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

namespace ProjektSemestralny
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            TurnamentWindow turnamentsWindow = new TurnamentWindow();
            turnamentsWindow.Show();
            this.Close();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            PlayerWindow playersWindow = new PlayerWindow();
            playersWindow.Show();
            this.Close();
        }

        /* // */ 
        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            CompetitionWindow competitionsWindow = new CompetitionWindow();
            competitionsWindow.Show();
            this.Close();
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            ScoreWindow scoreWindow = new ScoreWindow();
            scoreWindow.Show();
            this.Close();
        }
    }
}

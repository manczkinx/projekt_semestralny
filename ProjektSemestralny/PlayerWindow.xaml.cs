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
using System.Windows.Shapes;

namespace ProjektSemestralny
{
    /// <summary>
    /// Logika interakcji dla klasy PlayerWindow.xaml
    /// </summary>
    public partial class PlayerWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        public PlayerWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Players. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.PlayersTableAdapter databaseDataSetPlayersTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.PlayersTableAdapter();
            databaseDataSetPlayersTableAdapter.Fill(databaseDataSet.Players);
            System.Windows.Data.CollectionViewSource playersViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("playersViewSource")));
            playersViewSource.View.MoveCurrentToFirst();
        }

        private void Back_Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Send_Button_Click(object sender, RoutedEventArgs e)
        {
            if (PlayerNameBox.Text == "" || PlayerSecondNameBox.Text == "" || PlayerClubBox.Text == "")
            {
                MessageBox.Show("Pola imię, nazwisko i klub nie mogą pozostać puste", "Uwaga");
            }
            else
            {
                Players players = new Players();

                players.PlayerName = PlayerNameBox.Text.Trim();
                players.PlayerSecondname = PlayerSecondNameBox.Text.Trim();
                players.Club = PlayerClubBox.Text.Trim();
                players.LicenseNumber = PlayerLicenseBox.Text.Trim();
                players.PhoneNumber = PlayerPhoneNumberBox.Text.Trim();
                players.Email = PlayerEmailBox.Text.Trim();

                db.Players.Add(players);
                db.SaveChanges();
                this.playersDataGrid.ItemsSource = db.Players.ToList();

                PlayerNameBox.Text = "";
                PlayerSecondNameBox.Text = "";
                PlayerClubBox.Text = "";
                PlayerLicenseBox.Text = "";
                PlayerPhoneNumberBox.Text = "";
                PlayerEmailBox.Text = "";
            }
        }

        private void Update_Button_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
            this.playersDataGrid.ItemsSource = db.Players.ToList();
        }

        private void Delete_Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = (playersDataGrid.SelectedItem as Players).Id;
                var delete = db.Players.Where(m => m.Id == id).Single();
                db.Players.Remove(delete);
            }
            catch (System.NullReferenceException)
            {
                MessageBox.Show("Nie wybrano rekordu", "Uwaga");
            }
            db.SaveChanges();
            this.playersDataGrid.ItemsSource = db.Players.ToList();
        }
    }
}
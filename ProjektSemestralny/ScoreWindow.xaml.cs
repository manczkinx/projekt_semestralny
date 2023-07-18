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
    /// Logika interakcji dla klasy ScoreWindow.xaml
    /// </summary>
    public partial class ScoreWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        public ScoreWindow()
        {
            InitializeComponent();
            ComboBoxes();
        }

        private void ComboBoxes()
        {
            TurnamentComboBox.ItemsSource = db.Turnament.Select(u => u.TurnamentName).ToList();
            CompetitionComboBox.ItemsSource = db.Competitions.Select(u => u.CompetitionName).ToList();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Score. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.ScoreTableAdapter databaseDataSetScoreTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.ScoreTableAdapter();
            databaseDataSetScoreTableAdapter.Fill(databaseDataSet.Score);
            System.Windows.Data.CollectionViewSource scoreViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("scoreViewSource")));
            scoreViewSource.View.MoveCurrentToFirst();
        }

        private void Back_Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Send_Button_Click(object sender, RoutedEventArgs e)
        {
            Score score = new Score();

            int playerNumber;
            decimal playerTime;

            try
            {
                playerNumber = Convert.ToInt32(PlayerTextBox.Text);
                score.PlayerScore = Convert.ToInt32(ScoreTextBox.Text.Trim());

                score.Turnament = Convert.ToInt32(db.Turnament
                                .Where(s => s.TurnamentName == TurnamentComboBox.SelectedItem.ToString())
                                .Select(u => u.Id)
                                .SingleOrDefault());

                score.Competition = Convert.ToString(db.Competitions
                                .Where(s => s.CompetitionName == CompetitionComboBox.SelectedItem.ToString())
                                .Select(u => u.Cut)
                                .SingleOrDefault());

                if (XTextBox.Text != "")
                    score.X = Convert.ToInt32(XTextBox.Text.Trim());

                if (db.Players.Any(o => o.Id == playerNumber))
                    score.Player = Convert.ToInt32(PlayerTextBox.Text.Trim());
                else
                {
                    MessageBox.Show("Numer startowy nie istnieje w bazie", "Uwaga");
                    return;
                }

                if (TimeTextBox.Text != "")
                {
                    playerTime = Convert.ToDecimal(TimeTextBox.Text);
                    score.Time = playerTime;
                    if (playerTime != 0)
                        score.FinalScore = Math.Round(Convert.ToInt32(ScoreTextBox.Text.Trim()) / playerTime, 4);
                    else
                        score.FinalScore = 0;
                }
            }
            catch (Exception)
            {
                MessageBox.Show("Wprowadzono błedny typ danych lub pozostawiono puste pole wymagane", "Uwaga");
                return;
            }

            db.Score.Add(score);
            db.SaveChanges();
            this.scoreDataGrid.ItemsSource = db.Score.ToList();
        }

        private void Delete_Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = (scoreDataGrid.SelectedItem as Score).Id;
                var delete = db.Score.Where(m => m.Id == id).Single();
                db.Score.Remove(delete);
            }
            catch (System.NullReferenceException)
            {
                MessageBox.Show("Nie wybrano rekordu", "Uwaga");
            }
            db.SaveChanges();
            this.scoreDataGrid.ItemsSource = db.Score.ToList();
        }

        private void Update_Button_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
            this.scoreDataGrid.ItemsSource = db.Score.ToList();
        }
    }
}
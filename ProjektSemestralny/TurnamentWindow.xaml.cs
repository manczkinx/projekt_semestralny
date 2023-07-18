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
    /// Logika interakcji dla klasy TurnamentWindow.xaml
    /// </summary>
    public partial class TurnamentWindow : Window
    {
        DatabaseEntities db = new DatabaseEntities();

        public TurnamentWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ProjektSemestralny.DatabaseDataSet databaseDataSet = ((ProjektSemestralny.DatabaseDataSet)(this.FindResource("databaseDataSet")));
            // Załaduj dane do tabeli Turnament. Możesz modyfikować ten kod w razie potrzeby.
            ProjektSemestralny.DatabaseDataSetTableAdapters.TurnamentTableAdapter databaseDataSetTurnamentTableAdapter = new ProjektSemestralny.DatabaseDataSetTableAdapters.TurnamentTableAdapter();
            databaseDataSetTurnamentTableAdapter.Fill(databaseDataSet.Turnament);
            System.Windows.Data.CollectionViewSource turnamentViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("turnamentViewSource")));
            turnamentViewSource.View.MoveCurrentToFirst();
        }

        private void Back_Button_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainWindow = new MainWindow();
            mainWindow.Show();
            this.Close();
        }

        private void Send_Button_Click(object sender, RoutedEventArgs e)
        {
            if (TurnamentNameBox.Text == "" || TurnamentDateBox.Text == "")
            {
                MessageBox.Show("Pole nie może pozostać puste", "Uwaga");
            }
            else
            {
                Turnament turnament = new Turnament();
                turnament.TurnamentName = TurnamentNameBox.Text.Trim();
                turnament.TurnamentDate = TurnamentDateBox.SelectedDate.Value;
                db.Turnament.Add(turnament);
                db.SaveChanges();
                this.turnamentDataGrid.ItemsSource = db.Turnament.ToList();
                TurnamentNameBox.Text = "";
                TurnamentDateBox.Text = "";
            }
        }

        private void Update_Button_Click(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
            this.turnamentDataGrid.ItemsSource = db.Turnament.ToList();
        }

        private void Delete_Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                int id = (turnamentDataGrid.SelectedItem as Turnament).Id;
                var delete = db.Turnament.Where(m => m.Id == id).Single();
                db.Turnament.Remove(delete);
            }
            catch (System.NullReferenceException)
            {
                MessageBox.Show("Nie wybrano rekordu", "Uwaga");
            }
            db.SaveChanges();
            this.turnamentDataGrid.ItemsSource = db.Turnament.ToList();
        }
    }
}
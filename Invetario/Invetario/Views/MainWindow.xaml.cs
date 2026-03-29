using Invetario.Models;
using Invetario.Views;
using System.Windows;

namespace Invetario
{
    public partial class MainWindow : Window
    {
        public Usuario UsuarioActual { get; set; }

        public MainWindow(Usuario user)
        {
            InitializeComponent();
            UsuarioActual = user;

            lblUsuario.Text = $"Hola, {UsuarioActual.Username}";

            if (UsuarioActual.Rol == "Admin")
            {
                panelAdmin.Visibility = Visibility.Visible;
            }

            MainFrame.Navigate(new VentasPage());
        }

        private void btnVentas_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new VentasPage());
        private void btnVerProductos_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new ListaProductosPage());
        private void btnNuevoProducto_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new NuevoProductoPage());
        private void btnModificar_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new ModificarProductoPage());

        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            LoginView login = new LoginView();
            login.Show();
            this.Close();
        }
    }
}

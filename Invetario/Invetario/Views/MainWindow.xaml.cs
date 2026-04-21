using Invetario.Models;
using Invetario.Views;
using System;
using System.Windows;
using System.Windows.Media.Imaging;

namespace Invetario
{
    public partial class MainWindow : Window
    {
        public Usuario UsuarioActual { get; set; }

        // 1. Declaramos las páginas a nivel de clase para que no se borren
        private VentasPage _ventasPage;
        private ListaProductosPage _listaProductosPage;

        public MainWindow(Usuario user)
        {
            InitializeComponent();
            UsuarioActual = user;
            lblUsuario.Text = $"Hola, {UsuarioActual.Username}";

            string fotoPath = UsuarioActual.Sexo == "Mujer"
                ? "pack://application:,,,/Assets/empleado femenino.png"
                : "pack://application:,,,/Assets/Empeado masculino.png";
            imgUsuario.ImageSource = new BitmapImage(new Uri(fotoPath, UriKind.Absolute));

            if (UsuarioActual.Rol == "Admin")
                panelAdmin.Visibility = Visibility.Visible;

            // 2. Inicializamos las páginas UNA SOLA VEZ
            _ventasPage = new VentasPage();
            _listaProductosPage = new ListaProductosPage();

            // 3. Arrancamos navegando a la instancia guardada
            MainFrame.Navigate(_ventasPage);
        }

        // 4. Cambiamos la navegación para usar las instancias guardadas en vez de "new"
        private void btnVentas_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(_ventasPage);
        private void btnVerProductos_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(_listaProductosPage);
        private void btnReportes_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new ReportesPage());

        private void btnNuevoProducto_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new NuevoProductoPage());
        private void btnModificar_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new ModificarProductoPage());
        private void btnIrANuevaCategoria_Click(object sender, RoutedEventArgs e) => MainFrame.Navigate(new NuevaCategoriaPage());

        // ====================================================================
        // MÉTODO PUENTE: Recibe el producto de la lista y lo manda a Ventas
        // ====================================================================
        public void RefrescarListaProductos()
        {
            _listaProductosPage.CargarProductos();
        }

        public void EnviarProductoAVentas(Producto p)
        {
            _ventasPage.AgregarProductoDesdeAfuera(p);
            MainFrame.Navigate(_ventasPage); // Te lleva automáticamente a la pantalla de ventas
        }
        private void btnSalir_Click(object sender, RoutedEventArgs e)
        {
            LoginView login = new LoginView();
            login.Show();
            this.Close();
        }

        private void btnAdminUsuarios_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new AdminUsuariosPage());
        }

        private void btnListaCategorias_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ListaCategoriasPage());
        }

        private void btnCerrarPrograma_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
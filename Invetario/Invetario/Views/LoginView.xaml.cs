using Invetario.Data;
using System.Windows;

namespace Invetario.Views
{
    public partial class LoginView : Window
    {
        public LoginView()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            var repo = new ProductoRepository();
            var usuarioLogueado = repo.ValidarUsuario(txtUser.Text, txtPass.Password);

            if (usuarioLogueado != null)
            {
                MainWindow principal = new MainWindow(usuarioLogueado);
                principal.Show();
                this.Close();
            }
            else
            {
                MessageBox.Show("Usuario o contraseña incorrectos", "Error",
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}

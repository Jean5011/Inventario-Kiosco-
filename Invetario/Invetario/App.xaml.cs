using Invetario.Views;
using System.Windows;

namespace Invetario
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            LoginView login = new LoginView();
            login.Show();
        }
    }
}

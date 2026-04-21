using Invetario.Views;
using System.Globalization;
using System.Threading;
using System.Windows;

namespace Invetario
{
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            // Establecer cultura de pesos argentinos en toda la aplicación
            var culturaAR = new CultureInfo("es-AR");
            Thread.CurrentThread.CurrentCulture = culturaAR;
            Thread.CurrentThread.CurrentUICulture = culturaAR;
            CultureInfo.DefaultThreadCurrentCulture = culturaAR;
            CultureInfo.DefaultThreadCurrentUICulture = culturaAR;

            base.OnStartup(e);
            LoginView login = new LoginView();
            login.Show();
        }
    }
}

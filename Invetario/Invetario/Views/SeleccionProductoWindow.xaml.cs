using Invetario.Models;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Input;

namespace Invetario.Views
{
    public partial class SeleccionProductoWindow : Window
    {
        public Producto? ProductoSeleccionado { get; private set; }

        public SeleccionProductoWindow(List<Producto> productos)
        {
            InitializeComponent();
            dgResultados.ItemsSource = productos;
        }

        private void btnSeleccionar_Click(object sender, RoutedEventArgs e)
        {
            Seleccionar();
        }

        private void dgResultados_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            Seleccionar();
        }

        private void Seleccionar()
        {
            if (dgResultados.SelectedItem is Producto p)
            {
                ProductoSeleccionado = p;
                DialogResult = true;
                Close();
            }
            else
            {
                MessageBox.Show("Seleccione un producto de la lista.", "Aviso",
                    MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
    }
}

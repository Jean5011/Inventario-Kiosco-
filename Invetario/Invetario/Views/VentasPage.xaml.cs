using Invetario.Data;
using Invetario.Models;
using System.Collections.ObjectModel;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace Invetario.Views
{
    public partial class VentasPage : Page
    {
        private readonly ProductoRepository _repo = new ProductoRepository();
        private readonly ObservableCollection<Producto> _carrito = new ObservableCollection<Producto>();

        public VentasPage()
        {
            InitializeComponent();
            dgCarrito.ItemsSource = _carrito;
        }

        
        private void ActualizarTotal()
        {
            decimal total = 0;
            foreach (var item in _carrito)
            {
                total += item.PrecioVenta;
            }
            lblTotal.Text = $"Total: {total:C2}";
        }
        private void txtScanner_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            if (e.Key == System.Windows.Input.Key.Enter)
            {
                string busqueda = txtScanner.Text.Trim();
                if (string.IsNullOrEmpty(busqueda)) return;

                // Usamos el nuevo método del repositorio
                var resultados = _repo.BuscarProductos(busqueda).ToList();

                if (resultados.Count == 1)
                {
                    // Encontró exactamente uno (Seguramente un Código de Barras o ID exacto)
                    AgregarAlCarrito(resultados.First());
                    txtScanner.Clear();
                }
                else if (resultados.Count > 1)
                {
                    // Encontró varios (Ej: escribió "Galletitas")
                    System.Windows.MessageBox.Show($"Se encontraron {resultados.Count} productos. Por favor, sé más específico o usá el ID exacto.",
                                                   "Múltiples resultados", System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Information);
                    // Acá a futuro podríamos abrir una ListBox o Ventana Modal para elegir
                }
                else
                {
                    System.Windows.MessageBox.Show("No se encontró ningún producto.", "Error",
                                                   System.Windows.MessageBoxButton.OK, System.Windows.MessageBoxImage.Warning);
                    txtScanner.SelectAll();
                }

                txtScanner.Focus();
            }
        }

        // Método auxiliar (Asumo que ya tenías algo parecido)
        private void AgregarAlCarrito(Producto p)
        {
            // Lógica para agregar a la ObservableCollection _carrito
            _carrito.Add(p);
            ActualizarTotal();
        }

        // Este método es público para que MainWindow lo pueda llamar
        public void AgregarProductoDesdeAfuera(Producto p)
        {
            // Verificamos que el producto no sea nulo
            if (p != null)
            {
                // Reutilizamos la lógica que ya tenés para agregar al carrito
                // Asegurate de que tu ObservableCollection se llame _carrito (o cambiale el nombre acá)
                _carrito.Add(p);
                ActualizarTotal();
            }
        }
    }
}

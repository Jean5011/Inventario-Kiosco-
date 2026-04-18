using System.Windows;
using System.Windows.Controls;

namespace Invetario.Views
{
    public partial class PesableDialog : Window
    {
        public decimal MontoResultado { get; private set; }
        public bool Confirmado { get; private set; }

        private readonly decimal _precioVentaPorKg;

        public PesableDialog(string nombreProducto, decimal precioVentaPorKg)
        {
            InitializeComponent();
            _precioVentaPorKg = precioVentaPorKg;

            txtNombreProducto.Text = nombreProducto;
            txtPrecioKg.Text = $"Precio por kg: {precioVentaPorKg:C2}";

            txtKg.Focus();
        }

        private void txtPeso_TextChanged(object sender, TextChangedEventArgs e)
        {
            ActualizarResumen();
        }

        private void ActualizarResumen()
        {
            if (txtKg == null || txtGr == null || txtPesoTotal == null || txtMontoCalculado == null)
                return;

            if (!decimal.TryParse(txtKg.Text, out decimal kg))
                kg = 0;
            if (!decimal.TryParse(txtGr.Text, out decimal gr))
                gr = 0;

            decimal pesoTotal = kg + (gr / 1000m);
            decimal monto = pesoTotal * _precioVentaPorKg;

            txtPesoTotal.Text = $"Peso total: {pesoTotal:N3} kg";
            txtMontoCalculado.Text = $"Monto: {monto:C2}";
        }

        private void btnAceptar_Click(object sender, RoutedEventArgs e)
        {
            if (!decimal.TryParse(txtKg.Text, out decimal kg))
                kg = 0;
            if (!decimal.TryParse(txtGr.Text, out decimal gr))
                gr = 0;

            decimal pesoTotal = kg + (gr / 1000m);
            decimal monto = pesoTotal * _precioVentaPorKg;

            if (pesoTotal <= 0)
            {
                MessageBox.Show("Ingrese un peso válido mayor a 0.", "Error",
                    MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            MontoResultado = monto;
            Confirmado = true;
            DialogResult = true;
            Close();
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            Confirmado = false;
            DialogResult = false;
            Close();
        }

        private void txt_GotFocus(object sender, RoutedEventArgs e)
        {
            if (sender is TextBox tb)
                tb.SelectAll();
        }
    }
}

using Invetario.Data;
using Invetario.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Invetario.Views
{
    public partial class NuevaCategoriaPage : Page
    {
        private readonly ProductoRepository _repo = new ProductoRepository();

        public NuevaCategoriaPage()
        {
            InitializeComponent();
        }

        private void btnGuardar_Click(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtNombre.Text))
            {
                MessageBox.Show("Por favor, ingrese un nombre para la categoría.");
                return;
            }

            if (_repo.ExisteCategoria(txtNombre.Text.Trim()))
            {
                MessageBox.Show("Ya existe una categoría con ese nombre.", "Categoría Duplicada",
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                txtNombre.Focus();
                return;
            }

            var nuevaCat = new Categoria
            {
                Nombre = txtNombre.Text.Trim(),
                EsPesable = chkEsPesable.IsChecked ?? false
            };

            // Aquí llamaremos al método del repositorio para guardar
            _repo.InsertarCategoria(nuevaCat);

            MessageBox.Show("Categoría guardada con éxito.");
            NavigationService.GoBack();
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}

using Invetario.Data;
using Invetario.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Invetario.Views
{
    /// <summary>
    /// Lógica de interacción para AdminUsuariosPage.xaml
    /// </summary>
    public partial class AdminUsuariosPage : Page
    {
        private List<Usuario> _usuariosFiltrados = new List<Usuario>();
        private int _paginaActual = 1;
        private const int _filasPorPagina = 20;

        public AdminUsuariosPage()
        {
            InitializeComponent();
            ActualizarTabla();
        }

        public void ActualizarTabla()
        {
            var repo = new ProductoRepository();
            _usuariosFiltrados = repo.ObtenerTodosLosUsuarios().ToList();
            _paginaActual = 1;
            MostrarPagina();
        }

        private void MostrarPagina()
        {
            int totalPaginas = (_usuariosFiltrados.Count + _filasPorPagina - 1) / _filasPorPagina;
            if (totalPaginas == 0) totalPaginas = 1;
            if (_paginaActual > totalPaginas) _paginaActual = totalPaginas;

            dgUsuarios.ItemsSource = _usuariosFiltrados
                .Skip((_paginaActual - 1) * _filasPorPagina)
                .Take(_filasPorPagina)
                .ToList();

            txtPagina.Text = $"Página {_paginaActual} de {totalPaginas}";
        }

        private void ActualizarLista()
        {
            var repo = new ProductoRepository();
            string texto = txtFiltroGeneral.Text;
            string sexo = (cmbFiltroSexo.SelectedItem as ComboBoxItem)?.Content.ToString() ?? "Todos";
            string rol = (cmbFiltroRol.SelectedItem as ComboBoxItem)?.Content.ToString() ?? "Todos";

            _usuariosFiltrados = repo.BuscarUsuarios(texto, sexo, rol).ToList();
            _paginaActual = 1;
            MostrarPagina();
        }

        private void btnPaginaAnterior_Click(object sender, RoutedEventArgs e)
        {
            if (_paginaActual > 1)
            {
                _paginaActual--;
                MostrarPagina();
            }
        }

        private void btnPaginaSiguiente_Click(object sender, RoutedEventArgs e)
        {
            int totalPaginas = (_usuariosFiltrados.Count + _filasPorPagina - 1) / _filasPorPagina;
            if (_paginaActual < totalPaginas)
            {
                _paginaActual++;
                MostrarPagina();
            }
        }

        // Evento para el botón Actualizar
        private void btnActualizarTabla_Click(object sender, RoutedEventArgs e)
        {
            txtFiltroGeneral.Clear();
            cmbFiltroSexo.SelectedIndex = 0;
            cmbFiltroRol.SelectedIndex = 0;
            ActualizarLista();
            MessageBox.Show("Lista de usuarios actualizada.");
        }

        private void btnAgregarUsuario_Click(object sender, RoutedEventArgs e)
        {
            var ventana = new NuevoUsuarioWindow();
            ventana.Owner = Window.GetWindow(this);
            if (ventana.ShowDialog() == true)
            {
                ActualizarTabla();
            }
        }

        // Evento que se dispara al escribir o cambiar el combo
        private void Filtro_Changed(object sender, EventArgs e)
        {
            ActualizarLista();
        }

        private void btnModificarUsuario_Click(object sender, RoutedEventArgs e)
        {
            // Forzamos que el DataGrid confirme cualquier edición pendiente
            dgUsuarios.CommitEdit(DataGridEditingUnit.Row, true);

            if (sender is Button btn && btn.DataContext is Usuario usuario)
            {
                if (string.IsNullOrWhiteSpace(usuario.Username) ||
                    string.IsNullOrWhiteSpace(usuario.NombreReal) ||
                    string.IsNullOrWhiteSpace(usuario.Password) ||
                    string.IsNullOrWhiteSpace(usuario.Rol) ||
                    string.IsNullOrWhiteSpace(usuario.Sexo))
                {
                    MessageBox.Show("No se permiten campos vacíos. Por favor, complete todos los datos.");
                    return;
                }

                var repo = new ProductoRepository();
                repo.ActualizarUsuario(usuario);
                MessageBox.Show("¡Usuario actualizado correctamente!");
                ActualizarLista();
            }
        }

        private void TogglePassword_Checked(object sender, RoutedEventArgs e)
        {
            if (sender is ToggleButton toggle && toggle.Parent is StackPanel parent)
            {
                var txtHidden = parent.Children[0] as TextBlock;
                var txtEdit = parent.Children[1] as TextBox;
                if (txtHidden != null) txtHidden.Visibility = Visibility.Collapsed;
                if (txtEdit != null) txtEdit.Visibility = Visibility.Visible;
            }
        }

        private void TogglePassword_Unchecked(object sender, RoutedEventArgs e)
        {
            if (sender is ToggleButton toggle && toggle.Parent is StackPanel parent)
            {
                var txtHidden = parent.Children[0] as TextBlock;
                var txtEdit = parent.Children[1] as TextBox;
                if (txtHidden != null) txtHidden.Visibility = Visibility.Visible;
                if (txtEdit != null) txtEdit.Visibility = Visibility.Collapsed;
            }
        }

        private void btnEliminarUsuario_Click(object sender, RoutedEventArgs e)
        {
            if (sender is Button btn && btn.DataContext is Usuario usuario)
            {
                var resultado = MessageBox.Show(
                    $"¿Está seguro de eliminar al usuario '{usuario.Username}'?",
                    "Confirmar eliminación", MessageBoxButton.YesNo, MessageBoxImage.Warning);

                if (resultado == MessageBoxResult.Yes)
                {
                    var repo = new ProductoRepository();
                    repo.EliminarUsuario(usuario.Id);
                    MessageBox.Show("Usuario eliminado correctamente.");
                    ActualizarLista();
                }
            }
        }

        private void btnGuardarCambios_Click(object sender, RoutedEventArgs e)
        {
            // Obtenemos el usuario que está seleccionado en la tabla
            var usuarioSeleccionado = dgUsuarios.SelectedItem as Usuario;

            if (usuarioSeleccionado != null)
            {
                var repo = new ProductoRepository();
                repo.ActualizarUsuario(usuarioSeleccionado);

                MessageBox.Show("¡Usuario actualizado correctamente!");
                ActualizarLista(); // Refrescamos la tabla para confirmar
            }
            else
            {
                MessageBox.Show("Por favor, selecciona un usuario de la lista primero.");
            }
        }
    }
}

using Invetario.Data;
using System.Windows.Controls;

namespace Invetario.Views
{
    public partial class ListaCategoriasPage : Page
    {
        private readonly ProductoRepository _repo = new ProductoRepository();

        public ListaCategoriasPage()
        {
            InitializeComponent();
            CargarCategorias();
        }

        public void CargarCategorias()
        {
            dgCategorias.ItemsSource = _repo.ObtenerCategorias().ToList();
        }
    }
}

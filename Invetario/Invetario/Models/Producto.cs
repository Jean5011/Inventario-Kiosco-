namespace Invetario.Models
{
    public class Producto
    {
        public int Id { get; set; }
        public string CodigoBarras { get; set; } = string.Empty;
        public string Nombre { get; set; } = string.Empty;
        public string Descripcion { get; set; } = string.Empty;
        public decimal PrecioCosto { get; set; }
        public decimal PrecioVenta { get; set; }
        public int Stock { get; set; }
        public int CategoriaId { get; set; }
        public string CategoriaNombre { get; set; } = string.Empty;
        public bool EsPesable { get; set; }

        // COMPOSICIÓN: En lugar de solo el ID, tenemos el objeto completo
        public Categoria Categoria { get; set; } = new Categoria();

        // Propiedad auxiliar para el ingreso manual que planteaste
        public decimal PrecioManual { get; set; }

        // Propiedades calculadas para la UI
        public decimal Precio => PrecioVenta;
        public int Cantidad { get; set; } = 1;
        public decimal Subtotal => (EsPesable || (Categoria != null && Categoria.EsPesable))
                                    ? PrecioManual
                                    : PrecioVenta * Cantidad;
    }
}

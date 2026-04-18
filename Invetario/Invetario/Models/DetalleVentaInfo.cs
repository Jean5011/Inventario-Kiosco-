namespace Invetario.Models
{
    public class DetalleVentaInfo
    {
        public int Cantidad { get; set; }
        public decimal PrecioUnitario { get; set; }
        public decimal Preciototal { get; set; }
        public string Nombre { get; set; } = string.Empty;
        public string CodigoBarras { get; set; } = string.Empty;
        public bool EsPesable { get; set; }
    }
}


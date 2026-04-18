using System;

namespace Invetario.Models
{
    public class VentaReporte
    {
        public int Id { get; set; }
        public DateTime Fecha { get; set; }
        public decimal Total { get; set; }
        public string MetodoPago { get; set; } = "Efectivo";
        public string NombreUsuario { get; set; } = string.Empty;
    }
}


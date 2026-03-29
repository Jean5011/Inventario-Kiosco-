using System;

namespace Invetario.Models
{
    public class Venta
    {
        public int Id { get; set; }
        public DateTime FechaVenta { get; set; }
        public decimal TotalVenta { get; set; }
        public string MetodoPago { get; set; } = "Efectivo";
    }
}

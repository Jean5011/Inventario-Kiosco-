using System;
using System.Collections.Generic;
using System.Text;

namespace Invetario.Models
{
    public class Categoria
    {
        public int Id { get; set; }

        public string Nombre { get; set; } = string.Empty;

        // Mapeamos el tipo BIT de SQL Server a bool en C#
        public bool EsPesable { get; set; }

        // Agregamos esta propiedad por si decidiste incluir 
        // la columna 'Activo' que te sugerí antes
        public bool Activo { get; set; } = true;
    }
}

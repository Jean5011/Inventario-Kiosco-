namespace Invetario.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Username { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
        public string Rol { get; set; } = string.Empty;
        public string Sexo { get; set; } = string.Empty; // Mapea a 'sexo' de la BD
        public string Ruta_foto { get; set; } = string.Empty; // Mapea a 'Ruta_foto'
        public string NombreReal { get; set; } = string.Empty;
    }
}

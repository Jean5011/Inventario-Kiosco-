using System;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;

namespace Invetario.Data
{
    internal class Conexion
    {
        private readonly string _connectionString;

        public Conexion()
        {
            var configuration = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .Build();

            _connectionString = configuration.GetConnectionString("DefaultConnection")
                ?? throw new InvalidOperationException(
                    "No se encontró la cadena de conexión 'DefaultConnection' en appsettings.json");
        }

        public IDbConnection ObtenerConexion()
        {
            return new SqlConnection(_connectionString);
        }
    }
}

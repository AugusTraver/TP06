namespace Tp06.Models;
using Microsoft.Data.SqlClient;
using Dapper;           
public static class BD
{
private static string _connectionString = @"Server=localhost; DataBase NombreBase; Integrated Security=True; TrustServerCertificate=True;";
public static string IniciarSesion()
{

}
public static List<Integrante> DevolverIntegrantes(string Equipo)
{
    List<Integrante> ListaIntegrantes = new List<Integrante>();
using (SqlConnection connection = new SqlConnection(_connectionString)){
string query = "Select * From Integrantes Where Equipo = @PEquipo";
ListaIntegrantes = connection.Query<Integrante>(query, new { PEquipo = Equipo }).ToList();
}
return ListaIntegrantes;
}
}
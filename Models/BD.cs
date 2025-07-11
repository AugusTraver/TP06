namespace Tp06.Models;
using Microsoft.Data.SqlClient;
using Dapper;
public static class BD
{
    private static string _connectionString = @"Server=localhost; DataBase = InfoUsuario; Integrated Security=True; TrustServerCertificate=True;";
    public static string IniciarSesion(string Nombre, string Contraseña)
    {
        string Equipo;
        using (SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "Select Equipo From Integrante Where Nombre = @PNombre AND Contraseña = @PContraseña";
            Equipo = connection.QueryFirstOrDefault<string>(query, new { PNombre = Nombre, PContraseña = Contraseña });
        }
        return Equipo;
    }
    public static List<Integrante> DevolverIntegrantes(string Equipo)
    {
        List<Integrante> ListaIntegrantes = new List<Integrante>();
        using (SqlConnection connection = new SqlConnection(_connectionString))
        {
            string query = "Select * From Integrante Where Equipo = @PEquipo";
            ListaIntegrantes = connection.Query<Integrante>(query, new { PEquipo = Equipo }).ToList();
        }
        return ListaIntegrantes;
    }
  public static void Registrarse(string Nombre, string Contraseña, string Equipo, string AmorPlatonico, string YoutuberFav, string ComidaFav, string MarcaDeRopaFav, string EquipoDeFutbolFav, string Foto)
{
    using (SqlConnection connection = new SqlConnection(_connectionString))
    {
        string query = "INSERT INTO Integrante (Nombre, Contraseña, AmorPlatonico, YoutuberFav, ComidaFav, MarcaDeRopaFav, EquipoDeFutbolFav, Equipo, Foto) VALUES (@PNombre, @PContraseña, @PAmorPlatonico, @PYoutuberFav, @PComidaFav, @PMarcaDeRopaFav, @PEquipoDeFutbolFav, @PEquipo, @PFoto)";
        connection.Execute(query, new
        {
            PNombre = Nombre,
            PContraseña = Contraseña,
            PAmorPlatonico = AmorPlatonico,
            PYoutuberFav = YoutuberFav,
            PComidaFav = ComidaFav,
            PMarcaDeRopaFav = MarcaDeRopaFav,
            PEquipoDeFutbolFav = EquipoDeFutbolFav,
            PEquipo = Equipo,
            PFoto = Foto
        });
    }
}
}
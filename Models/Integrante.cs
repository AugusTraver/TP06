namespace Tp06.Models;
using Newtonsoft.Json;
using System.Security.Cryptography;
using System.Text;
public class Integrante
{
    public int Id { private set; get; }
    [JsonProperty]
    public string Nombre { private set; get; }
    [JsonProperty]
    public string Password { private set; get; }
    [JsonProperty]
    public string AmorPlatonico { private set; get; }
    [JsonProperty]
    public string YoutuberFav { private set; get; }
    [JsonProperty]
    public string MarcaDeRopaFav { private set; get; }
    [JsonProperty]
    public string ComidaFav { private set; get; }
    [JsonProperty]
    public string EquipoDeFutbolFav { private set; get; }
    [JsonProperty]
    public string Foto { private set; get; }
    [JsonProperty]
    public string Equipo { private set; get; }
    public Integrante()
    {

    }


public static string HashearContraseña(string contraseña)
{
    using (SHA256 sha256 = SHA256.Create())
    {
        byte[] bytes = Encoding.UTF8.GetBytes(contraseña);
        byte[] hash = sha256.ComputeHash(bytes);
        StringBuilder sb = new StringBuilder();

        foreach (byte b in hash)
            sb.Append(b.ToString("x2")); 

        return sb.ToString();
    }
}
}
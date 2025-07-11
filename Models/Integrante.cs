namespace Tp06.Models;
using Newtonsoft.Json;

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
}
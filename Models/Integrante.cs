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
    public string Youtuber { private set; get; }
    [JsonProperty]
    public string MarcaDeRopa { private set; get; }
    [JsonProperty]
    public string Comida { private set; get; }
    [JsonProperty]
    public string EquipoDeFutbol { private set; get; }
    [JsonProperty]
    public string Foto { private set; get; }
    [JsonProperty]
    public string Equipo { private set; get; }
    public Integrante()
    {

    }
}
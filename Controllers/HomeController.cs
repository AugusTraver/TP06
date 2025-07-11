using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using Tp06.Models;

namespace Tp06.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {

        return View();
    }
    public IActionResult IniciarSesion(string Nombre, string Contraseña)
    {
        if (BD.IniciarSesion(Nombre, Contraseña) != null)
        {
            HttpContext.Session.SetString("Equipo", BD.IniciarSesion(Nombre, Contraseña));
            string equipo = HttpContext.Session.GetString("Equipo");
            ViewBag.Integrantes = BD.DevolverIntegrantes(equipo);
            return View("MostarInfo");
        }
        else
        {
            return View("Index");
        }

    }
    public IActionResult Registrarse(
     string Nombre,
     string Contraseña,
     string AmorPlatonico,
     string YoutuberFav,
     string ComidaFav,
     string MarcaDeRopaFav,
     string EquipoDeFutbolFav,
     string Equipo,
     IFormFile FotoFile)
    {
        string nombreFoto = null;

        if (FotoFile != null && FotoFile.Length > 0)
        {
            string carpeta = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", "Imagenes");
            Directory.CreateDirectory(carpeta); // por si no existe

            nombreFoto = Path.GetFileName(FotoFile.FileName);
            string ruta = Path.Combine(carpeta, nombreFoto);

            using (var stream = new FileStream(ruta, FileMode.Create))
            {
                FotoFile.CopyTo(stream);
            }
        }

        // Llama al método BD.Registrarse con todos los parámetros, incluida la foto
        BD.Registrarse(Nombre, Contraseña, Equipo, AmorPlatonico, YoutuberFav, ComidaFav, MarcaDeRopaFav, EquipoDeFutbolFav, nombreFoto);
 ViewBag.Integrantes = BD.DevolverIntegrantes(Equipo);
        return View("MostarInfo");
    }
    public IActionResult DRegistrarse()
    {
        return View("Registrarse");
    }
}

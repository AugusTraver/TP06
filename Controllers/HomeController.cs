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
        HttpContext.Session.SetString("Equipo", BD.IniciarSesion(Nombre, Contraseña));
        string equipo = HttpContext.Session.GetString("Equipo");
        if (equipo == null)
        {
            return View("Index");
        }
        ViewBag.Integrantes = BD.DevolverIntegrantes(equipo);
        return View(equipo);
    }
    public IActionResult Registrarse(string Nombre, string Contraseña, string AmorPlatonico, string YoutuberFav, string ComidaFav, string MarcaDeRopaFav, string EquipoDeFutbolFav, string Equipo, string Foto)
    {
        BD.Registrarse(Nombre, Contraseña, AmorPlatonico, YoutuberFav, ComidaFav, MarcaDeRopaFav, EquipoDeFutbolFav, Equipo, Foto);
        return View(Equipo);
    }
}

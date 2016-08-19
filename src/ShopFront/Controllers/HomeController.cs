using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;

namespace ShopFront.Controllers
{
    public class HomeController : Controller
    {
        private readonly IOptions<ShopFront.Models.Settings> _settings;

        public HomeController(IOptions<ShopFront.Models.Settings> settings)
        {
            _settings = settings;
        }

        public IActionResult Index()
        {
            return View(_settings);
        }
    }
}

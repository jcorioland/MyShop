using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace RecommandationsApi.Controllers
{
    [Route("api/[controller]")]
    public class RecommandationsController : Controller
    {
        // GET api/recommandations
        [HttpGet]
        public string Get()
        {
            string recommandationsApiVersion = "1.0.0";
            return $"Exécution de RecommandationsApi en version {recommandationsApiVersion} - Serveur : {Environment.MachineName}";
        }
    }
}

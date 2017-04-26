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
            string recommandationsApiVersion = "1.3";
            return $"Executing RecommandationsApi version {recommandationsApiVersion}. Hostname : {Environment.MachineName}";
        }
    }
}

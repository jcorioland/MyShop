using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace RecommendationsApi.Controllers
{
    [Route("api/[controller]")]
    public class RecommendationsController : Controller
    {
        // GET api/recommendations
        [HttpGet]
        public string Get()
        {
            string recommendationsApiVersion = "1.4";
            return $"Executing RecommendationsApi version {recommendationsApiVersion}. Hostname : {Environment.MachineName}";
        }
    }
}

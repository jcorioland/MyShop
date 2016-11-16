using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace RatingsApi.Controllers
{
    [Route("api/[controller]")]
    public class RatingsController : Controller
    {
        // GET api/ratings
        [HttpGet]
        public string Get()
        {
            string ratingsApiVersion = "1.2";
            return $"Executing RatingsApi version {ratingsApiVersion}. Hostname : {Environment.MachineName}";
        }
    }
}

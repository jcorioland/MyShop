using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace ProductsApi.Controllers
{
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        // GET api/products
        [HttpGet]
        public string Get()
        {
            string productsApiVersion = "1.6";
            return $"Executing ProductsApi version {productsApiVersion}. Hostname : {Environment.MachineName}";
        }
    }
}

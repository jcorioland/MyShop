using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Fabric;

namespace ProductsApi.Controllers
{
    [Route("api/[controller]")]
    public class ProductsController : Controller
    {
        // GET api/products
        [HttpGet]
        public string Get()
        {
            string productsApiVersion = FabricRuntime.GetActivationContext().CodePackageVersion;
            return $"Exécution de ProductsApi en version {productsApiVersion}. Serveur : {Environment.MachineName}";
        }
    }
}
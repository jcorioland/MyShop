using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Fabric;
using Microsoft.Extensions.Configuration;

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

            return $"Exécution de ProductsApi en version {productsApiVersion}.\r\n Context : {FabricRuntime.GetNodeContext().IPAddressOrFQDN} - {FabricRuntime.GetNodeContext().NodeName} - {FabricRuntime.GetNodeContext().NodeId} - {FabricRuntime.GetNodeContext().NodeInstanceId}";
            
            //return $"Exécution de ProductsApi en version {productsApiVersion}. Serveur : {Environment.MachineName}";
        }
    }
}
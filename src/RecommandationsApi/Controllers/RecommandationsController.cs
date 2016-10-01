using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Fabric;

namespace RecommandationsApi.Controllers
{
    [Route("api/[controller]")]
    public class RecommandationsController : Controller
    {
        // GET api/recommandations
        [HttpGet]
        public string Get()
        {
            string recommandationsApiVersion = FabricRuntime.GetActivationContext().CodePackageVersion;
            return $"Exécution de RecommandationsApi en version {recommandationsApiVersion}. \r\n Context : {FabricRuntime.GetNodeContext().IPAddressOrFQDN} - {FabricRuntime.GetNodeContext().NodeName} - {FabricRuntime.GetNodeContext().NodeId} - {FabricRuntime.GetNodeContext().NodeInstanceId}";
        }
    }
}

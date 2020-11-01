using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ClinChem.Data;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ClinChem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TestsController : ControllerBase
    {
        private readonly IDataRepository _repo;
        public TestsController(IDataRepository repo)
        {
            _repo = repo;
        }

        public IEnumerable<string> GetAllTestNames()
        {
            return _repo.GetAllTestNames();
        }

        [HttpGet("exist/{testName}")]
        public bool DoesTestExist(string testName)
        {
            var panels = new List<string> { "BMP", "CMP", "LIPID_PANEL", "HFT", "RENAL_PANEL", "IRON_PANEL" };

            if (panels.Contains(testName.Replace(" ", "_").ToUpper()))
                return true;
            return _repo.GetTestExist(testName);
        }
    }
}

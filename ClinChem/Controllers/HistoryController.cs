using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ClinChem.Data;
using ClinChem.Data.Models;

namespace ClinChem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class HistoryController : ControllerBase
    {
        private readonly IDataRepository _repo;

        public HistoryController(IDataRepository dataRepository)
        {
            _repo = dataRepository;
        }

        [HttpGet("{caseId}")]
        public IEnumerable<GetHistoryResponse> GetHistoryByCaseId(int caseId)
        {
            return _repo.GetHistory(caseId);
        }
    }
}

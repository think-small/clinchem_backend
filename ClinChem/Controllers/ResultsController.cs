using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ClinChem.Data;
using ClinChem.Data.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;

namespace ClinChem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ResultsController : ControllerBase
    {
        private readonly IDataRepository _dataRepository;
        public ResultsController(IDataRepository dataRepository)
        {
            _dataRepository = dataRepository;
        }

        [HttpGet]
        public IEnumerable<IGetResultResponse> GetInitialReuslts()
        {
            return _dataRepository.GetPanelResults("bmp");
        }

        [HttpGet("{testName}")]
        public ActionResult<IGetResultResponse> GetSingleTestResult(string testName, [FromQuery] int caseId)
        {
            bool isRealTest = _dataRepository.GetTestExist(testName);
            if (testName == null || !isRealTest) return NotFound();

            if (caseId != 0)
            {
                var caseResults = _dataRepository.GetCaseResults(caseId);
                foreach (var result in caseResults)
                {
                    if (result.Name.ToUpper() == testName.ToUpper())
                        return result;
                }
            }
            return _dataRepository.GetResult(testName);
        }

        [HttpGet("panel/{panelName}")]
        public IEnumerable<IGetResultResponse> GetPanelResults(string panelName)
        {
            return _dataRepository.GetPanelResults(panelName);
        }
    }
}

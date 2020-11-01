using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ClinChem.Data;
using ClinChem.Data.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ClinChem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NotesController : ControllerBase
    {
        private readonly IDataRepository _repo;

        public NotesController(IDataRepository repo)
        {
            _repo = repo;
        }

        [HttpGet("{caseid}")]
        public IEnumerable<GetNotesResponse> GetNotesByCaseId(int caseId)
        {
            return _repo.GetNotes(caseId);
        }
    }
}

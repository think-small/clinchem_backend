using ClinChem.Data.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ClinChem.Data
{
    public interface IDataRepository
    {
        bool GetTestExist(string testName);
        IGetResultResponse GetResult(string testName);
        IEnumerable<IGetResultResponse> GetPanelResults(string panelName);
        IEnumerable<GetNotesResponse> GetNotes(int caseId);
        IEnumerable<GetHistoryResponse> GetHistory(int caseId);
        IEnumerable<string> GetAllTestNames();
        IEnumerable<IGetResultResponse> GetCaseResults(int caseId);
    }
}

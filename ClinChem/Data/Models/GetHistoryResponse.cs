using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ClinChem.Data.Models
{
    public class GetHistoryResponse
    {
        public DateTime Timestamp { get; set; }
        public string Diagnosis { get; set; }
        public string Notes { get; set; }
        public string Reference { get; set; }
        public string Reference_Name { get; set; }
    }
}

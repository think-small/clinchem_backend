using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ClinChem.Data.Models
{
    public class GetNotesResponse
    {
        public string Type { get; set; }
        public DateTime Timestamp { get; set; }
        public string Content { get; set; }
    }
}

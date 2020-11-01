using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ClinChem.Data.Models
{
    public class IGetResultResponse
    {
        public string Name { get; set; }
        public string Result { get; set; }
        public string Units { get; set; }
        public string Low_Normal { get; set; }
        public string High_Normal { get; set; }
    }
}

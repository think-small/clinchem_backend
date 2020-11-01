using ClinChem.Data.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using System.ComponentModel.Design;

namespace ClinChem.Data
{
    public class DataRepository : IDataRepository
    {
        private readonly string _connectionString;

        public DataRepository(IConfiguration config)
        {
            _connectionString = config["ConnectionStrings:DefaultConnection"];
        }

        public bool GetTestExist(string testName)
        {
            string _sql = @"EXEC dbo.Get_Test_Exist @Name = @Name";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.QueryFirst<bool>(_sql, new { Name = testName });
            }
        }

        public IEnumerable<IGetResultResponse> GetPanelResults(string panelName)
        {
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                string sql = "";
                switch (panelName.ToLower())
                {
                    case "bmp":
                        sql = @"EXEC dbo.Get_BMP_Normal_Results";
                        break;
                    case "renal_panel":
                        sql = @"EXEC dbo.Get_Renal_Panel_Normal_Results";
                        break;
                    case "hft":
                        sql = @"EXEC dbo.Get_HFT_Normal_Results";
                        break;
                    case "lipid_panel":
                        sql = @"EXEC dbo.Get_LP_Normal_Results";
                        break;
                    case "cmp":
                        sql = @"EXEC dbo.Get_CMP_Normal_Results";
                        break;
                    case "iron_panel":
                        sql = @"EXEC dbo.Get_Iron_Panel_Normal_Results";
                        break;
                    default:
                        break;
                }

                return connection.Query<IGetResultResponse>(sql);
            }
        }

        public IGetResultResponse GetResult(string testName)
        {
            string _sql = @"EXEC dbo.Get_Normal_Result @Name = @Name";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.QueryFirst<IGetResultResponse>(_sql, new { Name = testName });
            }
        }

        public IEnumerable<GetNotesResponse> GetNotes(int caseId)
        {
            string _sql = @"EXEC dbo.Select_Notes_By_Case_Id @case_Id = @Case_Id";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.Query<GetNotesResponse>(_sql, new { Case_Id = caseId });
            }
        }
        public IEnumerable<GetHistoryResponse> GetHistory(int caseId)
        {
            string _sql = @"EXEC dbo.Select_History_By_Case_Id @case_Id = @Case_Id";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.Query<GetHistoryResponse>(_sql, new { Case_Id = caseId });
            }
        }

        public IEnumerable<string> GetAllTestNames()
        {
            string sql = @"SELECT Name FROM Normal_Results";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.Query<string>(sql);
            }
        }

        public IEnumerable<IGetResultResponse> GetCaseResults(int caseId, string testName)
        {
            string sql = @"EXEC dbo.Get_Abnormal_Case_Result @Name = @testName, @CaseId = @caseId";
            using (var connection = new SqlConnection(_connectionString))
            {
                connection.Open();
                return connection.Query<IGetResultResponse>(sql, new { caseId, testName });
            }
        }
    }
}

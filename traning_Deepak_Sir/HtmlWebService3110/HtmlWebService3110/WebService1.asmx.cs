using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Newtonsoft.Json;

namespace HtmlWebService3110
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
        [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
         SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);


        [WebMethod]

        public void EmpInsert(string A, string B, int C)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", A);
            cmd.Parameters.AddWithValue("@address", B);
            cmd.Parameters.AddWithValue("@age", C);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        [WebMethod]

        public void EmpUpdate(int K,string A, string B, int C)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_update", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empid", K);
            cmd.Parameters.AddWithValue("@name", A);
            cmd.Parameters.AddWithValue("@address", B);
            cmd.Parameters.AddWithValue("@age", C);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        [WebMethod]

        public void EmpDelete(int A)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_delete", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empid", A);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        [WebMethod]

        public  string EmpEdit(int A)  
        {
            string pp = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_edit", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@empid", A);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            pp = JsonConvert.SerializeObject(dt);
            return pp;

        }

        [WebMethod]

        public  string EmpGet()
        {
            string pp = "";
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            pp = JsonConvert.SerializeObject(dt);
            return pp;
        }
    }
}

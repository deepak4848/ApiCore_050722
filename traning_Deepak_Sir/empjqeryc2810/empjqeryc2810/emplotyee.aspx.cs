using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Services;
using Newtonsoft.Json;


namespace empjqeryc2810
{
    public partial class emplotyee : System.Web.UI.Page
    {
        static SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["abc"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]

        public static void EmpInsert(string A,string B,int C)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name",A);
            cmd.Parameters.AddWithValue("@address",B);
            cmd.Parameters.AddWithValue("@age",C);
            cmd.ExecuteNonQuery();
            con.Close();

        }
        [WebMethod]

        public static string EmpGet()
        {
            string pp ="";
            con.Open();
            SqlCommand cmd = new SqlCommand("use_emp_get", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            pp=JsonConvert.SerializeObject(dt);
            return pp;

        }
    }
}
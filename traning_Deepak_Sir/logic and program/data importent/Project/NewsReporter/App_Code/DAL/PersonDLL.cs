using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for PersonDLL
/// </summary>
public class PersonDLL
{
    public static int InsertEditorDLL(EditorObject obj)
    {
        int rows = 0;
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "insert into Editor values (@ID,getdate(),default)";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                cmd.Parameters.AddWithValue("@ID", obj.ID);

                con.Open();
                rows = cmd.ExecuteNonQuery();
            }
        }

        return rows;
    }
    public static int InsertReporterDLL(ReporterObject obj)
    {
        int rows = 0;
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "insert into Reporter values (@ID,@EditorID,getdate(),default)";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                cmd.Parameters.AddWithValue("@ID", obj.ID);
                cmd.Parameters.AddWithValue("@EditorID", obj.EditorID);



                con.Open();
                rows = cmd.ExecuteNonQuery();
            }
        }

        return rows;
    }
    public static void InsertPersonDLL(PersonObject obj)
    {

    }
}
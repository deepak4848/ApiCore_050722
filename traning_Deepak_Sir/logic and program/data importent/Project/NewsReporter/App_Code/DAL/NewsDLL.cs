using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
/// <summary>
/// Summary description for NewsDLL
/// </summary>
public class NewsDLL
{
    public static void AllNewsDLL()
    {


    }

    public static int InsertNewsDLL(NewsObject obj)
    {
        int rows = 0;
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "insert into tblnews values (@newsT,@newsC,@head,@shead,@desc,@rid,@place,@newsd,getdate(),@img,@eid,@pri,default,default,@visit,default)";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                cmd.Parameters.AddWithValue("@newsT", obj.NewsType);
                cmd.Parameters.AddWithValue("@newsC", obj.NewsCategory);
                cmd.Parameters.AddWithValue("@head", obj.Heading);
                cmd.Parameters.AddWithValue("@shead", obj.SubHeading);
                cmd.Parameters.AddWithValue("@desc", obj.Description);
                cmd.Parameters.AddWithValue("@rid", obj.ReporterID);
                cmd.Parameters.AddWithValue("@place", obj.Place);
                cmd.Parameters.AddWithValue("@newsd", obj.NewsDate);
                //@img,@eid,@pri,default,default,@visit,default
                cmd.Parameters.AddWithValue("@img", obj.Image);
                cmd.Parameters.AddWithValue("@eid", obj.EditorID);
                cmd.Parameters.AddWithValue("@pri", obj.Priority);
                cmd.Parameters.AddWithValue("@visit", obj.Visits);
                con.Open();
                rows = cmd.ExecuteNonQuery();
            }
        }

        return rows;

    }
    public static int InsertNewsTypeDLL(NewsTypeObject obj)
    {
        int rows = 0;
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "insert into tblnewstype values (@title,getdate(),default)";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                cmd.Parameters.AddWithValue("@title", obj.Title);
                con.Open();
                rows = cmd.ExecuteNonQuery();
            }
        }

        return rows;
    }
    public static int InsertNewsCategoryDLL(NewsCategoryObject obj)
    {
        int rows = 0;
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "insert into tblnewscategory values (@title,getdate(),default)";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                cmd.Parameters.AddWithValue("@title", obj.Title);
                con.Open();
                rows = cmd.ExecuteNonQuery();
            }
        }

        return rows;
    }


    public static List<NewsTypeObject> AllNewsTypeDLL()
    {
        List<NewsTypeObject> all = new List<NewsTypeObject>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "select * from tblnewstype";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    NewsTypeObject obj = new NewsTypeObject
                    {
                        ID = int.Parse(dr[0].ToString()),
                        Title = dr[1].ToString(),
                        DateOfAdd = DateTime.Parse(dr[2].ToString()),
                        Active = Boolean.Parse(dr[3].ToString())

                    };

                    all.Add(obj);

                }
            }
        }

        return all;
    }
    public static List<NewsCategoryObject> AllNewsCategoryDLL()
    {
        List<NewsCategoryObject> all = new List<NewsCategoryObject>();
        using (SqlConnection con = new SqlConnection())
        {
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["mycon"].ToString();
            using (SqlCommand cmd = new SqlCommand())
            {
                string query = "select * from tblnewscategory";
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.Text;
                cmd.CommandText = query;
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    NewsCategoryObject obj = new NewsCategoryObject
                    {
                        ID = int.Parse(dr[0].ToString()),
                        Title = dr[1].ToString(),
                        DateOfAdd = DateTime.Parse(dr[2].ToString()),
                        Active = Boolean.Parse(dr[3].ToString())

                    };

                    all.Add(obj);

                }
            }
        }

        return all;
    }

   
}
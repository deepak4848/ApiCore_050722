using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace EmpUplod17Oct
{
    public partial class EmpForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("data source=DESKTOP-PIAHUPF\\SQLEXPRESS_VSW;initial catalog=EIU17;integrated security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                show();
            }

        }
        public void clear()
        {
            txtname.Text = "";
            rblgender.ClearSelection();
            btninsert.Text = "submit";
        }

        public void show()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_employee", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "DISPLAY");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvemployee.DataSource = dt;
            gvemployee.DataBind();
        }
        protected void btninsert_Click(object sender, EventArgs e)
        {
            if (btninsert.Text == "submit")
                {
                string FN =DateTime.Now.Ticks.ToString()+ Path.GetFileName(fuimag.PostedFile.FileName);
                fuimag.SaveAs(Server.MapPath("PICS" + "\\" + FN));

                con.Open();
                SqlCommand cmd = new SqlCommand("sp_employee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "INSERT");
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@gender", rblgender.SelectedValue);
                cmd.Parameters.AddWithValue("@img", FN);
                cmd.ExecuteNonQuery();
                con.Close();
                show();
            }
            else if(btninsert.Text=="update")
            {
                string FN = Path.GetFileName(fuimag.PostedFile.FileName);
               

                con.Open();
                SqlCommand cmd = new SqlCommand("sp_employee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "UPDATE");
                cmd.Parameters.AddWithValue("@id", ViewState["RR"]);
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@gender", rblgender.SelectedValue);
                if(FN!="")
                {
                    cmd.Parameters.AddWithValue("@img", FN);
                    fuimag.SaveAs(Server.MapPath("PICS" + "\\" + FN));
                    File.Delete(Server.MapPath("PICS" + "\\" + ViewState["IMG"]));
                }
              else
                {
                    cmd.Parameters.AddWithValue("@img", ViewState["IMG"]);
                }
                cmd.ExecuteNonQuery();
                con.Close();
                show();
            }
        }

        protected void gvemployee_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "A")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_employee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "DELETE");
                cmd.ExecuteNonQuery();
                con.Close();
                show();
            }
            else if (e.CommandName == "B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_employee", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "EDIT");
                cmd.Parameters.AddWithValue("@id",e.CommandArgument);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                txtname.Text = dt.Rows[0]["name"].ToString();
                rblgender.SelectedValue = dt.Rows[0]["gender"].ToString();
                ViewState["IMG"] = dt.Rows[0]["img"].ToString();
                btninsert.Text = "update";
                ViewState["RR"] = e.CommandArgument;
            }

        }
    }
}
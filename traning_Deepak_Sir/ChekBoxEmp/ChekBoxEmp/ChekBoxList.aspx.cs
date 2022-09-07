using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ChekBoxEmp
{
    public partial class ChekBoxList : System.Web.UI.Page
    {

    
        SqlConnection con = new SqlConnection("data source=DESKTOP-PIAHUPF\\SQLEXPRESS_VSW;initial catalog=CBL1910;integrated security=true");

        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {
                display();
                
            }

        }
        public void clear()
        {
            txtname.Text = "";
            rblgender.ClearSelection();
            ddlcourse.SelectedValue = "0";
            btninsert.Text = "submit";
            cblhobbies.ClearSelection();

        }
        public void display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_student", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "SELECT");
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            grvstudent.DataSource = dt;
            grvstudent.DataBind();
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string HOBS ="";
            for(int i=0;i<cblhobbies.Items.Count;i++)
            {
                if(cblhobbies.Items[i].Selected==true)
                {
                    HOBS += cblhobbies.Items[i].Text + ",";
                }
            }

            HOBS = HOBS.TrimEnd(',');


            if(btninsert.Text=="submit")
            { 
            con.Open();
            SqlCommand cmd = new SqlCommand("sp_student", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@action", "INSERT");
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@gender", rblgender.SelectedValue);
            cmd.Parameters.AddWithValue("@course", ddlcourse.SelectedIndex);
           cmd.Parameters.AddWithValue("@hobbies",HOBS);
            cmd.ExecuteNonQuery();
            con.Close();
                display();
                clear();
            }
            else if(btninsert.Text == "update")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "UPDATE");
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@gender",rblgender.SelectedIndex);
                cmd.Parameters.AddWithValue("@course",ddlcourse.SelectedValue);
                cmd.Parameters.AddWithValue("@hobbies",HOBS);
                cmd.Parameters.AddWithValue("@id", ViewState["RR"]);
                cmd.ExecuteNonQuery();
                con.Close();
                display();
                clear();
            }
        }




        protected void grvstudent_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="A")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("sp_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "DELETE");
                cmd.Parameters.AddWithValue("@id", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                display();
            }
            else if(e.CommandName=="B")
            {
                SqlCommand cmd = new SqlCommand("sp_student", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@action", "EDIT");
                cmd.Parameters.AddWithValue("@id", e.CommandArgument);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                txtname.Text = dt.Rows[0]["name"].ToString();
                rblgender.SelectedValue = dt.Rows[0]["gender"].ToString();
                ddlcourse.SelectedValue = dt.Rows[0]["course"].ToString();


                string[] arr = dt.Rows[0]["hobbies"].ToString().Split(',');
                for (int i = 0; i < cblhobbies.Items.Count; i++)
                {

                    for (int j = 0; j < arr.Length; j++)
                    {

                  
                        if (cblhobbies.Items[i].Text==arr[j])
                    {
                        cblhobbies.Items[i].Selected = true;
                    }
                    }
                }

                btninsert.Text = "update";
                ViewState["RR"] = e.CommandArgument;
            }
          
        }
    }
}

   
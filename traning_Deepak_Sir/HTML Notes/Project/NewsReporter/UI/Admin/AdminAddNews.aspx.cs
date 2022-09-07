using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Admin_AdminAddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlavailabletitle.DataSource = NewsBLL.AllNewsTypeBLL();
            ddlavailabletitle.DataTextField = "Title";
            ddlavailabletitle.DataValueField = "ID";
            ddlavailablecategory.DataSource = NewsBLL.AllNewsCategoryBLL();
            ddlavailablecategory.DataTextField = "Title";
            ddlavailablecategory.DataValueField = "ID";
            this.DataBind();
        }
    }

    protected void newscategoryupdateadmin_Click(object sender, EventArgs e)
    {
        NewsCategoryObject obj = new NewsCategoryObject { Title = txtnewscategory.Text };
        Response.Write(NewsBLL.InsertNewsCategoryBLL(obj));
    }

    protected void btnnewstypeadminupdate_Click(object sender, EventArgs e)
    {
        NewsTypeObject obj = new NewsTypeObject { Title =  txtTypeTitle.Text };
        Response.Write(NewsBLL.InsertNewsTypeBLL(obj)) ;
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_Editor_AddNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlnewstype.DataSource = NewsBLL.AllNewsTypeBLL();
            ddlnewstype.DataTextField = "Title";
            ddlnewstype.DataValueField = "ID";
            ddlnewscategory.DataSource = NewsBLL.AllNewsCategoryBLL();
            ddlnewscategory.DataTextField = "Title";
            ddlnewscategory.DataValueField = "ID";
            this.DataBind();

        }
    }
}
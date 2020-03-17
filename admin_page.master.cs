using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    { 
        if (Session["admin"] == null)
        {
            Response.Redirect("admin_login.aspx");
        }
    }
    protected void logout_admin_Click(object sender, EventArgs e)
    {
        Session["admin"] = null;
        Response.Redirect("login.aspx");
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class after_login : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["login_user"] == null)
       {
          Response.Redirect("login.aspx");
       }
    }
    protected void logout_btn_Click(object sender, EventArgs e)
    {
        Session["login_user"] =null;
        Session["phoneno"]=null;
        Response.Redirect("login.aspx");
    }
}

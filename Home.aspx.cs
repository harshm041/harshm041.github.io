using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login_user"] != null)
        {
            Label msg = new Label();
            div1.Controls.Add(msg);
            msg.Text = "Welcome, " + Session["login_user"].ToString() + " ";
        
        }
    }
}
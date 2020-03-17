using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["login_user"]==null)
        {
            
            wlcm_lbl.Visible = false;
        }
        else
        {
            
            wlcm_lbl.Text = "hello ," +Session["login_user"].ToString() + " Welcome phone no is"+Session["phoneno"].ToString();
        }
    }
}
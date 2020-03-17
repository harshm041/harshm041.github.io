using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["error"] != null)
        {
            error_msg.Text = Request.QueryString["error"].ToString();
            error_msg.Text += "<br/> " + " An Error Occured Please Try again later or Login again....!!";
        }
    }
}
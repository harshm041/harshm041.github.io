using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class my_orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        orders.DataBind();
    }
    protected void orders_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
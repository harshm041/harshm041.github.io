using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class history : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (history_list.Items.Count == 0)
        {
            msg.Visible = true;
            msg.Text = "History category games are currently not  Available";
        }
    }
    protected void game_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("gamedetails.aspx?Id=" + e.CommandArgument.ToString());
        }
    }
}
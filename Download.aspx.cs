using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Download : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (downloads.Items.Count == 0)
        {
            msg.Visible = true;
            msg.Text = "You have not buyed any game yet";
        }
    }
    protected void downloads_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "download")
        {
            String name = e.CommandArgument.ToString();
            //name.Replace(" ","");
            Response.ContentType = "plain/txt";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + name.Replace(" ", "") + ".txt");
            Response.TransmitFile(Server.MapPath("~/File/Game.txt"));
            Response.End();
        
        }
    }
}
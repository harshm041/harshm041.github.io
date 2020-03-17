using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transaction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            game_name.Text = Session["buy_gamename"].ToString();
            price.Text = Session["buy_gameprice"].ToString();
            transaction_id.Text = Session["transaction_id"].ToString();
            pdk.Text = "<br /> Your Product key for <strong>" + Session["buy_gamename"].ToString() + "</strong> <br /> : " + Session["product_key"].ToString();
           
        }
        catch(Exception ex)
        {
            Response.Redirect("error.aspx?error="+ex.Message.ToString().Replace("\n\r",""));
        }
    }
    protected void continue_btn_Click(object sender, EventArgs e)
    {
        Session["transaction_id"] = null;
        Session["product_key"] = null;
        Session["buy_gamename"] = null;
        Session["product_key"] = null;
        Response.Redirect("gamescart.aspx");
    }
}
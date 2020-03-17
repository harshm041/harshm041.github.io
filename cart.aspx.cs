using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class cart : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (cartlist.Items.Count == 0)
        {
            msg.Visible = true;
            msg.Text = "Your cart is Empty";
            cartlist.DataBind();
        }
        
    }
    protected void cartlist_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("gamedetails.aspx?Id=" + e.CommandArgument.ToString());
        }
        if (e.CommandName == "remove_from_cart")
        {
            con.Open();
            string str = "delete from carts_db where game_id='"+e.CommandArgument.ToString()+"'";
            SqlCommand cmd = new SqlCommand(str,con);
            int a = cmd.ExecuteNonQuery();
            cartlist.DataBind();
        }
    }
    protected void buy_btn_Click(object sender, EventArgs e)
    {

    }
}
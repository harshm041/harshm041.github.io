using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class offerdetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    String id, name, price, details, imgurl, type;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] != null)
        {
            id = Request.QueryString["Id"].ToString();


            con.Open();
            String str = "select * from offers_db where game_id='" + id + "'";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                name = dr.GetString(1);
                price = dr.GetValue(2).ToString();
                type = dr.GetString(3);
                details = dr.GetString(4);
                imgurl = dr.GetString(5);
            } dr.Close();
            game_name.Text = " " + name;
            game_image.ImageUrl = imgurl;
            game_price.Text = " " + price;
            game_type.Text = " " + type;
            game_details.Text = "<br/> " + details;

        }
    }
    protected void buy_btn_Click(object sender, EventArgs e)
    {
        Session["buy_gamename"]=name;
        Session["buy_gameprice"] = price;
        //HttpCookie cookie = new HttpCookie("productinfo");
        //cookie["Game_name"] = name;
        //cookie["Game_price"] = price;
        //Response.Cookies.Add(cookie);
        Response.Redirect("payment.aspx");
    }
    protected void addtocart_btn_Click(object sender, EventArgs e)
    {
        //do nothing
    }
}
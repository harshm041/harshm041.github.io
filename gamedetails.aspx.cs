using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class gamedetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    String id,name,price,details,imgurl,type;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["Id"] != null)
        {
            id = Request.QueryString["Id"].ToString();
            
            
            con.Open();
            String str = "select * from games_db where game_id='"+id+"'";
            SqlCommand cmd = new SqlCommand(str,con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                name = dr.GetString(1);
                price = dr.GetValue(2).ToString();
                type = dr.GetString(3);
                details = dr.GetString(4);
                imgurl = dr.GetString(5);
            } dr.Close();
            game_name.Text = " " +name;
            game_image.ImageUrl =imgurl;
            game_price.Text = " " +price;
            game_type.Text =" " +type;
            game_details.Text ="<br/> "+details;
           
        }
    }
    protected void buy_btn_Click(object sender, EventArgs e)
    {
        Session["buy_gamename"] = name;
        Session["buy_gameprice"] = price;
         //HttpCookie cookie = new HttpCookie("productinfo");
         //cookie["Game_name"] = name;
         //cookie["Game_price"] = price;
         //Response.Cookies.Add(cookie);
         Response.Redirect("payment.aspx");
    }
    protected void addtocart_btn_Click(object sender, EventArgs e)
    {
        try
        {
            string gid = "", gnm = "", unm = "", phno = "";
            //check game already exits in your cart
            string str2 = "select * from carts_db where game_id='" + id + "' and game_name='" + name + "' and username='" + Session["login_user"].ToString() + "' and phone_no='" + Session["phoneno"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(str2, con);
            SqlDataReader dr2 = cmd.ExecuteReader();
            while (dr2.Read())
            {
                gid = dr2.GetValue(0).ToString();
                gnm = dr2.GetString(1);
                unm = dr2.GetString(2);
                phno = dr2.GetString(3);
            } dr2.Close();
            string str3 = "insert into carts_db values('" + id + "','" + name + "','" + Session["login_user"].ToString() + "','" + Session["phoneno"].ToString() + "')";
            SqlCommand cmd2 = new SqlCommand(str3, con);
            if (id == gid && gnm == name && unm == Session["login_user"].ToString() && phno == Session["phoneno"].ToString())
            {
                msg.Visible = true;
                msg.CssClass = "alert alert-danger ";
                msg.Text = "Game already exists in your cart";
                addtocart_btn.Enabled = false;

            }
            // if not add in cart
            else
            {
                int a = cmd2.ExecuteNonQuery();
                if (a > 0)
                {
                    msg.Visible = true;
                    msg.CssClass = "alert alert-success ";
                    msg.Text = "Added to cart";
                    addtocart_btn.Enabled = false;
                }
            }
        }
        catch (Exception ex)
        {
            
            Response.Redirect("error.aspx?error="+ex.Message.ToString().Replace("\n\r",""));
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class payment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["login_user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            
            if (Session["buy_gamename"] != null && Session["buy_gameprice"] != null)
            {
                game_name.Text = Session["buy_gamename"].ToString();
                game_price.Text = Session["buy_gameprice"].ToString();
            }
            else
            {
                Response.Redirect("gamescart.aspx");
            }
        }
        
    }
    public string TransactionID()
    {
        
        Random rnd = new Random();
        Int64 s1 = rnd.Next(000000, 999999);
        Int64 s2 = Convert.ToInt64(DateTime.Now.ToString("ddMMyyyyHHmmss"));
        string s3 = s1.ToString() + "" + s2.ToString();
        return s3;
        
    }
    public string ProductKey()
    {
        Random rnd = new Random();
        string p = Path.GetRandomFileName();
        Int64 p2 = rnd.Next(1234, 9999);
        string p3 = Path.GetRandomFileName();
        string p4 = Path.GetRandomFileName();
        p = p.Replace(".", "");
        p3 = p3.Replace(".", "");
        p4 = p4.Replace(".", "");
        return (p.Substring(0, 4) + "-" + p2 + "-" + p4.Substring(0, 4) + "-" + p3.Substring(0, 4)).ToUpper();
        
    }
    protected void makepayment_btn_Click(object sender, EventArgs e)
    {
        
            String transid = TransactionID().ToString();
            String pdk = ProductKey().ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "insert into orders values(@transid,@pdk,@gname,@price,@cardno,@nmoncard,@user,@phno,@dateofpurchase)";
            cmd.Parameters.AddWithValue("@transid", transid);
            cmd.Parameters.AddWithValue("@pdk", pdk);
            cmd.Parameters.AddWithValue("@gname", game_name.Text);
            cmd.Parameters.AddWithValue("@price", game_price.Text);
            cmd.Parameters.AddWithValue("@cardno", card_number.Text);
            cmd.Parameters.AddWithValue("@nmoncard", name_on_card.Text);
            cmd.Parameters.AddWithValue("@user", Session["login_user"].ToString());
            cmd.Parameters.AddWithValue("@phno", Session["phoneno"].ToString());
            cmd.Parameters.AddWithValue("@dateofpurchase", DateTime.Now.ToString());
            cmd.Connection = con;
            con.Open();
            
            

                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {



                    Session["transaction_id"] = transid;
                    Session["product_key"] = pdk;
                    Response.Redirect("transaction.aspx");

                }
                else
                {
                    failure_msg.Visible = true;
                    failure_msg.Text = "Failed to Make a Payment";

                }
            
            
        }
        
       
        
    protected void  cancel_btn_Click(object sender, EventArgs e)
    {
        Session["buy_gamename"] = null;
        Session["buy_gameprice"] = null;
    Response.Redirect("gamescart.aspx");
    }
}
    
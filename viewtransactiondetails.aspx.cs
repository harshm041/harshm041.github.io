using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class viewtransactiondetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    String trnsid,gnm,gprice,cno,nmoncard,datetime;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["transid"] != null)
        {
            trnsid = Request.QueryString["transid"].ToString();
            con.Open();
            //try
            //{
                String str = "Select * from orders where transaction_id='" + trnsid + "' and username='" + Session["login_user"].ToString() + "' and phone_no='" + Session["phoneno"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(str, con);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    gnm = dr.GetString(2);
                    gprice = dr.GetValue(3).ToString();
                    cno = dr.GetString(4);
                    nmoncard = dr.GetString(5);
                    datetime = dr.GetString(8);
                } dr.Close();
                transid.Text = trnsid.ToString();
                gamename.Text = gnm;
                price.Text = gprice;
                cardno.Text = cno;
                nameoncard.Text = nmoncard;
                date_time.Text = datetime;
            //}
            //catch (Exception ex)
            //{ 
               // Response.Redirect("error.aspx?error=" + ex.Message.ToString().Replace("\n\r", ""));
            //}
        }
    }
}
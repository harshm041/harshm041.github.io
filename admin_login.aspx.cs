using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login_btn_Click(object sender, EventArgs e)
    {

        String user = "", pass = "";
        SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
        con.Open();
        String str = " select * from admin_db where admin_username='" + admin_username.Text + "' and admin_password='" + admin_password.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            user = dr.GetString(1);
            pass = dr.GetString(2);
        }
        if (admin_username.Text == "" || admin_password.Text == "")
        {
            err_msg.Visible = true;
            err_msg.Text = "Please enter all details";
        }
        else
        {
            if (admin_username.Text == user && admin_password.Text == pass)
            {
                Session["admin"] = admin_username.Text;
                Response.Redirect("add_product.aspx");
            
            }
            else
            {
                err_msg.Visible = true;
                err_msg.Text = "Invalid Username or Password";
            }
        
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Sign_up : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False ");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signup_btn_Click(object sender, EventArgs e)
    {
        String  pn="",ur="";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into customers_db(username,password,ph_no,address1) values(@user,@pass,@phno,@add1)";
        cmd.Parameters.AddWithValue("@user", create_username.Text);
        cmd.Parameters.AddWithValue("@pass",password.Text);
        cmd.Parameters.AddWithValue("@phno", ph_no.Text);
        cmd.Parameters.AddWithValue("@add1", address.Text);
        cmd.Connection = con;
        con.Open();
        string chck_user = "select ph_no from customers_db where ph_no='"+ ph_no.Text+"'";
        SqlCommand cmd2 = new SqlCommand(chck_user,con);
        SqlDataReader r = cmd2.ExecuteReader();
        while (r.Read())
        {
            pn = r.GetString(0);
            
        }
        r.Close();
        
        if (pn==ph_no.Text )
        {
            
                err_msg_signup.Visible = true;
                err_msg_signup.Text = "user with " + ph_no.Text + " this phone number already exists";
                   
        }
       
        else
        {
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                //err_msg_signup.Visible = true;
                //err_msg_signup.Text = "User Created";
                Session["newuser"]=create_username.Text;
                Response.Redirect("login.aspx");

            }
            else
            {
                err_msg_signup.Visible = true;
                err_msg_signup.Text = "Cannot create user";
            }
            con.Close();
        }
    }
}
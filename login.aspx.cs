using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (Session["newuser"] != null)
        {
            username.Text = (string)Session["newuser"];
            err_msg.Visible = true;
            
            err_msg.Text = " Sign-up Successfull <br> Login to continue";
        }
        
       
    }
    protected void Login_btn_Click(object sender, EventArgs e)
    {
        
        String user = username.Text.ToString();
        String pass = password.Text.ToString();
        String ur="", pw="",ph_no="";        
        con.Open();
        String str = " select * from customers_db where username='"+user+"' and password='"+pass+"'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader r = cmd.ExecuteReader();
        while (r.Read())
        {
            ur = r.GetString(0);
            pw = r.GetString(1);
            ph_no = r.GetValue(3).ToString();
        }
        if (user == "" || pass == "")
        {
            err_msg.Visible = true;
            err_msg.Text = "Please enter all details";
        }
        else 
        {
            if (ur == user && pw == pass)
            {
                Session["login_user"] = user;
                Session["phoneno"]=ph_no;
                Session["newuser"] = null;
                Response.Redirect("Home.aspx");
            }
            else
            {
                err_msg.Visible = true;
                err_msg.Text = "Invalid Username or Password";
            }
        } con.Close();
    }
}
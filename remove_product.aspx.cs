using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class remove_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Remove_btn_Click(object sender, EventArgs e)
    {
        con.Open();
        String id = "", nm = "",img="";
        String str = " select * from games_db where game_id='" + Game_ID.Text + "' and game_name='" + Game_Name.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr.GetValue(0).ToString();
            nm = dr.GetString(1);
            img = dr.GetString(5);
        } dr.Close();
        if (id != Game_ID.Text && nm != Game_Name.Text)
        {
            err_msg.CssClass = "alert alert-danger center-block";
            err_msg.Visible = true;
            err_msg.Text = "Game Not Found ";
        }
        else
        {
            String str2 = "delete from games_db where game_id='"+Game_ID.Text+"' and game_name='"+Game_Name.Text+"'";
            SqlCommand cmd2 = new SqlCommand(str2, con);
            int a = cmd2.ExecuteNonQuery();
            if (a > 0)
                {
                    err_msg.CssClass = "alert alert-success center-block";
                    err_msg.Visible = true;
                    err_msg.Text = " Game Successfully Removed";
                    gamelist_view.DataBind();
                    System.IO.File.Delete(Server.MapPath(img));
                }
                
        
        }
    }
}
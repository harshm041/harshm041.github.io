using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class edit_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void enabled()
    {
        gamename_lbl.Visible = true;
        Game_Name.Visible = true;
        Gameprice_lbl.Visible = true;
        Game_Price.Visible = true;
        gametype_lbl.Visible = true;
        Game_Type.Visible = true;
        gamedetail_lbl.Visible = true;
        Game_Details.Visible = true;
        Game_ID.Enabled = false;
        cancel_btn.Visible = true;
        edit_btn.Visible = false;
        gamename_req_validator.Visible = true;
        gameprice_req_validator.Visible = true;
        gameprice_validator.Visible = true;
        gametype_req_validator.Visible = true;
        gamedetails_req_validator.Visible = true;
        update_btn.Visible = true;
    }
    protected void disabled()
    {
        gamename_lbl.Visible = false;
        Game_Name.Visible = false;
        Gameprice_lbl.Visible = false;
        Game_Price.Visible = false;
        gametype_lbl.Visible = false;        
        gamedetail_lbl.Visible = false;
        Game_Details.Visible = false;
        Game_Type.Visible = false;
        Game_ID.Enabled = true ;
        edit_btn.Visible = true;
        cancel_btn.Visible = false;
        gamename_req_validator.Visible = false;
        gameprice_req_validator.Visible = false;
        gameprice_validator.Visible = false;
        gametype_req_validator.Visible = false;
        gamedetails_req_validator.Visible = false;
        update_btn.Visible = false;
    }
    protected void edit_btn_Click(object sender, EventArgs e)
    {
        string name = "", price = "", type = "", details = "";
        string str = "select * from games_db where game_id='"+Game_ID.Text+"'";
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            name = dr.GetString(1);
            price = dr.GetValue(2).ToString();
            type = dr.GetString(3);
            details = dr.GetString(4).ToString();
            err_msg.Visible = false;
            enabled();
            Game_Name.Text = name;
            Game_Price.Text = price;
            Game_Type.Text = type;
            Game_Details.Text = details;
            
        } 
        else
        {
            err_msg.CssClass = "alert alert-danger center-block";
            err_msg.Visible=true;
            err_msg.Text="Game ID Not Found";
        }
        
    }
    protected void cancel_btn_Click(object sender, EventArgs e)
    {
        disabled();
    }
    protected void update_btn_Click(object sender, EventArgs e)
    {
        String str = "update games_db set game_name='"+Game_Name.Text+"', game_price='"+Game_Price.Text+"', game_type='"+Game_Type.Text+"', game_details='"+Game_Details.Text+"' where game_id='"+Game_ID.Text+"'";
        SqlCommand cmd = new SqlCommand(str,con);
        con.Open();
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            err_msg.CssClass = "alert alert-success center-block";
            err_msg.Visible = true;
            err_msg.Text = "Game Record Successfully Updated";
            disabled();
            gameslist_view.DataBind();
        }
    }
}
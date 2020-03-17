using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class addoffer : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
    string strname = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void gametype_drplst_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (gametype_drplst.SelectedValue == "Others")
        {
            gametype.Text = null;
            gametype.Visible = true;
        }
        else
        {
            gametype.Text = gametype_drplst.SelectedValue;
            gametype.Visible = false;
        }
    }
    protected void add_offer_btn_Click(object sender, EventArgs e)
    {
        //check Product Exists or not 
        String id = "", nm = "";
        con.Open();
        String str = "select * from offers_db where game_name='" + Game_Name.Text + "' or game_id='" + Game_ID.Text + "'";
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr.GetValue(0).ToString();
            nm = dr.GetString(1);
        } dr.Close();

        if (id == Game_ID.Text || nm == Game_Name.Text)
        {

            err_msg.CssClass = "alert alert-danger center-block";
            err_msg.Visible = true;
            err_msg.Text = "Game Offer Already Exists";

        }
        //if product does'nt exists then add data to database
        else
        {
            if (Game_Photo_upload.HasFile)
            {
                strname = Game_Name.Text.ToString() + ".jpg"; //+Game_Photo_upload.FileName.ToString();
                Game_Photo_upload.SaveAs(Server.MapPath("~/images/" + Game_Name.Text + ".jpg"));
            }
            String str2 = "insert into offers_db values('" + Game_ID.Text + "','" + Game_Name.Text + "','" + Game_Price.Text + "','" + gametype.Text + "','" + Game_Details.Text + "','images/" + strname + "')";
            SqlCommand cmd2 = new SqlCommand(str2, con);
            int a = cmd2.ExecuteNonQuery();
            if (a > 0)
            {
                gametype_drplst.ClearSelection();
                Game_ID.Text = Game_Name.Text = Game_Price.Text = gametype.Text = Game_Details.Text = "";
                err_msg.CssClass = "alert alert-success center-block";
                err_msg.Visible = true;
                err_msg.Text = "Game Offer Successfully added";

            }
        }
    }
}
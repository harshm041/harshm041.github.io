using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class gamescart : System.Web.UI.Page
{
    static int currentpage = 0;
    static int totalrows = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindata();
        }
    }
    private void bindata()
    {
        String str = "Select * from games_db";
        SqlConnection con = new SqlConnection("Data Source=.\\SQLExpress;Initial Catalog=mydb;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = str;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();//data access and data manipulation (made up of collection of tables)
        da.Fill(ds);//retrive data from select query(sqlcommand) , fetches multiple rows at a time
        totalrows = ds.Tables[0].Rows.Count;//gets collection of tables contained in dataset and collection of rows inside table and gets total number of data
        DataTable dt = ds.Tables[0];//data table fetches only one row at a time
        PagedDataSource pg = new PagedDataSource();//Encapsulates the paging-related properties of a data-bound control
        pg.DataSource = dt.DefaultView; //Gets a customized view of the table 
        pg.AllowPaging = true;//enables paging
        pg.CurrentPageIndex = currentpage; //returns current page number
        pg.PageSize =20; //how many records to display on a page (deafult is 10)       
        prev_btn.Enabled = !pg.IsFirstPage;//prev button is enabled if its not the first page
        next_btn.Enabled = !pg.IsLastPage;//  next button is enabled if its not the last page
        DataList1.DataSource = pg;//bind datalists datasource to pagedatasource
        DataList1.DataBind();//bind data to display
        con.Close();
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("gamedetails.aspx?Id=" + e.CommandArgument.ToString());
        }
    }
    
    protected void prev_Click(object sender, EventArgs e)
    {
        if (currentpage == totalrows - 1)
        {

        }
        else
        {
            currentpage = currentpage + 1;
            bindata();
        }
    }
   
    protected void next_Click(object sender, EventArgs e)
    {
        if (currentpage == 0)
        {

        }
        else
        {
            currentpage = currentpage - 1;
            bindata();
        }
    }
}
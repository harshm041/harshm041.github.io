using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class transaction_details : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (transactions.Items.Count == 0)
        {
            msg.Visible = true;
            msg.Text = "No Transactions Yet";
        }
    }
    protected void transactions_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "viewdetail")
        {
            Response.Redirect("viewtransactiondetails.aspx?transid="+e.CommandArgument.ToString());
        }
    }
    
    
}
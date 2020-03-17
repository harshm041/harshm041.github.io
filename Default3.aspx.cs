using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
        //4UF4-VRJ1-XAEF-YFXI
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String a = TransactionID().ToString();
        String b = ProductKey().ToString();
        Label1.Text = a;
        Label2.Text = b;
        
    }
    
}
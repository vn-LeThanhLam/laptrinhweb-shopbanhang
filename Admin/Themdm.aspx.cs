using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Themdm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        String m = Request.QueryString["ma"];
        String tk = Session["matk"].ToString();

        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;


        String strcmd = "insert into DANHMUC (TENDM) values(N'"+TextBox1.Text+"')";
        cmd.CommandText = strcmd;
        int rs = cmd.ExecuteNonQuery();

    
    }
}
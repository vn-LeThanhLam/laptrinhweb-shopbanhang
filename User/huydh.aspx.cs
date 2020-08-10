using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class User_huydh : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String m = Request.QueryString["ma"];
        String tk = Session["matk"].ToString();

        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        cn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = cn;

        String strcmd = "UPDATE HOADON SET TINHTRANG=N'Đã hủy' WHERE MAHD='"+m+"'";
        cmd.CommandText = strcmd;
        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
            Response.Redirect("Quantri.aspx");
    }
}
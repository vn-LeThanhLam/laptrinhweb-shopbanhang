using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(captk()!=9)
            Response.Redirect("~/User/Quantri.aspx");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Themdm.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Dangxuat.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/A-don.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/A-dssp.aspx");
    }
    public int captk()
    {
        String tk = Session["matk"].ToString();
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "select cap from TAIKHOAN where EMAIL='" + tk + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            int gia = (int)reader["cap"];
            return gia;
            reader.Close();
        }
        cn.Close();
        return 1;
    }
}
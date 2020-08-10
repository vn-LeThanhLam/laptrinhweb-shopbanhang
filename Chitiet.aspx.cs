using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text;
public partial class Chitiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        string sql = "SELECT * from SANPHAM WHERE MASP='" + m + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            //String masp = reader["MASP"].ToString();
            String tensp = reader["TENSP"].ToString();
            String gia = reader["GIA"].ToString();
            String img = reader["IMG"].ToString();
            String mota = reader["MOTA"].ToString();
            Label1.Text = tensp;
            Label2.Text = mota;
            Label3.Text = gia;
            Image1.ImageUrl = "Admin/Hinh/" + img;
            reader.Close();
        }
        cn.Close();
    }
    public String tensp(String m)
    {
        //String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["SHOP"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT TENSP from SANPHAM WHERE MASP='" + m + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            String gia = reader["TENSP"].ToString();
            return gia;
            reader.Close();
        }
        cn.Close();
        return null;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        String m = Request.QueryString["ma"];
        Response.Redirect("~/User/gio.aspx?ma=" + m);
    }
}
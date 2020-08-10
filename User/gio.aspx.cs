using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class gio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                try
        {
            String tk = Session["matk"].ToString();
            if (String.Compare(tk, null, true) != 0)
            {
                String m = Request.QueryString["ma"];
                Label1.Text = tensp(m);
                Label2.Text = gia();
            }
        }
        //if (String.Compare(tk, null, true)!=1)
        catch
        {
            Response.Redirect("~/User/Dangnhap.aspx");
        }
    }

    public String gia()
    {
        String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT GIA from SANPHAM WHERE MASP=" + m;
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {

            String gia = reader["GIA"].ToString();
            return gia;

            reader.Close();
        }
        cn.Close();
        return null;
    }

    public String tensp(String m)
    {
        //String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT TENSP from SANPHAM WHERE MASP=" + m;
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
    public String matk(String m)
    {
        //String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT MATK from TAIKHOAN WHERE EMAIL='" + m+"'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            String gia = reader["MATK"].ToString();
            return gia;
            reader.Close();
        }
        cn.Close();
        return null;
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
        String giahd = gia();
        String sl = TextBox1.Text;
        String mtk = matk(tk);
        String ht = RadioButtonList1.SelectedValue.ToString();
        String strcmd = "insert into HOADON (masp,matk,gia,soluong,httt,tinhtrang) values(" + m + "," + mtk + "," + giahd + ",'" + sl + "',N'" + ht + "',N'Đặt hàng')";
        cmd.CommandText = strcmd;
        int rs = cmd.ExecuteNonQuery();
        if (rs == 1)
            Response.Redirect("~/User/Quantri.aspx");
    }
}
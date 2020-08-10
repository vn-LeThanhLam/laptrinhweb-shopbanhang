using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Quantri : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String tk = Session["matk"].ToString();


            if (String.Compare(tk, null, true) != 0)
            {

                String strcn = ConfigurationManager.ConnectionStrings["DB"].ToString();
                SqlConnection cn = new SqlConnection(strcn);
                String str_sel;
                str_sel = "SELECT HOADON.MAHD, TENSP,HOADON.GIA,HOADON.SOLUONG,(HOADON.GIA *HOADON.SOLUONG) AS TONG,HTTT,TINHTRANG FROM HOADON,SANPHAM WHERE SANPHAM.MASP=HOADON.MASP AND MATK=" + matk(tk);

                SqlDataAdapter da = new SqlDataAdapter(str_sel, cn);
                DataSet ds = new DataSet();
                da.Fill(ds, "sp1");

                DataList1.DataSource = ds.Tables["sp1"];
                DataList1.DataBind();




            }
        }
        //if (String.Compare(tk, null, true)!=1)
        catch
        {
            Response.Redirect("~/User/Dangnhap.aspx");
        }
    }

















    public String matk(String m)
    {
        //String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT MATK from TAIKHOAN WHERE EMAIL='" + m + "'";
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

    public String tentv(String m)
    {
        //String m = Request.QueryString["ma"];
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "SELECT HOTEN from TAIKHOAN WHERE MATK=" + m;
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            String gia = reader["HOTEN"].ToString();
            return gia;
            reader.Close();
        }
        cn.Close();
        return null;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("cntv.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dangxuat.aspx");
    }
}
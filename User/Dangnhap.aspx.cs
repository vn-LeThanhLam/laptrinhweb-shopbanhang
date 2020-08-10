using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {   String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
	    SqlConnection cn = new SqlConnection(strcn);
	    cn.Open();
        String strsel = "select count (*) from taikhoan where Email = '" + TextBox1.Text + "' and MK='"+ TextBox2.Text +"'";
        SqlCommand cmd = new SqlCommand();
	    cmd.Connection = cn;
        cmd.CommandText = strsel;
        int bktra = (int)cmd.ExecuteScalar();
        if (bktra == 0)

        {

		        Label7.Text = "Đăng nhập thất bại";
        }
        else
            Label7.Text = "Đăng nhập thành công";
            Session.Add("matk", TextBox1.Text);
            if (captk() == 9)
                Response.Redirect("~/Admin/Admin.aspx");
            else
            Response.Redirect("~/User/Quantri.aspx");
	        cn.Close();
        }
    public int captk()
    {
        String tk = Session["matk"].ToString();
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        String sql = "select cap from TAIKHOAN where EMAIL='" + tk+"'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            int gia = (int) reader["cap"];
            return gia;
            reader.Close();
        }
        cn.Close();
        return 1;
    }
}

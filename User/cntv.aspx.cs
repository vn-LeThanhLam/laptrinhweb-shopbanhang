using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class cntv : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String tk = Session["matk"].ToString(); 
        SqlDataReader reader;
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
        SqlConnection cn = new SqlConnection(strcn);
        string sql = "SELECT * from TAIKHOAN WHERE MATK="+matk(tk);
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            String HOTEN = reader["HOTEN"].ToString();
            String MK = reader["MK"].ToString();
            String SDT = reader["SDT"].ToString();
            String DIACHI = reader["DIACHI"].ToString();
            String EMAIL = reader["EMAIL"].ToString();
            
            TextBox5.Text = HOTEN;
            TextBox1.Text = SDT;
            TextBox6.Text = DIACHI;
            TextBox2.Text = EMAIL;



        }
        reader.Close();

        cn.Close();
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


    protected void Button1_Click(object sender, EventArgs e)
    {
        String tk = Session["matk"].ToString();

        String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
	    SqlConnection cn = new SqlConnection(strcn);
	    cn.Open();
        String strsel =  "UPDATE TAIKHOAN SET HOTEN=N'" + TextBox5.Text + "',SDT=N'" + TextBox1.Text + "',DIACHI=N'" + TextBox6.Text + "',EMAIL=N'" + TextBox2.Text + "' WHERE MATK=" + matk(tk);

        SqlCommand cmd = new SqlCommand();
	    cmd.Connection = cn;
        cmd.CommandText = strsel;

            Label7.Text = "Cập nhật thành công";

            Response.Redirect("quantri.aspx");
            cn.Close();
    }

}

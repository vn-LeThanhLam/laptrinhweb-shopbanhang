using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        	    String strcn = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
	    SqlConnection cn = new SqlConnection(strcn);
 
        String gt = RadioButtonList1.SelectedValue;
	    cn.Open();
        String strsel = "select count (*) from taikhoan where Email = '" + TextBox2.Text + "'";
        SqlCommand cmd = new SqlCommand();
	    cmd.Connection = cn;
        cmd.CommandText = strsel;
        int bktra = (int)cmd.ExecuteScalar();
        if (bktra == 0)

        {

            String strcmd = "insert into TAIKHOAN (MK,HOTEN,GT,EMAIL,SDT,DIACHI,CAP) values(N'" + TextBox3.Text + "',N'" + TextBox5.Text +"',N'" + gt +  "',N'" + TextBox2.Text + "',N'" + TextBox6.Text + "',N'" + TextBox1.Text + "',1)";
            cmd.CommandText = strcmd;
            int rs = cmd.ExecuteNonQuery();
            if (rs == 1)
		        Label7.Text = "Đăng ký thành công";
            Response.Redirect("Dangnhap.aspx");
        }
        else
            Label7.Text = "Lỗi!trùng email";
	        cn.Close();
        }
    }

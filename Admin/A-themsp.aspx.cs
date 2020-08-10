using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class A_themsp : System.Web.UI.Page
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


        if (FileUpload1.HasFile)
            FileUpload1.SaveAs(MapPath("Hinh/" + FileUpload1.FileName));

        String strcmd = "insert into SANPHAM (TENSP,GIA,IMG,MOTA,MADM) values(N'" + TextBox1.Text + "',N'" + TextBox2.Text + "','" + FileUpload1.FileName + "',N'" + TextBox3.Text + "'," + TextBox4.Text + ")";
        cmd.CommandText = strcmd;
        int rs = cmd.ExecuteNonQuery();
        Response.Redirect("A-dssp.aspx");

    }
}
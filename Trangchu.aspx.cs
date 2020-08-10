using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Trangchu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String m = Request.QueryString["ma"];
        String strcn = ConfigurationManager.ConnectionStrings["DB"].ToString();
        SqlConnection cn = new SqlConnection(strcn);
        String str_sel;
        if (m != null)
        {
            str_sel = " select * FROM SANPHAM WHERE MADM=" + m;
        }
        else { 
        str_sel = "select * FROM SANPHAM ";
        }
        SqlDataAdapter da = new SqlDataAdapter(str_sel, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "sp1");

        DataList1.DataSource = ds.Tables["sp1"];
        DataList1.DataBind();


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        String strcn = ConfigurationManager.ConnectionStrings["DB"].ToString();
        SqlConnection cn = new SqlConnection(strcn);

        String str_sel = "select * FROM DANHMUC";
        SqlDataAdapter da = new SqlDataAdapter(str_sel, cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "sp1");

        DataList1.DataSource = ds.Tables["sp1"];
        DataList1.DataBind();
    }
}

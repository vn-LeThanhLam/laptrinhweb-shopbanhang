using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class A_don : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcn = ConfigurationManager.ConnectionStrings["DB"].ToString();
        SqlConnection cn = new SqlConnection(strcn);
        //tao cmd
        String strcmd = "SELECT * FROM HOADON";

        SqlDataAdapter da = new SqlDataAdapter(strcmd, cn);

        DataSet ds = new DataSet();
        da.Fill(ds, "abc");
        GridView1.DataSource = ds.Tables["abc"];
        GridView1.DataBind();
    }
}
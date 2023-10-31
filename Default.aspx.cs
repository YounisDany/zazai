using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    public SqlConnection con = new SqlConnection(CS);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            gerproduct();
        }

    }




    public void gerproduct()
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from product   order by id DESC", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception)
        {

        }
    }




}
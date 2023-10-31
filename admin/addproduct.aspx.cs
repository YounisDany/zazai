using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_add_diploma : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    public SqlConnection con = new SqlConnection(CS);
    protected void Page_Load(object sender, EventArgs e)
    {

      

    }











    [System.Web.Services.WebMethod]




    public static string insertsave(string name, string img)
    {

        string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;




        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("Insert into product(name,nameimage) Values('" + name + "','" + img + "')", con))
            {


                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
            }

        }
        return "تم الحفظ بنجاح";

    }
}
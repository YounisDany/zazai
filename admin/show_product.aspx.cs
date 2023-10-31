using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_show_product : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    public SqlConnection con = new SqlConnection(CS);
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
           
            getdablom();
        }

    }





    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Redirect("show_product.aspx");

    }




    public void getdablom()
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







    [System.Web.Services.WebMethod]
    public static string Update(string name,  string img, string id)
    {

        string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;




        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("UPDATE product SET name='" + name + "', nameimage='" + img + "' where id='" + Convert.ToInt32(id) + "'  ", con))
            {


                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
            }

        }
        return "تم التعديل بنجاح";

    }


    [System.Web.Services.WebMethod]
    public static string DeleteP(string id)
    {


        string constr = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;




        using (SqlConnection con = new SqlConnection(constr))
        {

            con.Open();

            using (SqlCommand cmd = new SqlCommand("DELETE from product where id='" + Convert.ToInt32(id) + "'  ", con))
            {



                cmd.ExecuteNonQuery();

                con.Close();
            }

        }
        return "تم الحذف بنجاح";
    }


}
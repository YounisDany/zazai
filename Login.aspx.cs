using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    public SqlConnection con = new SqlConnection(CS);
    protected void Page_Load(object sender, EventArgs e)
    {
      
        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal('خطأ !',' الرجاء التاكد من صحة البيانات  . ','error') ", true);
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        if (isvalid())
        {
            try
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString))
                {


                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from Login where name='" + Email.Text + "' and password='" + password.Text + "'", con);
                    cmd.Parameters.AddWithValue("@name", Email.Text);
                    cmd.Parameters.AddWithValue("@pass", password.Text);


                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {


                        Session["username"] ="courses@2022.com";
                        Response.Redirect("~/Admin/index.aspx");



                    }
                    else
                    {

                        Response.Write("<script>alert('  الرجاء التاكد من صحة البيانات   ')</script>");
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal('خطأ !',' الرجاء التاكد من صحة البيانات  . ','error') ", true);



                    }




                }



            }
            catch (Exception ex)
            {

            }


        }

    }


    private bool isvalid()
    {
        if (Email.Text == "")
        {
            Response.Write("<script>alert(' ادخل البريد الالكتروني   ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal('  ادخل البريد الالكتروني !  !','error') ", true);
            return false;
        }
        else if (password.Text == "")
        {
            Response.Write("<script>alert('ادخل كلمة المرور    ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal(' ادخل كلمة المرور    !','error') ", true);

            return false;
        }
        return true;

    }



}
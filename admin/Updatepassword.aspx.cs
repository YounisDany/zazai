using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Updatepassword : System.Web.UI.Page
{
    public static string CS = ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    public SqlConnection con = new SqlConnection(CS);
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["username"] != null)
        {


            if (Session["username"].ToString() == "courses@2022.com")
            {


            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }




        }

        else
        {
            Response.Redirect("~/Login.aspx");
        }



    }



    private bool isvalid()
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert(' ادخل  كلمة المرور القديمة   ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal('  ادخل  كلمة المرور القديمة !  !','error') ", true);
            return false;
        }
        else if (TextBox2.Text == "")
        {
            Response.Write("<script>alert(' ادخل  كلمة المرور الجديدة    ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal(' تأكيد  كلمة المرور الجديدة    !','error') ", true);

            return false;
        }

        else if (TextBox3.Text == "")
        {
            Response.Write("<script>alert('  ادخل تأكيد  كلمة المرور الجديدة      ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal(' تأكيد  كلمة المرور الجديدة     !','error') ", true);

            return false;
        }




        else if (TextBox2.Text != TextBox3.Text)
        {
            Response.Write("<script>alert(' كلمتا المرور غير متطابقه  ')</script>");
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", " swal(' كلمتا المرور غير متطابقه      !','error') ", true);

            return false;
        }




        return true;

    }


    protected void Button1_Click(object sender, EventArgs e)
    {



        if (isvalid())
        {
            try
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString))
                {


                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * from Login where  password=@pass", con);
                    cmd.Parameters.AddWithValue("@pass", TextBox1.Text);


                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {


                        SqlCommand cmd2 = new SqlCommand("UPDATE Login SET password='" + TextBox2.Text + "'", con);


                        cmd2.ExecuteNonQuery();

                        con.Close();

                        Response.Write("<script>alert('   تم التعديل  ')</script>");
                        TextBox1.Text = "";
                        TextBox2.Text = "";
                        TextBox3.Text = "";


                    }
                    else
                    {

                        Response.Write("<script>alert('   كلمة المرور غير صحيحة  ')</script>");
                        TextBox1.Focus();




                    }




                }



            }
            catch (Exception ex)
            {

            }


        }

    }
}
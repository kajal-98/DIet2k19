using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;

public partial class LoginPages_Default : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);

    String Param = "INSERT INTO UserMaster VALUES(@UserId,@UserFirstName,@UserLastName,@UserAge,@UserEmail_Id,@UserPhone_Number,@Date,@Gender,@UserPassword,@Diebetes,@BloodPressure,@Thyroid,@FoodType)";
    string Id = "UID";
    String demo = "You Are Registered Successfully!!!";
   
    protected void Page_Load(object sender, EventArgs e)
    {
        GenerateAutoId();

    }
    private void GenerateAutoId()
    {
        Con.Open();
        SqlCommand cmd = new SqlCommand("SELECT COUNT(UserId) From UserMaster", Con);
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        Con.Close();
        i++;
        DateTime dt = DateTime.Now;
        string dt1 = dt.ToString("ddMMyyyy");
        demo = demo + "\n Your Id Is:" + Id + dt1 + i.ToString();
        TextBox6.Text = Id + dt1 + i.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Con.Open();

            //DateTime bday = DateTime.Parse(String.Format("{0}/{1}/{2}", DropDownList2.SelectedValue, DropDownList3.SelectedValue, DropDownList4.SelectedValue));
            SqlCommand cmd = new SqlCommand(Param, Con);
            SqlCommand cmd1 = new SqlCommand();
            cmd.Parameters.AddWithValue("@UserId", TextBox6.Text);
            cmd.Parameters.AddWithValue("@UserFirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@UserLastName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@UserAge", TextBox3.Text);
            cmd.Parameters.AddWithValue("@UserEmail_Id", TextBox4.Text);
            cmd.Parameters.AddWithValue("@UserPhone_Number", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Date",TextBox11.Text);
            cmd.Parameters.AddWithValue("@Gender", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@UserPassword", TextBox8.Text);
           cmd.Parameters.AddWithValue("@FoodType", DropDownList1.SelectedValue);
            
            
            if (CheckBox1.Checked)
            {

                cmd.Parameters.AddWithValue("@BloodPressure", "HasBP");


            }
            else
            {
                cmd.Parameters.AddWithValue("@BloodPressure", "DonthaveBP");

            }
            if (CheckBox2.Checked)
            {

                cmd.Parameters.AddWithValue("@Diebetes","Dibetic");

            }
            else
            {
                cmd.Parameters.AddWithValue("@Diebetes", "nonDibetic");

            }
            if (CheckBox3.Checked)
            {

                cmd.Parameters.AddWithValue("@Thyroid","thyroid");

            }
            else
            {
                cmd.Parameters.AddWithValue("@Thyroid","nonthyroid");

            }

            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registered Successfully!!!');", true);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            
            RadioButtonList1.SelectedValue = "";
            DropDownList1.SelectedValue = "";
           DropDownList5.SelectedValue = "";
            DropDownList6.SelectedValue = "";
            DropDownList7.SelectedValue = "";

            Response.Redirect(@"~\LoginPages\UserLogin.aspx");

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
        finally
        {
            Con.Close();
        }

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
       
        RadioButtonList1.SelectedValue = "";
        DropDownList1.SelectedValue = "";
        DropDownList5.SelectedValue = "";
        DropDownList6.SelectedValue = "";
        DropDownList7.SelectedValue = "";
    }
    protected void TextBox11_TextChanged(object sender, EventArgs e)
    {

    }
   
}
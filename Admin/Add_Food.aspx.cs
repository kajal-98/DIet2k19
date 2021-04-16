using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;


public partial class Admin_Add_Food : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    string add_food = "INSERT INTO FoodMaster VALUES(@FoodName,@CategoryId,@Calories,@Fats,@Carbohyadrates,@Proteins,@Diebetes,@Blood_Pressure,@Thyroid,@FoodImage,@Meal)";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label1.Text = Label1.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label1.ForeColor = System.Drawing.Color.DeepSkyBlue;
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    try
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(add_food, con);
        string[] validfiletype = { "JPG", "PNG","JPEG" };
        string PhotoExt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
        bool isValidFile = false;
        for (int i = 0; i < validfiletype.Length; i++)
        {
            if (PhotoExt == "." + validfiletype[i])
            {
                isValidFile = true;
                break;
            }

        }
        if (FileUpload1.HasFile == true)
        {
            string filepath = Server.MapPath("~/Admin/FoodImages");
            FileUpload1.SaveAs(filepath + "/" + FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@FoodName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@CategoryId", RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@Calories", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Fats", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Carbohyadrates", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Proteins", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Diebetes", RadioButtonList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Blood_Pressure", RadioButtonList4.SelectedValue);
            cmd.Parameters.AddWithValue("@Thyroid", RadioButtonList5.SelectedValue);
            cmd.Parameters.AddWithValue("@FoodImage", FileUpload1.FileName.ToString());
            cmd.Parameters.AddWithValue("@Meal", RadioButtonList6.SelectedValue);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Insert Successfully!!!');", true);
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
            TextBox4.Text = " ";
            TextBox5.Text = " ";
            RadioButtonList1.SelectedValue = " ";
            RadioButtonList3.SelectedValue = " ";
            RadioButtonList4.SelectedValue = " ";
            RadioButtonList5.SelectedValue = " ";
            RadioButtonList6.SelectedValue = " ";
        }

    }
    catch (Exception ex)
    {
        Response.Write(ex.Message.ToString());

    }
    finally
    {
        con.Close();
    }

}
//protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
//{

//}
}

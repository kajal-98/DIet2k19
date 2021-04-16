using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Data;

public partial class DietitianPages_AddDietPlan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    string AddData = "INSERT INTO Diet_Plan_Dietitian VALUES(@DietitianId,@DietTitle,@DietDescription,@DietFile)";
    DateTime dt = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["DietitianFirstName"].ToString();
        TextBox1.Text = Session["DietitianId"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(AddData, con);
            string[] validfiletype = {"mp4","JPG","PNG","doc","docx","txt"};
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
                string filepath = Server.MapPath("~/DietPlanFile");
                String fname = FileUpload1.FileName.ToString().Replace(' ', 'a');
                FileUpload1.SaveAs(filepath + "/" + fname);
                string fp = filepath + "/" + FileUpload1.FileName.ToString();
                //cmd.Parameters.AddWithValue("@videoID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DietitianId",TextBox1.Text);
                cmd.Parameters.AddWithValue("@DietTitle", TextBox3.Text);
                cmd.Parameters.AddWithValue("@DietDescription", TextBox2.Text);
                cmd.Parameters.AddWithValue("@DietFile", fname);
                // cmd.Parameters.AddWithValue("@UploadDateTime",);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Added Successfully!!!');", true);
                TextBox2.Text = " ";
                TextBox1.Text = " ";
                TextBox3.Text = " ";
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
}
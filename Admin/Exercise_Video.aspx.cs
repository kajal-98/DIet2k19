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

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    string AddVideo = "INSERT INTO Exercise_Videos VALUES(@Vname,@UploadeBy,GETDATE(),@Discription)";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label1.Text = Label1.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label1.ForeColor = System.Drawing.Color.Blue;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        
         con.Open();
            SqlCommand cmd = new SqlCommand(AddVideo, con);
            string validfiletype = "mp4";
            string PhotoExt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            bool isValidFile = false;
            if (PhotoExt == "." + validfiletype)
            {

                isValidFile = true;
            }
            else
            {

                Response.Write("Please enter valid file type");
            }
            if (FileUpload1.HasFile == true && isValidFile == true)
            {
                string filepath = Server.MapPath("~/Exercise_Videos");
                FileUpload1.SaveAs(filepath + "/" + FileUpload1.FileName);
                //cmd.Parameters.AddWithValue("@videoID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Vname", FileUpload1.FileName.ToString());
                cmd.Parameters.AddWithValue("@Discription", TextBox2.Text);
                cmd.Parameters.AddWithValue("@UploadeBy", Session["Id"].ToString());
               // cmd.Parameters.AddWithValue("@UploadDateTime",);
                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Registered Successfully!!!');", true);
                TextBox2.Text = " ";
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

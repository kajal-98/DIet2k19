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
using System.Net.Mail;
using System.Net;

public partial class Admin_AddDietitian : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    String AddValue = "INSERT INTO DietitianMaster VALUES(@DietitianFirstName,@DietitianLastName,@DietitianPhonenumber,@DietitianEmailID,@DietitianDocPath,@DietitianAddress,@DietitianPassword,@DUsername)";
    SqlCommand cmd1;
    String Dname;
    String psw1;
    SqlDataAdapter da;
    DataSet ds;
    Int16 ID1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label2.Text = Label2.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label2.ForeColor = System.Drawing.Color.DeepSkyBlue;

    }
    private void SendMail(String Dname,String psw, String email)
    {

        SmtpClient smtp = new SmtpClient("smtp@gmail.com,587");
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("kajal44april@gmail.com", "K@ju@4498");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Forgot Password ( AI Dietitian System )";
        msg.Body = "Dear " + TextBox1.Text +", Your Username is "+Dname+" And Your Password is  " + psw +"\n please change your Password and Id After Login for safety purpose"+ "\n\n\nThanks & Regards\nAI Dietitian Hub";
        string toaddress = TextBox4.Text;
        msg.To.Add(toaddress);
        string fromaddress = "AI Dietitian System <kajal44april@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string imgpath; 
        String selectQuery = "Select * from DietitianMaster where DUsername='" + TextBox3.Text + "' and DietitianEmailID='" + TextBox4.Text + "'";
        selectQuery += " SELECT SCOPE_IDENTITY()";
        cmd1 = new SqlCommand(selectQuery, Con);
      
               
        try
        {
            Con.Open();
              
            string[] validPhotoFile = { "JPG","PNG","PDF"};
            string PhotoExt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName);
            bool isValidPhotoFile = false;
           
            for(int i = 0; i < validPhotoFile.Length; i++)
            {
                if (PhotoExt == "." + validPhotoFile[i])
                {
                    isValidPhotoFile = true;
                    break;
                }
            
            }
            //if (isValidPhotoFile == false)
            //{
            //    Label1.Text = "Upload .jpg or .png file!";
            //}
            if (FileUpload1.HasFile == true)
            {
                SqlCommand cmd = new SqlCommand(AddValue, Con);

                //string filename = Guid.NewGuid().ToString().Substring(0, 10) + "" + FileUpload1.PostedFile.FileName.Remove(0, FileUpload1.PostedFile.FileName.LastIndexOf("."));
                // string PhotofilePath = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName.ToString());
                string PhotoPath = Server.MapPath("~/Admin/UploadDocuments");
                // FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UploadDocuments/" + filename.ToString()));
                //imgpath = "~/image/" + filename.ToString();
                // FileUpload1.PostedFile.SaveAs(PhotoPath);
                FileUpload1.SaveAs(PhotoPath + "/" + FileUpload1.FileName);

                cmd.Parameters.AddWithValue("@DietitianFirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("@DietitianLastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("@DietitianPhonenumber", TextBox5.Text);
                cmd.Parameters.AddWithValue("@DietitianEmailID", TextBox4.Text);
                cmd.Parameters.AddWithValue("@DietitianDocPath", FileUpload1.FileName.ToString());
                cmd.Parameters.AddWithValue("@DietitianAddress", TextBox6.Text);
                cmd.Parameters.AddWithValue("@DietitianPassword", TextBox7.Text);
                cmd.Parameters.AddWithValue("@DUsername", TextBox3.Text);
                cmd1.CommandText = selectQuery;
                cmd1.Connection = Con;
                //cmd1.Parameters["@DietitianId"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                //ID1 = Convert.ToInt16(cmd1.Parameters["@DietitianId"].Value);
                da = new SqlDataAdapter();
                da.SelectCommand = cmd1;
                ds = new DataSet();
                da.Fill(ds);
                Dname = TextBox3.Text;
                psw1 = TextBox7.Text;
                
            }
                       if (ds.Tables.Count > 0)
                       {
                           //Label3.Text = "Data Found";

                           //String password = ds.Tables[0].Rows[0]["DietitianPassword"].ToString();
                           //String Dname = ds.Tables[0].Rows[0]["DUsername"].ToString();
                           //Int16 id2 = Convert.ToInt16(ds.Tables[0].Rows[1]["Dietitian Id"].ToString());
                           SendMail(Dname, psw1, TextBox1.Text);
                           Label1.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";
                           ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Mail send Successfully!!!');", true);
                          
                       }
                       else
                       {
                           Label1.Text = "Your Username is Not Valid or Email Not Registered";

                       }
                       TextBox1.Text = "";
                       TextBox2.Text = "";
                       TextBox3.Text = "";
                       TextBox4.Text = "";
                       TextBox5.Text = "";
                       TextBox6.Text = "";
                       TextBox7.Text = "";
                  

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());

        }
             
        finally {
                 
            Con.Close();
        }
    }

   
}
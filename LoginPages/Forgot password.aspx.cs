using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void SendMail(String psw, String email)
    {
        
            SmtpClient smtp = new SmtpClient("smtp@gmail.com,587");
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("kajal44april@gmail.com", "K@ju@4498");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Forgot Password ( AI Dietitian System )";
            msg.Body = "Dear " + TextBox3.Text + ", Your Password is  " + psw + "\n\n\nThanks & Regards\nAI Dietitian Hub";
            string toaddress = TextBox1.Text;
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
        con.Open();
        String password;
       // String mycon = "Data Source=HP-PC\\SQLEXPRESS; Initial Catalog=RegisteredUser; Integrated Security=True";
        String myquery = "Select * from UserMaster where UserId='" + TextBox3.Text + "' and USerEmail_Id='" + TextBox1.Text + "'";
       
       SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //Label3.Text = "Data Found";

            password = ds.Tables[0].Rows[0]["UserPassword"].ToString();
            SendMail(password, TextBox1.Text);
            Label1.Text = "Your Password Has Been Sent to Registered Email Address. Check Your Mail Inbox";

        }
        else
        {
            Label1.Text = "Your Username is Not Valid or Email Not Registered";

        }
        con.Close();

       
       // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('password set successfully');", true);
    }
}
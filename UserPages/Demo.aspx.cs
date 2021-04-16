using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class UserPages_Demo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");

    String Query = "INSERT INTO CustomizedDietPlan VALUES(@UserID,@DietitianID,GETDATE(),@ReplyMssage,@Responsedate,@Filename)";
    string user;
    string did;
    String RD = "null";
    String Fname = "null";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome" + Session["UserFirstName"].ToString();
        Label1.Text = Label1.Text + "Your Id is:" + Session["UserId"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserId"] != null)
            {
                //Converting your session variable value to integer
                user = (Session["UserId"].ToString());
            }
            if (Session["DietitianId"] != null)
            {
                //Converting your session variable value to integer
                did = (Session["DietitianId"].ToString());
            }

            con.Open();
            SqlCommand cmd = new SqlCommand(Query, con);
            cmd.Parameters.AddWithValue("@UserID", user);
            cmd.Parameters.AddWithValue("@DietitianID", did);
            cmd.Parameters.AddWithValue("@ReplyMssage", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Responsedate", RD);
            cmd.Parameters.AddWithValue("@Filename", Fname);
            cmd.ExecuteNonQuery();

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Request send Successfully!!!');", true);


            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}
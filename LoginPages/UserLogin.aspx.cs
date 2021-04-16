using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPages_Default : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    int count;
    public LoginPages_Default()
    {
        count = 0;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

       
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Conn.Open();
        count++;
        string userid=TextBox1.Text;
        String name;
        String Query="SELECT * from UserMaster WHERE UserID=@id and UserPassword=@Pass";
        SqlCommand cmd = new SqlCommand(Query, Conn);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Pass", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
       
        da.Fill(dt);
        
        SqlDataReader dr =cmd.ExecuteReader();
        if (dr.Read())
        {
          
            Session["gender"] = dr["Gender"].ToString();
            Session["diebetes"] = dr["Diebetes"].ToString();
            Session["BP"] = dr["BloodPressure"].ToString();
            String z = dr["Thyroid"].ToString();
            Session["thy"] = dr["Thyroid"].ToString();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successfull!');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid Login!');", true);
        }
        if (count > 3)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('All Attempts are Over!!');", true);
            this.Dispose();
        }
        dr.Close();
        Conn.Close();
           
          if (dt.Rows.Count > 0)
        {
            name = dt.Rows[0]["UserFirstName"].ToString();
            Session["UserFirstName"] = name;
            Session["UserId"] = userid;
            Response.Redirect("~/HomePage.aspx");
        }
        else {
            Label1.Text = "Your Username or Password Might be Wrong!!!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
        }
   
      
    }

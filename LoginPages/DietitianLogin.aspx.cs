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
        String Query = "SELECT * from DietitianMaster WHERE DUsername=@user and DietitianPassword=@Pass";
        SqlCommand cmd = new SqlCommand(Query, Conn);
        cmd.Parameters.AddWithValue("@user", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Pass", TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful!');", true);
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
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        
        da.Fill(dt);
        string id = dt.Rows[0]["DietitianId"].ToString();
        string fname = dt.Rows[0]["DietitianFirstName"].ToString();
        Conn.Close();
        if (dt.Rows.Count > 0)
        {
            Session["DietitianId"] = id;
            Session["DietitianFirstName"] = fname;
            Response.Redirect("~/DietitianPages/DHome.aspx");
        }
        else
        {
            Label1.Text = "Your Username or Password Might be Wrong!!!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection Conn = new SqlConnection(@"Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    int count;
    
    public Default2()
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
        String id;
        String Admin = TextBox1.Text;
        String Query = "SELECT * from AdminMaster WHERE Admin_Username=@username and Admin_Password=@Pass";
        SqlCommand cmd = new SqlCommand(Query, Conn);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Pass", TextBox2.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful!');", true);
            //Response.Redirect("~/Admin/Profile_Page.aspx");
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
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        id = dt.Rows[0]["Id"].ToString();
        Conn.Close();
        if (dt.Rows.Count > 0)
        {
            Session["Id"] = id;
            Session["Admin_Username"]=Admin;
            Response.Redirect("~/Admin/Profile_Page.aspx");
        }
        else
        {
            Label1.Text = "Your Username or Password Might be Wrong!!!";
            Label1.ForeColor = System.Drawing.Color.Red;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class DietitianPages_CustomeDietPlan : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    String query = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Label1.Text + Session["DietitianFirstName"].ToString();
        Label1.Text = Label1.Text + Session["DietitianId"].ToString();
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
        con.Open();
        FileUpload1.SaveAs(Server.MapPath("../DietPlanFile")+FileUpload1.FileName);
        SqlCommand cmd = new SqlCommand("UPDATE CustomizedDietPlan SET Filename=@fn,Responsedate=GETDATE() WHERE CustomizeID=@id", con);
        cmd.Parameters.AddWithValue("@fn", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@id", Session["Cdid"].ToString());
        cmd.ExecuteNonQuery();
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Request send Successfully!!!');", true);
        con.Close();
    }
}
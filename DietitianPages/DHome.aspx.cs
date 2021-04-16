using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class DietitianPages_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    SqlDataAdapter da;
    DataSet ds;
   // Session["n"];

    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt16(Session["DietitianId"]);
      // Label1.Text = Session["DietitianId"].ToString();
        Label1.Text = Session["DietitianFirstName"].ToString();
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
       
    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        String Query = "UPDATE DietitianMaster SET DUsername='" + TextBox1.Text + "',DietitianPassword='" + TextBox2.Text + "' where DietitianId=" + Convert.ToInt16(Session["DietitianId"]) + " ";
        SqlCommand cmd=new SqlCommand(Query,con);
   
        
        cmd.ExecuteNonQuery();
       
        Label2.Text = "Record successfuly Updated!!!!!!!!!!";
    }
}
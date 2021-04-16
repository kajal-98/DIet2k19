using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data;
//using System.Collections.Generic;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=DESKTOP-TT2T3BA;Initial Catalog=Project_Item;Integrated Security=True");
    SqlDataAdapter da;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label3.Text = Label3.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label3.ForeColor = System.Drawing.Color.Blue;

    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        String Query = "UPDATE AdminMaster SET Admin_Username='" + TextBox1.Text + "',Admin_Password='" + TextBox2.Text + "' where Id=" + Convert.ToInt16(Session["Id"]) + " ";
        SqlCommand cmd = new SqlCommand(Query, con);


        cmd.ExecuteNonQuery();

        Label3.Text = "Record successfuly Updated!!!!!!!!!!";
    }
}
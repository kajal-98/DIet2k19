using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPages_DietitianDiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text += Session["UserFirstName"].ToString();
        Label1.Text += Session["UserId"].ToString();

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
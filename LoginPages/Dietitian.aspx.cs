using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPages_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
           }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Login Successful!');", true);

    }
}
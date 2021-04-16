using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label1.Text = Label1.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label1.ForeColor = System.Drawing.Color.Blue;

    }
}
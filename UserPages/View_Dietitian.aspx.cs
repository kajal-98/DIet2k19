using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserPages_View_Dietitian : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["UserFirstName"].ToString();
        Label1.Text = Label1.Text + "\n" + " Your User Id Is:" + Session["UserId"].ToString();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[index];
        String did = Server.HtmlDecode(row.Cells[0].Text);
        Session["Selecteddid"] = did;
        Response.Redirect("DietInfoView.aspx");
    }
}
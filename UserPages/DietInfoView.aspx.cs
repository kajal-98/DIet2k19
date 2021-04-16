using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class UserPages_DietInfoView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Hello"+Session["UserFirstName"].ToString();
        Label1.Text = Label1.Text + "Youe Id is:" + Session["UserId"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        
        //Session["DietId"] = gr.Cells[1].Text.Trim();
        //Session["Did"] = GridView1.Rows.Cells("DietitianId");
        Session["DietitianId"] = GridView1.Rows[0].Cells[1].Text.ToString();
        //Response.Redirect("~/UserPages/CustomeRequest.aspx");
        Response.Redirect("~/UserPages/CustomeRequest.aspx");
    }
}
    

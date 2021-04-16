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
        if (!IsPostBack)
        {
            SetImageUrl();
        }
        //Label1.Text = "Welcome " + Session["UserFirstName"].ToString();
        //Label1.Text = Label1.Text + "\n" + " Your User Id Is:" + Session["UserId"].ToString();
        //Label1.ForeColor = System.Drawing.Color.Blue;
    }

    private void SetImageUrl()
    {
        Random rd = new Random();
        int change = rd.Next(1, 4);
        Image1.ImageUrl = "~/HomePageImages/" + change.ToString() + ".jpg";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPages/RegistrationPage.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPages/UserLogin.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPages/AdminLoginPage.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/LoginPages/DietitianLogin.aspx");
    }
}
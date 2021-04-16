using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;



public partial class _Default : System.Web.UI.Page
{
    Double weight;
    Double feet;
    Double inches;
    Double height;
    Double weight1;
    Double height1;
    Double diff;
    float expectedResult;
    Double MillerMen;
    Int16 period;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = Session["UserFirstName"].ToString();
        Label3.Text = Label3.Text + "\n" + " Your User Id Is:" + Session["UserId"].ToString();
      }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
       
         weight=Convert.ToDouble(TextBox1.Text);
        feet = Convert.ToDouble(TextBox2.Text);
        inches = Convert.ToDouble(TextBox3.Text);
        height = (feet * 12) + inches;

         weight1 = weight * 0.45;//converting in kg
       height1 = height * 0.0254;//cnverting in m
        Double cal = weight1 / (height1 * height1);
        
        Label1.Text=(@"Your BMI is:"+cal);
        if (Session["gender"].ToString()=="Male")
        {
            MillerMen = 48.0 + (2.7 *( height)/5);//Miller formula use here
            expectedResult = (float)(weight1 - MillerMen);//what is the general weight 
            period = Convert.ToInt16((expectedResult * 7700) / 500);
        }
        if (Convert.ToString(Session["gender"]) == "Female")
        {
            MillerMen =45.5 +(2.2 *( height)/5);//Miller formula use here
            expectedResult = (float)(weight1 - MillerMen);//what is the general weight 
            period = Convert.ToInt16((expectedResult * 7700) / 500);
        }
        if (cal <= 18.5)
        {
            Label2.Text = "You are Underweight";
          
        }
        else if (cal >= 18.5 && cal <= 24.99)
        {
            Label2.Text = "You are Normalweight..";
        }
        else if (cal >= 25 && cal <= 29.99)
        {
            Label2.Text = "You are obese by "+expectedResult+" kg and you can be lose weight after following the diet plan and with 30 min exercise in "+period+"days";
        }
        else if (cal >= 30 && cal <= 34.99)
        {
            Label2.Text = "You are obese by " + expectedResult + " kg and you can be lose weight after following the diet plan and with 30 min exercise in " + period + "days";
        }
        else if (cal >= 35 && cal <= 35.99)
        {
            Label2.Text = "You are obese by " + expectedResult + " kg and you can be lose weight after following the diet plan and with 30 min exercise in " + period + "days";
        }
        else
        {
            Label2.Text = "You are obese by " + expectedResult + " kg and you can be lose weight after following the diet plan and with 30 min exercise in " + period + "days";
        }

    }
    
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        Label5.Text = (((Convert.ToDouble(TextBox2.Text) * 12) + (Convert.ToDouble(TextBox3.Text)))*0.0254).ToString()+"m"; 
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

        changew();
    }
    public void changew()
    {
        weight1 = Convert.ToDouble(TextBox1.Text) * 0.45;
        Label4.Text = Convert.ToString(weight1)+"kg";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserPages/ViewDiet.aspx");
    }
}
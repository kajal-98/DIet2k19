using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    Double weight;
    Double feet;
    Double inches;
    Double height;
    Double weight1;
    Double height1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Welcome " + Session["Admin_Username"].ToString();
        Label3.Text = Label3.Text + "\n" + " Your User Id Is:" + Session["Id"].ToString();
        Label3.ForeColor = System.Drawing.Color.DeepSkyBlue;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        weight = Convert.ToDouble(TextBox1.Text);
        feet = Convert.ToDouble(TextBox2.Text);
        inches = Convert.ToDouble(TextBox3.Text);
        height = (feet * 12) + inches;

        weight1 = weight * 0.45;//converting in kg
        height1 = height * 0.0254;//cnverting in m
        Double cal = weight1 / (height1 * height1);
       
        Label2.Text = (@"Your BMI is:" + cal);
        if (cal <= 18.5)
        {
            Label6.Text = "You are Underweight..";
        }
        else if (cal >= 18.5 && cal <= 24.99)
        {
            Label6.Text = "You are Normalweight..";
        }
        else if (cal >= 25 && cal <= 29.99)
        {
            Label6.Text = "You are overweight..";
        }
        else if (cal >= 30 && cal <= 34.99)
        {
            Label6.Text = "You are Obesity(class1)..";
        }
        else if (cal >= 35 && cal <= 35.99)
        {
            Label6.Text = "You are Obesity(class2)..";
        }
        else
        {
            Label6.Text = "You are Morbid Obesity..";
        }

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
       Label5.Text = (((Convert.ToDouble(TextBox2.Text) * 12) + (Convert.ToDouble(TextBox3.Text)))*0.0254).ToString() + "m";
    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

        changew();
    }
    public void changew()
    {
        weight1 = Convert.ToDouble(TextBox1.Text) * 0.45;
        Label4.Text = Convert.ToString(weight1) + "kg";
    }
    
}
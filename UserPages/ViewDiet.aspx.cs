using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class UserPages_ViewDiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1_Click(null, null);
    }
    public void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
        con.Open();
        //all records from temp are deleted
        SqlCommand cmd = new SqlCommand("delete from FoodMasterTemp", con);
        cmd.ExecuteNonQuery();
        //getting breakfast record
        String x = Session["diebetes"].ToString();
        String y = Session["BP"].ToString();
        String z = Session["thy"].ToString();
        con.Close();
        con.Open();
       
            cmd = new SqlCommand("select top 80 percent * from [FoodMaster] where Meal='Breakfast' order by newid()", con);
            SqlDataReader dr = cmd.ExecuteReader();
            float sumcalories = 0f;
            if (Session["diebetes"].ToString() == "nonDibetic" && Session["BP"].ToString() == "DonthaveBP" && Session["thy"].ToString() == "nonthyroid")
            {
                while (dr.Read())
                {
                    sumcalories += float.Parse(dr[3].ToString());
                    if (sumcalories >= 250 && sumcalories <= 300)
                    {
                        break;
                    }
                    else
                    {

                        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                        con1.Open();
                        SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where FoodId=" + dr[0].ToString(), con1);
                        cmd1.ExecuteNonQuery();
                    }
                }
            }
            else if (Session["diebetes"].ToString() == "Dibetic")
            {
                while (dr.Read())
                {
                    sumcalories += float.Parse(dr[3].ToString());
                    if (sumcalories >= 250 && sumcalories <= 300)
                    {
                        break;
                    }
                    else
                    {
                        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                        con1.Open();
                        SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Diebetes!='not allowed' and FoodId=" + dr[0].ToString(), con1);
                        cmd1.ExecuteNonQuery();
                    }
                }
            }
            else if (Session["BP"].ToString() == "HasBP")
            {
                while (dr.Read())
                {
                    sumcalories += float.Parse(dr[3].ToString());
                    if (sumcalories >= 250 && sumcalories <= 300)
                    {
                        break;
                    }
                    else
                    {

                        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                        con1.Open();
                        SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Blood_Pressure!='not allowed' and FoodId=" + dr[0].ToString(), con1);
                        cmd1.ExecuteNonQuery();
                    }
                }
            }
            else if (Session["thy"].ToString() == "thyroid")
            {
                while (dr.Read())
                {
                    sumcalories += float.Parse(dr[3].ToString());
                    if (sumcalories >= 250 && sumcalories <= 300)
                    {
                        break;
                    }
                    else
                    {

                        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                        con1.Open();
                        SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Thyroid!='not allowed' and FoodId=" + dr[0].ToString(), con1);
                        cmd1.ExecuteNonQuery();
                    }
                }
            }
        con.Close();
        dr.Close();
        con.Open();
        
        cmd = new SqlCommand("select top 80 percent * from [FoodMaster] where Meal='Lunch' order by newid()", con);
        SqlDataReader dr1 = cmd.ExecuteReader();
        float sumLunchcalories = 0f;
        if (Session["diebetes"].ToString() == "nonDibetic" && Session["BP"].ToString() == "DonthaveBP" && Session["thy"].ToString() == "nonthyroid")
        {
            while (dr1.Read())
            {
                sumLunchcalories += float.Parse(dr1[3].ToString());
                if (sumLunchcalories >= 600 && sumLunchcalories <= 750)
                {
                    break;
                }
                else
                {

                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where FoodId=" + dr1[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["diebetes"].ToString() == "Dibetic")
        {
            while (dr1.Read())
            {
                sumLunchcalories += float.Parse(dr1[3].ToString());
                if (sumLunchcalories >= 600 && sumLunchcalories <= 750)
                {
                    break;
                }
                else
                {

                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Diebetes!='not allowed' and FoodId=" + dr1[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["BP"].ToString() == "HasBP")
        {
            while (dr1.Read())
            {
                sumLunchcalories += float.Parse(dr1[3].ToString());
                if (sumLunchcalories >= 600 && sumLunchcalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Blood_Pressure!='not allowed' and FoodId=" + dr1[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["thy"].ToString() == "thyroid")
        {
            while (dr1.Read())
            {
                sumLunchcalories += float.Parse(dr1[3].ToString());
                if (sumLunchcalories >= 600 && sumLunchcalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Thyroid!='not allowed' and FoodId=" + dr1[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        con.Close();
        dr1.Close();
        con.Open();
        cmd = new SqlCommand("select top 80 percent * from [FoodMaster] where Meal='Snacks' order by newid()", con);
        SqlDataReader dr2 = cmd.ExecuteReader();
        float sumSnackscalories = 0f;
        if (Session["diebetes"].ToString() == "nonDibetic" && Session["BP"].ToString() == "DonthaveBP" && Session["thy"].ToString() == "nonthyroid")
        {
            while (dr2.Read())
            {
                sumSnackscalories += float.Parse(dr2[3].ToString());
                if (sumSnackscalories >= 250 && sumSnackscalories <= 300)
                {
                    break;
                }
                else
                {

                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where FoodId=" + dr2[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["diebetes"].ToString() == "Dibetic")
        {
            while (dr2.Read())
            {
                sumSnackscalories += float.Parse(dr2[3].ToString());
                if (sumSnackscalories >= 250 && sumSnackscalories <= 300)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Diebetes!='not allowed' and FoodId=" + dr2[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["BP"].ToString() == "HasBP")
        {
            while (dr2.Read())
            {
                sumSnackscalories += float.Parse(dr2[3].ToString());
                if (sumSnackscalories >= 250 && sumSnackscalories <= 300)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Blood_Pressure!='not allowed' and FoodId=" + dr2[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["thy"].ToString() == "thyroid")
        {
            while (dr2.Read())
            {
                sumSnackscalories += float.Parse(dr2[3].ToString());
                if (sumSnackscalories >= 250 && sumSnackscalories <= 300)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Thyroid!='not allowed' and FoodId=" + dr2[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        con.Close();
        dr2.Close();
        con.Open();
        cmd = new SqlCommand("select top 80 percent * from [FoodMaster] where Meal='Dinner' order by newid()", con);
        SqlDataReader dr3 = cmd.ExecuteReader();
        float sumDinnercalories = 0f;
        if (Session["diebetes"].ToString() == "nonDibetic" && Session["BP"].ToString() == "DonthaveBP" && Session["thy"].ToString() == "nonthyroid")
        {
            while (dr3.Read())
            {
                sumDinnercalories += float.Parse(dr3[3].ToString());
                if (sumDinnercalories >= 600 && sumDinnercalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where FoodId=" + dr3[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["diebetes"].ToString() == "Dibetic")
        {
            while (dr3.Read())
            {
                sumSnackscalories += float.Parse(dr3[3].ToString());
                if (sumDinnercalories >= 600 && sumDinnercalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Diebetes!='not allowed' and FoodId=" + dr3[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["BP"].ToString() == "HasBP")
        {
            while (dr3.Read())
            {
                sumSnackscalories += float.Parse(dr3[3].ToString());
                if (sumDinnercalories >= 600 && sumDinnercalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Blood_Pressure!='not allowed' and FoodId=" + dr3[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        else if (Session["thy"].ToString() == "thyroid")
        {
            while (dr3.Read())
            {
                sumSnackscalories += float.Parse(dr3[3].ToString());
                if (sumDinnercalories >= 600 && sumDinnercalories <= 750)
                {
                    break;
                }
                else
                {
                    SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Project_ItemConnectionString"].ConnectionString);
                    con1.Open();
                    SqlCommand cmd1 = new SqlCommand("Insert into FoodMasterTemp select * from FoodMaster where Thyroid!='not allowed' and FoodId=" + dr3[0].ToString(), con1);
                    cmd1.ExecuteNonQuery();
                }
            }
        }
        SqlDataSource1.DataBind();
        GridView1.DataBind();
    }
  
}
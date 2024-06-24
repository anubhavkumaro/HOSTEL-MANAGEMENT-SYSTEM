using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Employee_Payment : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Hostel.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        conn.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // to Search the Record
        if (TextBox2.Text != "")
        {

            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Employee where Mobile_Number='" + TextBox2.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                int k = 0;
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(0).ToString();
                    TextBox3.Text = dr.GetValue(1).ToString();
                    TextBox4.Text = dr.GetValue(4).ToString();
                    TextBox5.Text = dr.GetValue(7).ToString();
                    k++;
                }
                if (k == 0)
                {
                    Response.Write("<script>alert('Mobile Number Not Registred')</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Enter Mobile Number')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int s = 0;

        s = int.Parse(TextBox7.Text) - int.Parse(TextBox8.Text);
        TextBox9.Text = s.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        // Pay and Save the Record
        if (TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && TextBox9.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "insert into Employee_Payment values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from Employee_Payment where Mobile_Number='" + TextBox2.Text + "'";
                Response.Write("<script>alert('Bill Payment Successful')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
       else
        {
            Response.Write("<script>alert('Fill All Box Data')</script>");
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        // to Update The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Employee_Payment where Month1='" + TextBox6.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string d;
            while (dr.Read())
            {
                d = dr.GetValue(4).ToString();
                if (d == TextBox6.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 1)
            {
                cmd.CommandText = "update Employee_Payment set Month_Pay_Amount='" + TextBox7.Text + "',Today_Pay_Amount='" + TextBox8.Text + "',Dues_Amount='" + TextBox9.Text + "' where Month1='" + TextBox6.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from Employee_Payment where Month1='" + TextBox6.Text + "'";
                Response.Write("<script>alert('Record Updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid Date')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Dashboard.aspx','_self')</script>");
    }
}
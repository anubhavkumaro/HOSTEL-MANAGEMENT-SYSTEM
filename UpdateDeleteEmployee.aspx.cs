using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateDeleteEmployee : System.Web.UI.Page
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Dashboard.aspx','_self')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        // To Search The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Employee where Mobile_Number='" + TextBox1.Text + "'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            while (dr.Read())
            {
                TextBox1.Text = dr.GetValue(0).ToString();
                TextBox2.Text = dr.GetValue(1).ToString();
                TextBox3.Text = dr.GetValue(2).ToString();
                TextBox4.Text = dr.GetValue(3).ToString();
                TextBox5.Text = dr.GetValue(4).ToString();
                TextBox6.Text = dr.GetValue(5).ToString();
                TextBox7.Text = dr.GetValue(6).ToString();
                TextBox8.Text = dr.GetValue(7).ToString();
                TextBox9.Text = dr.GetValue(9).ToString();
                k++;
            }
            if (k == 0)
            {
                Response.Write("<script>alert('Mobile Number Not Registerd')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // to Update the record

        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update Employee set Name='" + TextBox2.Text + "',Father_Name='" + TextBox3.Text + "',Mother_Name='" + TextBox4.Text + "',Email_ID='" + TextBox5.Text + "',Permanent_Address='" + TextBox6.Text + "',ID_Proof='" + TextBox7.Text + "',Designation='" + TextBox8.Text + "',Working_Status='"+TextBox9.Text+"' where Mobile_Number='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Updated')</script>");
            SqlDataSource1.SelectCommand = "select * from Employee";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // to Delete the record

        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "insert into Leaved_Employee values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            cmd.ExecuteNonQuery();
            cmd.CommandText = "delete Employee where Mobile_Number='" + TextBox1.Text + "'";
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Record Deleted')</script>");
            SqlDataSource1.SelectCommand = "select * from student";
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
    }
}
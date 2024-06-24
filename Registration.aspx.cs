using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
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
         // to Registration
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
        {
            try
            {

                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from login";
                SqlDataReader dr = cmd.ExecuteReader();
                int k = 0;
                string us;
                while (dr.Read())
                {
                    us = dr.GetValue(0).ToString();
                    if (us == TextBox1.Text)
                    {
                        k = 1;
                        break;
                    }
                }
                conn.Close();
                conn.Open();
                if (k == 0)
                {
                    cmd.CommandText = "insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('User Registered Successfully')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Username Alarady Exist')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Please Enter All Data')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // ReRegistration
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string us;
            while (dr.Read())
            {
                us = dr.GetValue(0).ToString();
                if (us == TextBox1.Text)
                {
                    k = 1;
                    break;
                }
            }
            conn.Close();
            conn.Open();
            if (k == 1)
            {
                cmd.CommandText = "update login set Passwords='" + TextBox2.Text + "',counters='" + TextBox3.Text + "' where id='" + TextBox1.Text + "'";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('User Registred')</script>");
            }
            else
            {
                Response.Write("<script>alert('Username not Registred')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Login.aspx','_self')</script>");
    }
}
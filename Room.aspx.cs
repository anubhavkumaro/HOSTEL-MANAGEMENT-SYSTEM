using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Room : System.Web.UI.Page
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
        if (TextBox1.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Room where Room_No=" + TextBox1.Text + "";
                SqlDataReader dr = cmd.ExecuteReader();
                int k = 0;
                string Ro;
                while (dr.Read())
                {
                    Ro = dr.GetValue(0).ToString();
                    if (Ro == TextBox1.Text)
                    {
                        k = 1;
                        break;
                    }
                }
                conn.Close();
                conn.Open();
                if (k == 1)
                {
                    Label5.Text = "Room Number Already Exist";
                }
                else
                {
                    Label5.Text = "";
                    string d;
                    if (CheckBox1.Checked)
                    {
                        d = "Yes";
                    }
                    else
                    {
                        d = "No";
                    }

                    cmd.CommandText = "insert into Room values('" + TextBox1.Text + "','" + d + "','No')";
                    cmd.ExecuteNonQuery();
                    SqlDataSource1.SelectCommand = "select * from Room";
                    Response.Write("<script>alert('Room Number Saved')</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

        }
        else
        {
            Response.Write("<script>alert('Fill Room Number')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from Room where Room_No='" + TextBox2.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                int k = 0;
                string ro;
                while (dr.Read())
                {
                    ro = dr.GetValue(0).ToString();
                    if (ro == TextBox2.Text)
                    {
                        k = 1;
                        break;
                    }
                }
                conn.Close();
                conn.Open();
                if (k == 1)
                {
                    Label6.Text = "";
                    SqlDataSource1.SelectCommand = "select * from Room where Room_No='" + TextBox2.Text + "'";
                }
                else
                {
                    Label6.Text = "Room Number Not Found";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Fill Room Number')</script>");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "delete Room where Room_No='" + TextBox2.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from Room";
                Response.Write("<script>alert('Record Deleted')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        else
        {
            Response.Write("<script>alert('Fill Room Number')</script>");
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        try
        {
            string s;
            if (CheckBox2.Checked)
            {
                s = "Yes";
            }
            else
            {
                s = "No";
            }
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update Room set RoomStatus='" + s + "' where Room_No='" + TextBox2.Text + "'";
            cmd.ExecuteNonQuery();
            SqlDataSource1.SelectCommand = "select * from Room where Room_No='" + TextBox2.Text + "'";
            Response.Write("<script>alert('Record Updated')</script>");
        }
        catch(Exception ex)
        {
            Response.Write(ex.ToString());
        }
            
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Dashboard.aspx','_self')</script>");
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using System.Data.SqlClient;
using System.Data;


public partial class StudentFees : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Search to Record
        if (TextBox2.Text != "")
        {

            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from student where Mobile_Number='" + TextBox2.Text + "'";
                SqlDataReader dr = cmd.ExecuteReader();
                SqlDataSource1.SelectCommand = "select * from student_fee where Mobile_Number='" + TextBox2.Text + "'";
                int k = 0;
                while (dr.Read())
                {
                    TextBox2.Text = dr.GetValue(0).ToString();
                    TextBox3.Text = dr.GetValue(1).ToString();
                    TextBox4.Text = dr.GetValue(4).ToString();
                    TextBox5.Text = dr.GetValue(9).ToString();
                    k = 1;

                }
                if (k == 0)
                {
                    Response.Write("<script>alert('Mobile Number not Register')</script>");
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
        // Pay and Save the Record
        if (TextBox6.Text != "" && TextBox7.Text != "" && TextBox9.Text != "")
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "insert into Student_Fee values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox9.Text + "','" + TextBox7.Text + "')";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from Student_Fee where Mobile_Number='" + TextBox2.Text + "'";
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

    protected void Button4_Click(object sender, EventArgs e)
    {
        int s = 0;

        s = int.Parse(DropDownList1.SelectedItem.ToString()) - int.Parse(TextBox9.Text);
        TextBox7.Text = s.ToString();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        // to Update The Record
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Student_Fee where Month1='" + TextBox6.Text + "'";
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
                cmd.CommandText = "update Student_Fee set Month_Pay_Amount='" + DropDownList1.SelectedValue + "',Today_Pay_Amount='" + TextBox9.Text + "',Dues_Amount='" + TextBox7.Text + "' where Month1='" + TextBox6.Text + "'";
                cmd.ExecuteNonQuery();
                SqlDataSource1.SelectCommand = "select * from Student_Fee where Month1='" + TextBox6.Text + "'";
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
}
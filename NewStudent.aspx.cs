using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class NewStudent : System.Web.UI.Page
{
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Hostel.mdf;Integrated Security=True");
        if (conn.State == ConnectionState.Open)
        {
            conn.Close();
        }
        //conn.Open();
        if (!IsPostBack == true)
        {
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select Room_No from Room where Booked='No' and RoomStatus='Yes'";
                SqlDataReader dr = cmd.ExecuteReader();
               
                while (dr.Read())
                {
                    DropDownList1.Items.Add(dr.GetValue(0).ToString());
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "")
        {
            // To Save the Record
            try
            {
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandText = "select * from student where Mobile_Number='" + TextBox1.Text + "'";
                SqlDataReader dr=cmd.ExecuteReader();
                int k=0;
                string mo;
                while(dr.Read())
                {
                    mo=dr.GetValue(0).ToString();
                    if(mo==TextBox1.Text)
                    {
                        k=1;
                        break;
                    }
                }
                conn.Close();
                conn.Open();
                if(k==0)
                {
                   
                    cmd.CommandText = "select * from student where Room_Number='" + DropDownList1.SelectedValue + "'";
                    SqlDataReader ds = cmd.ExecuteReader();
                    int f = 0;
                    string ro;
                    while (ds.Read())
                    {
                        ro = ds.GetValue(8).ToString();
                        if (ro == DropDownList1.SelectedValue)
                        {
                            f = 1;
                            break;
                        }
                    }
                    conn.Close();
                    conn.Open();
                    if (f == 0)
                    {
                        cmd.CommandText = "insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','"+TextBox9.Text+"','" + DropDownList1.SelectedValue + "')";
                        cmd.ExecuteNonQuery();
                        cmd.CommandText = "update room set Booked='" + DropDownList2.SelectedValue + "' where Room_No='" + DropDownList1.SelectedValue + "'";
                        cmd.ExecuteNonQuery();
                       
                        Response.Write("<script>alert('Record Saved')</script>");
                    
                        Response.Write("<script>window.open('NewStudent.aspx','_self')</script>");
                        SqlDataSource2.SelectCommand = "select * from Room";
                        SqlDataSource1.SelectCommand = "select * from student";
                     
                        
                    }
                    else
                    {
                        Response.Write("<script>alert('Room Number Alarady Booked')</script>");
                    }
                
                }
                else
                {
                    Response.Write("<script>alert('Mobile Number Alarady Exist')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
                
            }
        
        else
        {
            Response.Write("<script>alert('Fill all Required Data')</script>");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Dashboard.aspx','_self')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Login : System.Web.UI.Page
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
        // to Admin_Login
        try
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from login where ID='Admin'";
            SqlDataReader dr = cmd.ExecuteReader();
            int k = 0;
            string id, pas;
            while (dr.Read())
            {
                id = dr.GetValue(0).ToString();
                pas = dr.GetValue(1).ToString();
                if (id == TextBox1.Text && pas == TextBox2.Text)
                {
                    k = 1;
                    break;
                }
            }
            if (k == 1)
            {
                
                    Response.Write("<script>window.open('Registration.aspx','_self')</script>");
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Label5.Text = "Invaild Id and Password";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.ToString());
        }
    }
}
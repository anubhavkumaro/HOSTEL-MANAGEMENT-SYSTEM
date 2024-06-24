using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Room.aspx','_self')</script>");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        
        Response.Write("<script>window.open('Login.aspx','_self')</script>");
        

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Update-Delete-Student.aspx','_self')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('StudentFees.aspx','_self')</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('NewStudent.aspx','_self')</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('AllStudentLiving.aspx','_self')</script>");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('LeavedStudent.aspx','_self')</script>");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('NewEmployee.aspx','_self')</script>");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('UpdateDeleteEmployee.aspx','_self')</script>");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Employee_Payment.aspx','_self')</script>");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('AllEmployeeWorking.aspx','_self')</script>");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Leaved_Employee.aspx','_self')</script>");
    }
}
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateDeleteEmployee.aspx.cs" Inherits="UpdateDeleteEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UpdateDeleteEmployee</title>
    <link href="UpdateDeleteEmployeeCss1.Css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 510px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 60px;
        }
        .auto-style8 {
            width: 15px;
        }
        .auto-style10 {
            width: 85px;
        }
        .auto-style11 {
            width: 77px;
        }
        body {
            background-image: url("hostel.jpg");
            background-size: cover;
        }
        .button {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            border-radius: 500px;
            transition-property: background-color,border-color,color,box-shadow,filter;
            transition-duration: .3s;
            border: 1px solid transparent;
            letter-spacing: 2px;
            min-width: 160px;
            text-transform: uppercase;
            white-space: normal;
            font-weight: 700;
            text-align: center;
            padding: 8px 10px;
            color: #fff;
            background-color: #1ED760;
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
                    .button1 {
            display: inline-block;
            outline: none;
            cursor: pointer;
            font-size: 14px;
            line-height: 1;
            border-radius: 500px;
            transition-property: background-color,border-color,color,box-shadow,filter;
            transition-duration: .3s;
            border: 1px solid transparent;
            letter-spacing: 2px;
            min-width: 160px;
            text-transform: uppercase;
            white-space: normal;
            font-weight: 700;
            text-align: center;
            padding: 8px 10px;
            color: #fff;
            background-color: rgb(252, 127, 127);
            }
                    .button1:hover{
                        transform: scale(1.04);
                        background-color: rgb(255, 0, 0);
                    }
                    
        .auto-style12 {
            width: 48px;
        }
                    
        .auto-style13 {
            width: 14px;
        }
                    
        .auto-style14 {
            width: 46px;
        }
                    
    </style>
    <script>
        function acceptonlynum(evt) {
            a = evt.keyCode
            k = document.getElementById("TextBox1").value
            if (k.length == 10) {
                return false;
            }
            if (a < 48 || a > 57) {
                return false;

            }
            return true;


        }
        function acceptonlychar(evt) {
            a = evt.keyCode
            if ((a < 65 || a > 122) || (a > 91 && a <= 96)) {
                return false;

            }
            return true;
        }
    </script>
</head>
<body class="b">

    <form id="form1" runat="server">
    <div class="UpdateDeleteEmployee">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style8"></td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <th class="auto-style2" colspan="3">
                    <asp:Label ID="Label2" runat="server" Text="EMPLOYEE DETAILS MODIFICATION" Width="584px" Font-Size="X-Large" Font-Bold="True" ForeColor="White"></asp:Label>
                </th>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style8"></td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Mobile Number" Width="200px" ></asp:Label>
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Onkeypress="return acceptonlynum(event)" Width="200px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button4" runat="server" Text="Search" CssClass="button" Height="37px" Width="126px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style14"></td>
                <td class="auto-style8"></td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" Text="Name" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox2" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="White" Text="Father's Name" Width="200px"> </asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox3" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="White" Text="Mother's Name" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox4" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="White" Text="Emaild ID" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox5" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
            
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" ForeColor="White" Text="Permanent Address" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox6" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" ForeColor="White" Text="ID Proof" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox7" runat="server" Width="580px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
           
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" ForeColor="White" Text="Designation" Width="200px"></asp:Label>
                </td>
                <td colspan="4">
                    <asp:TextBox ID="TextBox8" runat="server" Width="580px" Height="30px" Font-Size="X-Large" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style10">&nbsp;</td>
       
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" ForeColor="White" Text="Working Status" Width="200px"></asp:Label>
                </td>
                <td class="auto-style12" colspan="4">
                    <asp:TextBox ID="TextBox9" runat="server" Width="580px" Height="30px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Update" Height="40px" Width="80px" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="button" Text="Delete" Height="40px" Width="80px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="New" CssClass="button1" Height="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

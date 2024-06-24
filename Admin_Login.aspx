<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            margin-top: 115px;
            margin-left: 430px;
            background-color:#9977E5;
        }
        .admin_login {
            width: 500px;
            height: 400px;
            background-image:url("Logbgs.jpg");
            background-size:cover;
            border-radius:40px;
        }
        .auto-style1 {
            width: 100%;
            height: 398px;
        }
        .auto-style2 {
            width: 421px;
        }
        .auto-style3 {
            width: 220px;
        }
        .auto-style4 {
            width: 164px;
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
            padding: 8px 40px;
            color:rgb(5, 5, 5);
            background-color:rgb(240, 250, 5);
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
        .auto-style5 {
            width: 220px;
            height: 24px;
        }
        .auto-style6 {
            width: 164px;
            height: 24px;
        }
        .auto-style7 {
            width: 421px;
            height: 24px;
        }
        .auto-style8 {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="admin_login">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Width="250px" Font-Names="Algerian" Font-Size="XX-Large" ForeColor="Red" Text="Admin Login"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    
                </td>
                <td class="auto-style2">
                    
                    <asp:Image ID="Image1" runat="server" Height="134px" ImageUrl="~/Logo.png" Width="147px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Username" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="250px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="250px" Height="30px" Font-Size="Large" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" CssClass="button" Height="40px" runat="server" OnClick="Button1_Click" Text="Login" />
                </td>
                <th class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                </th>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <th class="auto-style7">
                    <asp:LinkButton ID="LinkButton1" runat="server">Foraget Password</asp:LinkButton>
                </th>
                <td class="auto-style8"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

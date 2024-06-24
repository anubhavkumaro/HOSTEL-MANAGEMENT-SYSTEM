<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="DashboardCss1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 750px;
        }
        .auto-style4 {
            width: 62px;
        }
        .auto-style5 {
            width: 292px;
        }
        .auto-style6 {
            width: 656px;
        }
        .auto-style8 {
            width: 62px;
            height: 48px;
        }
        .auto-style9 {
            width: 292px;
            height: 48px;
        }
        .auto-style11 {
            text-align: right;
            width: 656px;
            height: 48px;
        }
        .auto-style12 {
            width: 62px;
            height: 44px;
        }
        .auto-style13 {
            width: 292px;
            height: 44px;
        }
        .auto-style14 {
            text-align: right;
            width: 656px;
            height: 44px;
        }
        .auto-style15 {
            width: 62px;
            height: 27px;
        }
        .auto-style16 {
            width: 292px;
            height: 27px;
        }
        .auto-style17 {
            height: 27px;
        }
        .auto-style18 {
            width: 301px;
            height: 44px;
        }
        .auto-style19 {
            width: 301px;
            height: 48px;
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
            padding: 12px 40px;
            color: #fff;
            background-color: rgb(252, 127, 127);
            }
                    .button1:hover{
                        transform: scale(1.04);
                        background-color: rgb(255, 0, 0);
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Dashboard">
    
        
    
        `<table class="auto-style1">
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="Button12" runat="server" Cssclass="button1" Font-Size="X-Large"  Text="LogOut" OnClick="Button12_Click" />
                </td>
                <td class="auto-style11">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <th class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="NAVIGATOR BAR" Font-Bold="True" Width="250px" Font-Size="X-Large" Font-Overline="False" ></asp:Label>
                </th>
                <th colspan="2">
                   <asp:Label ID="Label2" runat="server" Text="Hostel Management System"></asp:Label>
                </th>
                <th>
                    &nbsp;</th>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <th class="auto-style16">
                </th>
                <th colspan="2" class="auto-style17">
                </th>
                <th class="auto-style17">
                    &nbsp;</th>
            </tr>
            <tr>
                <td  >&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" Text="Manage Rooms" Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button1_Click" />
                </td>
                <td colspan="2" rowspan="12"><asp:Image ID="Image1" runat="server" Height="694px" ImageUrl="~/hostel.jpg" Width="1074px" /></td>
                <td rowspan="12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button2" runat="server" Text="New Student"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button3" runat="server" Text="Update &amp; Delete Student"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button4" runat="server" Text="Student Fees"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button4_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button5" runat="server" Text="All Student Living"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button5_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button6" runat="server" Text="Leaved Students"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button6_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button7" runat="server" Text="New Employee"  Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button7_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button8" runat="server" Text="Update &amp; Delete Employee" Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button8_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button9" runat="server" Text="Employee Payment" Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button9_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button10" runat="server" Text="All Employee Working" Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button10_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="Button11" runat="server" Text="Leaved Employee" Width="230px" Height="40px" Font-Size="Large" BorderStyle="None" OnClick="Button11_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
    
        
    
    </div>
    </form>
</body>
</html>

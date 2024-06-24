<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewEmployee.aspx.cs" Inherits="NewEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="NewEmployeeCss1.Css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 510px;
        }
        .auto-style2 {
            width: 207px;
        }
        .auto-style3 {
            width: 10px;
        }
        #Select1 {
            width: 619px;
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
            padding: 8px 40px;
            color: #fff;
            background-color: rgb(252, 127, 127);
            }
                    .button1:hover{
                        transform: scale(1.04);
                        background-color: rgb(255, 0, 0);
                    }
        body {
            background-image: url("hostel.jpg");
            background-size: cover;
        }
        .auto-style4 {
            width: 10px;
            height: 8px;
        }
        .auto-style5 {
            width: 207px;
            height: 8px;
        }
        .auto-style6 {
            height: 8px;
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
<body>
    <form id="form1" runat="server">
    <div class="NewEmployee">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server"  Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <th colspan="3">
                    <asp:Label ID="Label1" runat="server" Text="NEW EMPLOYEE REGISTRATION" Font-Bold="True" Font-Size="XX-Large" Font-Italic="True"></asp:Label>
                </th>
                <td>&nbsp;</td>
                
                <td></td>
                
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Mobile Number " Width="200px" ForeColor="White"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox1" runat="server" Onkeypress="return acceptonlynum(event)" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Name" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Father's Name" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Mother's Name" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Emaild ID" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="Permanent Address" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="ID Proof" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="619px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Designation" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3" class="auto-style6">
                    
                    
                       
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="625px" Height="35px">
                        <asp:ListItem>Hostel Incharge</asp:ListItem>
                        <asp:ListItem>Cleaning Staff</asp:ListItem>
                        <asp:ListItem>Mess Staff</asp:ListItem>
                        <asp:ListItem>Accounts Manager</asp:ListItem>
                    </asp:DropDownList>
                    
                    
                       
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="Label11" runat="server" Font-Size="X-Large" Text="Date" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3" class="auto-style6">
                    
                    
                       
                    <asp:TextBox ID="TextBox8" runat="server" Width="619px" Height="30px" Font-Size="Large" TextMode="DateTimeLocal"></asp:TextBox>
                    
                    
                       
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" ForeColor="White" Text="Working Status" Width="200px"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" Height="30px">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <th>
                    <asp:Button ID="Button1" runat="server" Text="Save" Height="31px" Width="91px" OnClick="Button1_Click" CssClass="button" />
                </th>
                <th>
                    <asp:Button ID="Button2" runat="server" Text="New" Height="31px" Width="91px" CssClass="button1" OnClick="Button2_Click"/>
                </th>
                <td>&nbsp;</td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

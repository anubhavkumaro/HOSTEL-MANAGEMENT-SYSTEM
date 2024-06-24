<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update-Delete-Student.aspx.cs" Inherits="Update_Delete_Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Update-Delete-Student-Css1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 556px;
        }
        .auto-style2 {
            width: 217px;
        }
        .auto-style3 {
            width: 63px;
        }
        .auto-style4 {
            width: 29px;
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
    <div class="Update-Delete-Student">
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Mobile Number" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Onkeypress="return acceptonlynum(event)" Width="254px" Height="30px" Font-Size="Large" ></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="Search" Font-Size="X-Large" CssClass="button" Height="39px" Font-Italic="True" Width="114px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Name" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Father's Name" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Mother's Name" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Email ID" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Permanent Address" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox6" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="College Name" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox7" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="ID Proof" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox8" runat="server" Width="630px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Room Number" Font-Size="X-Large" Width="210px" Font-Bold="True" ForeColor="White"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox9" runat="server" Width="630px" Height="30px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td colspan="2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button4" runat="server" CssClass="button1" Text="New" Font-Size="X-Large" Width="114px" OnClick="Button4_Click" />
                </td>
                <th class="auto-style3">
                    <asp:Button ID="Button2" runat="server" Text="Update" CssClass="button" Font-Size="X-Large" Width="114px" Font-Italic="True" OnClick="Button2_Click" />
                </th>
                <th class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="button"  Font-Size="X-Large" Width="114px" Font-Italic="True" OnClick="Button3_Click" />
                </th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
    </form>
</body>
</html>

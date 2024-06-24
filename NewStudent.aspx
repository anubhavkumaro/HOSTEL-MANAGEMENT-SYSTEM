<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewStudent.aspx.cs" Inherits="NewStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NewStudent</title>
    <link href="NewStudent1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 493px;
        }
        .auto-style2 {
            width: 233px;
        }
        .auto-style3 {
            width: 486px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            width: 233px;
            height: 48px;
        }
        .auto-style6 {
            text-align: right;
            width: 486px;
            height: 48px;
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
    <div class="NewStudent">
    
        <table class="auto-style1">
            
            <tr>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style91">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style92">
                    &nbsp;</td>
                <td class="auto-style94">&nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Mobile Number" width="200px" Font-Size="X-Large" ForeColor="White" ></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Onkeypress="return acceptonlynum(event)" Width="500px" Height="30px" Font-Size="X-Large" ClientIDMode="Static" ></asp:TextBox>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Name" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Father's Name" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Mother's Name" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Email ID" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Permanent Address" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="College Name" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="ID Proof" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox8" runat="server" Width="500px" Height="30px" Font-Size="X-Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Date" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox9" runat="server" Width="500px" Height="30px" Font-Size="X-Large" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Room Number" width="200px" Font-Size="X-Large" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="505px" Height="30px" Font-Size="X-Large" AutoPostBack="True"  >
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" ForeColor="White" Text="Room Book"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="505px" Height="30px" Font-Size="X-Large">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button2" runat="server" Font-Italic="True" cssclass="button1" Font-Size="X-Large" ForeColor="White" OnClick="Button2_Click" Text="New" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Save"  Font-Size="X-Large" Font-Italic="True" ForeColor="White" OnClick="Button1_Click" CssClass="button"/>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
    </form>
</body>
</html>

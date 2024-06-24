<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentFees.aspx.cs" Inherits="StudentFees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StudentFeesCss1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 182px;
        }
        .auto-style4 {
            width: 89px;
        }
        .auto-style6 {
            width: 156px;
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
                    .button2 {
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
                    .button2:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
        .auto-style7 {
            width: 268435456px;
        }
    </style>
    <script>
        function acceptonlynum(evt) {
            a = evt.keyCode
            k = document.getElementById("TextBox2").value
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
<body >
    <form id="form1" runat="server">
    <div class="StudentFees">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style6" colspan="3">
                    <asp:Label ID="Label9" runat="server" Width="500px" Text="STUDENT PAYMENT DETAILS" Font-Bold="True" Font-Names="Algerian"  Font-Size="XX-Large" ForeColor="#66FF33"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" Text="Mobile Number" Width="200px"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Onkeypress="return acceptonlynum(event)" Width="200px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" cssclass="button" Text="Search" Height="38px" Width="100px" Font-Size="Large" Font-Italic="True" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="White" Text="Name" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" Text="Emaild ID" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="White" Text="Room Number" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="White" Text="Month" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date" Width="642px" Height="30px" Font-Size="Large"></asp:TextBox>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" ForeColor="White" Text="Month Pay Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="650px" Height="35px" Font-Size="Large">
                        <asp:ListItem>5000</asp:ListItem>
                        <asp:ListItem>4500</asp:ListItem>
                        <asp:ListItem>7000</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" ForeColor="White" Text="Today Pay Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox9" runat="server" Width="642px" Height="30px" Font-Size="Large" ></asp:TextBox>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="White" Text="Dues Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="640px" Height="30px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="Button5" runat="server" Height="40px" OnClick="Button5_Click" cssclass="button" Text="Update" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="Button4" runat="server"  OnClick="Button4_Click" cssclass="button2" Height="40px" Text="Calculate Now" Width="191px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Pay" cssclass="button" Height="40px" Font-Size="Large" Font-Italic="True" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="New" Height="40px" cssclass="button1" Font-Size="Large" Font-Italic="True" OnClick="Button3_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" BackColor="White" CellPadding="4" Height="16px" style="margin-left: 23px; margin-top: 9px" Width="1007px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Emaild_ID" HeaderText="Emaild_ID" SortExpression="Emaild_ID" />
                <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
                <asp:BoundField DataField="Month1" HeaderText="Date Time" SortExpression="Month1" />
                <asp:BoundField DataField="Month_Pay_Amount" HeaderText="Month_Pay_Amount" SortExpression="Month_Pay_Amount" />
                <asp:BoundField DataField="Today_Pay_Amount" HeaderText="Today_Pay_Amount" SortExpression="Today_Pay_Amount" />
                <asp:BoundField DataField="Dues_Amount" HeaderText="Dues_Amount" SortExpression="Dues_Amount" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Student_Fee]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

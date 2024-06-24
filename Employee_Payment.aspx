<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee_Payment.aspx.cs" Inherits="Employee_Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Employee {
            width:1050px;
            height:800px;
            background-color:rgb(203, 39, 127);
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 215px;
        }
        .auto-style4 {
            height: 23px;
            width: 215px;
        }

* {
    margin:0;
    }
        .auto-style6 {
            width: 87px;
        }
        .auto-style7 {
            height: 23px;
            width: 87px;
        }
        .auto-style8 {
            width: 273px;
        }
        .auto-style9 {
            width: 36px;
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
            padding: 14px 40px;
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
            padding: 14px 40px;
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
            padding: 14px 10px;
            color: #fff;
            background-color: #1ED760;
            }
                    .button2:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
        #GridView1 {
            margin-left: 20px;
            margin-right: 20px;
        }
        * {
    margin:0;
    }
body {
    margin-top:50px;
    margin-left:150px;
    background-image:url("hostel.jpg");
    background-size:cover;

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
<body>
    <form id="form1" runat="server">
    <div class="Employee">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9" colspan="3">
                    <asp:Label ID="Label1" runat="server" Width="500px" Text="EMPLOYEE PAYMENT DETAILS" Font-Bold="True" Font-Names="Algerian"  Font-Size="XX-Large" ForeColor="#66FF33"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="White" Text="Mobile Number" Width="200px"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox2" runat="server" Onkeypress="return acceptonlynum(event)" Width="200px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="button" Text="Search" OnClick="Button1_Click" />
                </td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="White" Text="Name" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox3" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" Text="Emaild ID" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox4" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label9" runat="server" Font-Size="X-Large" Text="Designation" ForeColor="White" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox5" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="White" Text="Month" Width="200px"></asp:Label>
                </td>
                <td class="auto-style2" colspan="3">
                    <asp:TextBox ID="TextBox6" runat="server" Width="640px" Height="30px" Font-Size="Large" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label7" runat="server" Font-Size="X-Large" ForeColor="White" Text="Month Pay Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" ForeColor="White" Text="Today Pay Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox8" runat="server" Width="640px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label10" runat="server" Font-Size="X-Large" ForeColor="White" Text="Dues Amount" Width="200px"></asp:Label>
                </td>
                <td colspan="3">
                    <asp:TextBox ID="TextBox9" runat="server" Width="640px" Height="30px" Font-Size="Large" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Button5" CssClass="button" runat="server" Text="Update" OnClick="Button5_Click" />
                </td>
                <td class="auto-style9">
                    <asp:Button ID="Button2" CssClass="button2" runat="server" Text="Calculate Now" OnClick="Button2_Click" />
                </td>
                <td>
                    <asp:Button ID="Button3" CssClass="button" runat="server" Text="Pay" OnClick="Button3_Click" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button4" CssClass="button1" runat="server" Text="New" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1010px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Emaild_ID" HeaderText="Emaild_ID" SortExpression="Emaild_ID" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Month1" HeaderText="Month1" SortExpression="Month1" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee_Payment]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

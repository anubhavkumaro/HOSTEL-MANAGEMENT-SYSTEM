<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllEmployeeWorking.aspx.cs" Inherits="AllEmployeeWorking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .AllEmployee {
    width:1345px;
    height:650px;
    background-color:rgb(203, 39, 127);
    margin:2px;
}
        .auto-style1 {
            width: 100%;
        }
* {
    margin: 0;
    padding: 0;
}
        .auto-style2 {
            width: 210px;
        }
        .auto-style3 {
            width: 47px;
        }
        .auto-style4 {
            width: 110px;
        }
        .auto-style5 {
            width: 50px;
        }
        #GridView1 {
            margin-left:20px;
            margin-right:20px;
            margin-top:20px;
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
            padding: 10px 40px;
            color: #fff;
            background-color: #1ED760;
            }
                    .button:hover{
                        transform: scale(1.04);
                        background-color: #21e065;
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="AllEmployee">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <th colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Employee Working " Font-Names="Algerian" ForeColor="White"></asp:Label>
                </th>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" Height="35px">
                        <asp:ListItem>Mobile_Number</asp:ListItem>
                        <asp:ListItem>Name</asp:ListItem>
                        <asp:ListItem>Father_Name</asp:ListItem>
                        <asp:ListItem>Mother_Name</asp:ListItem>
                        <asp:ListItem>Email_ID</asp:ListItem>
                        <asp:ListItem>Permanent_Address</asp:ListItem>
                        <asp:ListItem>ID_Proof</asp:ListItem>
                        <asp:ListItem>Designation</asp:ListItem>
                        <asp:ListItem>All</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" Font-Size="Large" CssClass="button" OnClick="Button1_Click1" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="1304px">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" SortExpression="Mother_Name" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" SortExpression="Permanent_Address" />
                <asp:BoundField DataField="ID_Proof" HeaderText="ID_Proof" SortExpression="ID_Proof" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="EDate" HeaderText="EDate" SortExpression="EDate" />
                <asp:BoundField DataField="Working_Status" HeaderText="Working_Status" SortExpression="Working_Status" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Leaved_Employee.aspx.cs" Inherits="Leaved_Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .LeavedEmp {
             width: 1345px;
            height: 650px;
            background-color:rgb(203, 39, 127);
        }
        .auto-style1 {
            width: 100%;
        }
* {
    margin:0;
    padding: 0;
}
        #GridView1 {
            margin-left: 20px;
            margin-right: 20px;
            margin-top: 20px;
        }
        body {
            margin: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="LeavedEmp">
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <th>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Vaccent Employee Details" Font-Names="Algerian" ForeColor="White"></asp:Label>
                </th>
                <td>&nbsp;</td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Width="1303px">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" SortExpression="Mother_Name" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" SortExpression="Permanent_Address" />
                <asp:BoundField DataField="ID_Proof" HeaderText="ID_Proof" SortExpression="ID_Proof" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Leaved_Employee]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

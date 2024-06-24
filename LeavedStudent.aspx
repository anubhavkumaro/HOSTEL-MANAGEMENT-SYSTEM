<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeavedStudent.aspx.cs" Inherits="LeavedStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
#Label1 {
    font-family:Algerian;
    color:white;
}
* {
    margin:0;
    padding: 0;
}
        body {
            background-image: url("hostel.jpg");
            background-size: cover;
        }
        #GridView1 {
            margin-left:20px;
            margin-right:20px;
            margin-top:20px;
        }
        body {
    margin-top:0px;
    margin-left:0px;
}
        .auto-style2 {
            width: 972px;
        }
        .auto-style3 {
            width: 44px;
        }
        .LeavedStudent {
    width:1345px;
    height:650px;
    background-color:rgb(203, 39, 127);
    margin:2px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="LeavedStudent">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#66FF33">Home</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <th class="auto-style3">
                    &nbsp;</th>
                <th class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Vaccent Student Details"></asp:Label>
                </th>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" Height="31px" Width="1304px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" SortExpression="Mother_Name" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" SortExpression="Permanent_Address" />
                <asp:BoundField DataField="College_Name" HeaderText="College_Name" SortExpression="College_Name" />
                <asp:BoundField DataField="ID_Proof" HeaderText="ID_Proof" SortExpression="ID_Proof" />
                <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <sortedascendingcellstyle backcolor="#FEFCEB" />
            <sortedascendingheaderstyle backcolor="#AF0101" />
            <sorteddescendingcellstyle backcolor="#F6F0C0" />
            <sorteddescendingheaderstyle backcolor="#7E0000" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Leavedstudent]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

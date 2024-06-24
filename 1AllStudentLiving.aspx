<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1AllStudentLiving.aspx.cs" Inherits="AllStudentLiving" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="AllStudentLivingCss1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 62px;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 222px;
        }
        .auto-style4 {
            width: 72px;
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
    <script>
        function prints() {
            window.print()
        }
    </script>
</head>
<body onload="prints()" >
    <form id="form1" runat="server">
    <div class="AllStudentLiving1">
    
        <table class="auto-style1">
            <tr>
                <th class="auto-style4">
                    &nbsp;</th>
                <th class="auto-style2">
                    &nbsp;</th>
                <th class="auto-style3">
                    &nbsp;</th>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
      
        <asp:GridView  ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" Height="147px" Width="1304px">
            <Columns>
                <asp:BoundField DataField="Mobile_Number" HeaderText="Mobile_Number" SortExpression="Mobile_Number" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" SortExpression="Mother_Name" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" SortExpression="Email_ID" />
                <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" SortExpression="Permanent_Address" />
                <asp:BoundField DataField="College_Name" HeaderText="College_Name" SortExpression="College_Name" />
                <asp:BoundField DataField="ID_Proof" HeaderText="ID_Proof" SortExpression="ID_Proof" />
                <asp:BoundField DataField="S_Date" HeaderText="Student Date" SortExpression="S_Date" />
                <asp:BoundField DataField="Room_Number" HeaderText="Room_Number" SortExpression="Room_Number" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Room.aspx.cs" Inherits="Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="roomCss1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 291px;
        }
        .auto-style2 {
            width: 204px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            height: 39px;
            width: 235px;
        }
        .auto-style6 {
            width: 206px;
            height: 39px;
        }
        .auto-style7 {
            height: 25px;
            width: 235px;
        }
        .auto-style8 {
            width: 204px;
            height: 25px;
        }
        .auto-style9 {
            width: 206px;
            height: 25px;
        }
        .auto-style10 {
            width: 237px;
        }
        .auto-style11 {
            height: 25px;
            width: 379px;
        }
        .auto-style13 {
            width: 101px;
        }
        .auto-style15 {
            height: 39px;
            width: 101px;
        }
        .auto-style16 {
            height: 47px;
            width: 235px;
        }
        .auto-style18 {
            width: 206px;
            height: 47px;
        }
        .auto-style19 {
            width: 101px;
            height: 47px;
        }
        .auto-style22 {
            height: 25px;
            width: 3148px;
        }
        .auto-style23 {
            width: 379px;
        }
        .auto-style24 {
            height: 47px;
            width: 379px;
        }
        .auto-style25 {
            height: 39px;
            width: 379px;
        }
        .auto-style29 {
            width: 3148px;
        }
        .auto-style30 {
            width: 3148px;
            height: 47px;
        }
        .auto-style31 {
            height: 39px;
            width: 3148px;
        }
        .auto-style32 {
            height: 25px;
            width: 237px;
        }
        .auto-style33 {
            height: 47px;
            width: 237px;
        }
        .auto-style34 {
            height: 39px;
            width: 237px;
        }
        .auto-style35 {
            width: 556px;
        }
        .auto-style36 {
            height: 47px;
            width: 556px;
        }
        .auto-style37 {
            height: 39px;
            width: 556px;
        }
        .auto-style38 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="room">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style35">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#66FF33" OnClick="LinkButton1_Click">Home</asp:LinkButton>
                </td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8" colspan="2">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Width="300px" Font-Size="XX-Large" Text="ADD NEW ROOM" Font-Names="Algerian" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style22"></td>
                <td class="auto-style11"></td>
                <td class="auto-style32"></td>
            </tr>
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style35">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Room Number" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="30px" Font-Size="Large" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style29">
                    <asp:Label ID="Label3" runat="server" Text="Activate or Deactivate" Font-Size="Large" ForeColor="White"></asp:Label>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" Font-Size="Large" ForeColor="White" />
                </td>
                <td class="auto-style23">
                    <asp:Button ID="Button1" runat="server" Text="Add" Width="80px" Height="35px" Font-Size="Large" OnClick="Button1_Click" />
                </td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style35">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label5" runat="server" ForeColor="Red" BackColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style2" colspan="3">
                    <asp:Label ID="Label7" runat="server" Text="UPDATE OR DELETE ROOM" Width="500px" Font-Size="XX-Large" Font-Bold="True" Font-Names="Algerian" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style29">&nbsp;</td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style35">
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Room Number" ForeColor="White"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="30px" Font-Size="Large"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" Text="Search" Width="80px" Height="35px" Font-Size="Large" OnClick="Button2_Click" />
                </td>
                <td class="auto-style29">
                    <asp:Label ID="Label4" runat="server" Text="Activate or Deactivate" Font-Size="Large" ForeColor="White"></asp:Label>
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Yes" Font-Size="Large" ForeColor="White" />
                </td>
                <td class="auto-style23">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style36"></td>
                <td class="auto-style18">
                    <asp:Label ID="Label6" runat="server" ForeColor="Red" BackColor="White" Font-Bold="True"></asp:Label>
                </td>
                <td class="auto-style19"></td>
                <td class="auto-style30">
                    <asp:Button ID="Button3" runat="server" Text="Delete" Width="80px" Height="35px" Font-Size="Large" OnClick="Button3_Click" />
                </td>
                <td class="auto-style24">
                    <asp:Button ID="Button4" runat="server" Text="Update" Width="80px" Height="35px" Font-Size="Large" OnClick="Button4_Click" />
                </td>
                <td class="auto-style33"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style37"></td>
                <td class="auto-style6"></td>
                <td class="auto-style15"></td>
                <td class="auto-style31"></td>
                <td class="auto-style25"></td>
                <td class="auto-style34"></td>
            </tr>
        </table>
    
        <asp:GridView ID="GridView1" runat="server" Width="776px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" Height="97px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="Room_No" HeaderText="Room_No" SortExpression="Room_No" />
                <asp:BoundField DataField="RoomStatus" HeaderText="RoomStatus" SortExpression="RoomStatus" />
                <asp:BoundField DataField="Booked" HeaderText="Booked" SortExpression="Booked" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

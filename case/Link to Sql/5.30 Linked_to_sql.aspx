<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5.30 Linked_to_sql.aspx.cs" Inherits="_5_30_Linked_to_sql" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: solid; border-color: #C0C0C0; width:45%; background-color: #C0C0C0;" align="center">
                <tr align="center">
                    <td colspan="2" style="background-color: #FFFFFF">
                        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="30pt" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr style="height: 80px">
                    <td align="center" style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="20pt" ForeColor="Blue"></asp:Label>
                    </td>
                    <td style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="20pt" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="height: 80px">
                    <td align="center" style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Size="20pt" ForeColor="Blue"></asp:Label>
                    </td>
                    <td style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 80px">
                    <td align="center" style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Size="20pt" ForeColor="Blue"></asp:Label>
                    </td>
                    <td style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr style="height: 80px">
                    <td align="center" style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Size="20pt" ForeColor="Blue"></asp:Label>
                    </td>
                    <td style="border-style: solid; border-color: #C0C0C0; background-color: #C0C0C0">
                        <asp:Image ID="Image1" runat="server" Height="36px" Width="36px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

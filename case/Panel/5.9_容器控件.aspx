<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5.9_容器控件.aspx.cs" Inherits="_5_9_容器控件" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 326px;
            height: 75px;
            border: 1px double #808080;
        }
        .auto-style2 {
            position: fixed;
            left: 395px;
            top: 17px;
            width: 350px;
            height: 100px;
            border: 1px dashed #808080;
        }
        .auto-style3 {
            position: fixed;
            left: 14px;
            top: 166px;
            width: 350px;
            height: 100px;
            border: 1px dashed #808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1" align="center">
                <asp:Panel ID="Panel1" runat="server" Height="75px" Width="326px">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                </asp:Panel>
            </div>
            <br />
            <div align="center">
                <asp:Panel ID="Panel2" runat="server" Height="100px" Width="350px">
                    <div class="auto-style2">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <br />
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>上古卷轴</asp:ListItem>
                            <asp:ListItem>死亡搁浅</asp:ListItem>
                            <asp:ListItem>合金装备</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </asp:Panel>
            </div>
            <div align="center">
                <asp:Panel ID="Panel3" runat="server" Height="100px" Width="350px">
                    <div class="auto-style3">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>KANS</asp:ListItem>
                            <asp:ListItem>Danz</asp:ListItem>
                            <asp:ListItem>PROYA</asp:ListItem>
                            <asp:ListItem>MAXAM</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>

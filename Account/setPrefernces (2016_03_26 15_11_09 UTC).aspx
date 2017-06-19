<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setPrefernces.aspx.cs" Inherits="Account_setPrefernces" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Preferences</title>
    <link href="../Style/General.css" rel="stylesheet" />
    <link href="../Style/setPre.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="question">
                <h1>Under Development</h1>
                <asp:Repeater ID="repeat1" runat="server">
                    <HeaderTemplate>
                        <table border="0">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td colspan="2">
                                <%# Container.DataItem %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RadioButton ID="yesRadio" runat="server" Text="Yes" OnCheckedChanged="yesRadio_CheckedChanged" />
                            </td>
                            <td>
                                <asp:RadioButton ID="noRadio" runat="server" Text="No" OnCheckedChanged="noRadio_CheckedChanged" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

            </div>
            <br />
            <asp:Button ID="Save" runat="server" Text="Save and Exit" OnClick="Save_Click" CssClass="bttns" />
            <asp:Button ID="Next" runat="server" Text="Next" OnClick="Next_Click" CssClass="bttns" />
        </div>
    </form>
</body>
</html>

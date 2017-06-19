<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewPreferences.aspx.cs" Inherits="Account_viewPreferences" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Preferences</title>
    <link href="../Style/General.css" rel="stylesheet" />
    <link href="../Style/viewPre.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="container">
                <div id="likes">
                    <asp:Repeater ID="repeat1" runat="server">
                    <HeaderTemplate>
                        <table border="0">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Container.DataItem %>
                            </td>
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                </div>
                <div id="dislikes">
                    <asp:Repeater ID="repeat2" runat="server">
                    <HeaderTemplate>
                        <table border="0">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%# Container.DataItem %>
                            </td>
                        </tr>

                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                </div>
            </div>
            <asp:Button ID="update" runat="server" Text="Update Preferences" OnClick="update_Click" CssClass="bttns" />
            <asp:Button ID="change" runat="server" Text="Change Preferences" OnClick="change_Click" CssClass="bttns" />
        </div>
    </form>
</body>
</html>

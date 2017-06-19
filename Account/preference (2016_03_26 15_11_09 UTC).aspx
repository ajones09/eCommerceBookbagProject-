<%@ Page Language="C#" AutoEventWireup="true" CodeFile="preference.aspx.cs" Inherits="Account_preference" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Preferences</title>
    <link href="../Style/Preferences.css" type="text/css" rel="stylesheet" />
    <link href="../Style/General.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:AccessDataSource ID="info" runat="server"></asp:AccessDataSource>
        <asp:Panel ID="firstTime" runat="server">
            <p>
                There Are Currently No Set Preferences Please Click The Button To Begin.
            </p>
            <asp:Button ID="setPrefernces" runat="server" Text="Set Prefernces" OnClick="setPrefernces_Click" CssClass="bttns" />
            <asp:Button ID="return" runat="server" Text="Go back to Account" OnClick="return_Click" CssClass="bttns" />
        </asp:Panel>
    </form>
</body>
</html>

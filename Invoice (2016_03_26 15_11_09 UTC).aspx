<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Invoice.aspx.cs" Inherits="Invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
    <link href="Style/General.css" rel="stylesheet" />
    <link href="Style/invoice.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="invoicePanel" runat="server">
                <asp:Table runat="server" ID="invoiceTbl">
                    <asp:TableRow ID="CompanyInfo">
                        <asp:TableCell>

                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow ID="ProductInfo">
                        <asp:TableCell>
                            <hr />
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table>
                                        <tr>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <td id="qty" >

                                    </td>
                                    <td id="product">

                                    </td>
                                    <td id="price">

                                    </td>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tr>
                                </table>

                                </FooterTemplate>
                            </asp:Repeater>
                            <hr />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="pricesTotals">
                        <asp:TableCell>

                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="customerInfo">
                        <asp:TableCell>

                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:Button ID="Button2" runat="server" Text="Button" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>

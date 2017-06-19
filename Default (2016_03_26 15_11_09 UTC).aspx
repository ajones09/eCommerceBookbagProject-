<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Home</title>
        <link href="Style/Home.css" rel="stylesheet" type="text/css" runat="server" />
</asp:Content>
<asp:Content ID="homeBody" ContentPlaceHolderID="body" Runat="Server">
     <div>
                <p>
                    Home page
                </p>
                <!-- Update the table to be linked to home, shop, Subscription, and Account pages-->
                <asp:Table runat="server"  CssClass="homeTbl" GridLines="Both">
                    <asp:TableRow>
                        <asp:TableCell CssClass="tblCell">
                            <div>
                                <asp:ImageButton runat="server" class="imageBttn"
                                    ID="shopButton" OnClick="shopButton_Click" />
                            </div>
                            <asp:Label runat="server">Shop</asp:Label>
                        </asp:TableCell>
                        <asp:TableCell CssClass="tblCell">
                            <div>
                                <asp:ImageButton runat="server" class="imageBttn"
                                    ID="sellButton" />
                            </div>
                            Sell
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="tblCell">
                            <div>
                                <asp:ImageButton runat="server" class="imageBttn"
                                    ID="miscButton" />
                            </div>
                            Misc.
                        </asp:TableCell>
                        <asp:TableCell CssClass="tblCell">
                            <div>
                                <asp:ImageButton runat="server" class="imageBttn"
                                    ID="etcButton" />
                            </div>
                            Etc.
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>    

</asp:Content>



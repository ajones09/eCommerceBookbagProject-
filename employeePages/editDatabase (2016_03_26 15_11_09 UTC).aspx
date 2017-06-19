<%@ Page Title="Edit Database" Language="C#" MasterPageFile="~/employeePages/employeeMasterPage.master" AutoEventWireup="true" CodeFile="editDatabase.aspx.cs" Inherits="employeePages_editDatabase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <asp:AccessDataSource runat="server"></asp:AccessDataSource>
    <div id="tableBar">
        <asp:Repeater ID="Repeater1" runat="server">
            <HeaderTemplate>
                <table border="0">
                    <tr>
            </HeaderTemplate>
            <ItemTemplate>
                <td>

                </td>
            </ItemTemplate>
            <FooterTemplate>
                </tr>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div id="gird">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
    <div id="tbl">
        <asp:Repeater ID="Repeater2" runat="server">
            <HeaderTemplate>
                <table border="0">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td>

                    </td>
                    <td>

                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>

    </div>

</asp:Content>


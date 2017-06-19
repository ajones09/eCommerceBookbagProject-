<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>In Progress</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <asp:textbox runat="server"></asp:textbox>
    <asp:Button ID="productsearchbut" runat="server" Text="SEARCH" />
</form>

<asp:ListView ID="ListView_Products" runat="server" 
              DataKeyNames="id"  
              DataSourceID="SqlDataSource1" 
              GroupItemCount="3">
   <EmptyDataTemplate>
      <table runat="server">
        <tr>
          <td>No data was returned.</td>
        </tr>
     </table>
  </EmptyDataTemplate>
  <EmptyItemTemplate>
     <td runat="server" />
  </EmptyItemTemplate>
  <GroupTemplate>
    <tr id="itemPlaceholderContainer" runat="server">
      <td id="itemPlaceholder" runat="server"></td>
    </tr>
  </GroupTemplate>
  <ItemTemplate>
    <td runat="server">
      <table border="0">
        <tr>
          <td>&nbsp</td>
          <td>
            <a href='ProductDetails.aspx?productID=<%# Eval("id") %>'>
               <%--<image src='Catalog/Images/Thumbs/<%# Eval("ProductImage") %>' 
                      width="100" height="75" border="0">--%>
            </a> &nbsp
          </td>
          <td>
            <a href='ProductDetails.aspx?productID=<%# Eval("id") %>'><span 
               class="ProductListHead"><%# Eval("name") %></span><br>
            </a>
            <span class="ProductListItem">
              <b>Special Price: </b><%# Eval("price", "{0:c}")%>
            </span><br />
            <a href='AddToCart.aspx?productID=<%# Eval("id") %>'>
               <span class="ProductListItem"><b>Add To Cart<b></font></span>
            </a>
          </td>
        </tr>
      </table>
    </td>
  </ItemTemplate>
  <LayoutTemplate>
    <table runat="server">
      <tr runat="server">
        <td runat="server">
          <table id="groupPlaceholderContainer" runat="server">
            <tr id="groupPlaceholder" runat="server"></tr>
          </table>
        </td>
      </tr>
      <tr runat="server"><td runat="server"></td></tr>
    </table>
  </LayoutTemplate>
</asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" 
            runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>


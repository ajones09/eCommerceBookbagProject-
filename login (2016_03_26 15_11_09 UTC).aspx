<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Login</title>
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
     <asp:AccessDataSource ID="loginVerification" runat="server" DataFile="~/App_Data/Lib4test.mdb"></asp:AccessDataSource>
     <div>
        <div>
            <asp:Table CssClass="userLogin" runat="server" GridLines="Both">
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Label CssClass="loginHeader" runat="server" Text="Login"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Label CssClass="usernameLbl" ID="usernameLbl" runat="server" Text="Username:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox CssClass="usernameTxtBox" ID="usernameTxtBox" runat="server" MaxLength="8"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="usernameRFV" ID="usernameRFV" runat="server"
                             ErrorMessage="Uesrname required" ControlToValidate="usernameTxtBox">*</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell HorizontalAlign="Right">
                        <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="passwordTxtBox" runat="server" MaxLength="11" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="passwordRFV" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="passwordTxtBox">*</asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:CheckBox ID="rememberMe" runat="server" Text="Remember Me" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2">
                        <asp:Label ID="reqUpdateLbl" runat="server"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                        <asp:Button ID="loginBttn" runat="server" Text="Login" OnClick="loginBttn_Click" />
                        <asp:Button ID="signupBttn" runat="server" Text="Sign-up" OnClick="signupBttn_Click" /> 
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>


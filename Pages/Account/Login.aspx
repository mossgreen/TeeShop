<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Account_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h4>Log In</h4><hr />
    <asp:Literal runat="server" ID="litStatus" Text="Invalid username or password." Visible="False" />
    <asp:Label runat="server" AssociatedControlID="txtUserName">User name</asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtUserName" CssClass="inputs" />
    <br />
    <asp:Label runat="server" AssociatedControlID="txtPassword">Password</asp:Label>
    <br />
    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="inputs" />
    <br />
    <asp:Button ID="btnSignIn" runat="server" Text="Log in"  CssClass="button" OnClick="btnSignIn_Click"/>
    </asp:Content>


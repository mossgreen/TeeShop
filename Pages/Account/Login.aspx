<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Pages_Account_Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h4>Log In&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="litStatus" runat="server" CssClass="auto-style1"></asp:Label>
    </h4>
    
    <hr />
 
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


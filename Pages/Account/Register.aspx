<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Account_Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h4>Register a new user</h4>
    <hr />
    <p>
        <asp:Literal runat="server" ID="litStatus" />
    </p>

    User name:<br />
    <asp:TextBox runat="server" ID="txtUserName" CssClass="inputs" /><br />

    Password:
    <br />
    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="inputs" /><br />

    Confirm password:
    <br />
    <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="inputs" /><br />
    
    Phone Number:<br />
    <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="inputs" /><br />
    
    Phone Type:<br />
    <asp:DropDownList ID="ddlPhoneType"  CssClass="inputs" runat="server">
        <asp:ListItem Value="0">Select Phone Type</asp:ListItem>
        <asp:ListItem Value="1">Home</asp:ListItem>
        <asp:ListItem Value="2">Office</asp:ListItem>
        <asp:ListItem Value="3">Mobile</asp:ListItem>
    </asp:DropDownList>
    <p></p>
    Address:<br />
    <asp:TextBox runat="server" ID="txtAddress" CssClass="inputs" /><br />
    
    <br />
    <p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button" Width="150px" OnClick="btnRegister_Click" />
    </p>
</asp:Content>


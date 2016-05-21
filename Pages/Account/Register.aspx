<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Pages_Account_Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h4>Register a new user</h4>
    <hr />
    <p>
        <asp:Literal runat="server" ID="litStatus" />
    </p>

    User name: *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="user name is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox runat="server" ID="txtUserName" CssClass="inputs" /><br />

    Password:&nbsp; *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="password is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="inputs" /><br />

    Confirm password:
    *<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="type in the same password" ForeColor="#FF3300"></asp:CompareValidator>
    <br />
    <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="inputs" /><br />
    
    Phone Number: *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="phone number is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox runat="server" ID="txtPhoneNumber" CssClass="inputs" /><br />
    
    Phone Type: *<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlPhoneType" ErrorMessage="phone type is required." ForeColor="#FF3300" InitialValue="0"></asp:RequiredFieldValidator>
    <br />
    <asp:DropDownList ID="ddlPhoneType"  CssClass="inputs" runat="server">
        <asp:ListItem Value="0">Select Phone Type</asp:ListItem>
        <asp:ListItem Value="1">Home</asp:ListItem>
        <asp:ListItem Value="2">Office</asp:ListItem>
        <asp:ListItem Value="3">Mobile</asp:ListItem>
    </asp:DropDownList>
    <p></p>
        Email: *<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtEmail" ErrorMessage="email is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="email format error" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <asp:TextBox runat="server" ID="txtEmail" CssClass="inputs" /><br />
    
    <br />
    Address: *<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="address is required." ForeColor="#FF3300"></asp:RequiredFieldValidator>
    <br />
    <asp:TextBox runat="server" ID="txtAddress" CssClass="inputs" /><br />
    
    <br />
    <p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button" Width="150px" OnClick="btnRegister_Click" />
    </p>
</asp:Content>


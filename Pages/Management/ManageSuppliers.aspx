<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageSuppliers.aspx.cs" Inherits="Pages_Management_ManageSuppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp; Product Name</p><p>
        <asp:DropDownList ID="ddlProductId" runat="server" DataSourceID="sdsProduct" DataTextField="Name" DataValueField="Name"></asp:DropDownList>
        <asp:SqlDataSource ID="sdsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" SelectCommand="SELECT [Name] FROM [Product] ORDER BY [Name]"></asp:SqlDataSource>
    </p>
    <p>
        Supplier
        Name:
    </p>
    <p>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    </p>
    <p>
        Phone Number:
    </p>
    <p>
        <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:
    </p>
    <p>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
</asp:Content>

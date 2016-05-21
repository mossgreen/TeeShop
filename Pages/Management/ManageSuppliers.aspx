<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageSuppliers.aspx.cs" Inherits="Pages_Management_ManageSuppliers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;
        ProductId</p><p>
        <asp:DropDownList ID="ddlProductId" runat="server" DataSourceID="sdsProductIds" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
        <asp:SqlDataSource ID="sdsProductIds" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @ID" SelectCommand="SELECT [ID] FROM [Product] ORDER BY [ID]">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
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

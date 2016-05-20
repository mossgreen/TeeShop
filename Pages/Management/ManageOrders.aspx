<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageOrders.aspx.cs" Inherits="Pages_Management_ManageOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        Status:</p>
    <p>
        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="buttons">
            <asp:ListItem Value="false">Pendding</asp:ListItem>
            <asp:ListItem Value="true">Delivered</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server"  Text="Submit" OnClick="btnSubmit_Click" />
    </p>
    <p>
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    </p>
</asp:Content>

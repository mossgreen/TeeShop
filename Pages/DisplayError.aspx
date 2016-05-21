<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayError.aspx.cs" Inherits="Pages_DisplayError" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <table border="1" cellspacing="0" class="table" style="width:80%; margin-top:40px" >

            <tr><th colspan="2"><h1>Exception Information</h1></th></tr>

            <tr><td><h3>Error from:</h3></td>

            <td><asp:Label id="lblLabel2" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>HelpLink:</h3></td>

            <td><asp:Label id="lblLabel3" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>InnerException:</h3></td>

            <td><asp:Label id="lblLabel4" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>Message:</h3></td>

            <td><asp:Label id="lblLabel5" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>Source:</h3></td>

            <td><asp:Label id="lblLabel6" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>StackTrace:</h3></td>

            <td><asp:Label id="lblLabel7" runat="server" Width="90%"></asp:Label></td></tr>

            <tr><td><h3>TargetSite:</h3></td>

            <td><asp:Label id="lblLabel8" runat="server" Width="90%"></asp:Label></td></tr>

    </table>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ErrorPage.aspx.cs" Inherits="Pages_OnError_ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <hr/>
			Sorry, an error has occurred. Please contact our system administrator.
			<hr/>
			The following is the error message:
			<%=Request.QueryString["ErrorMessage"] %>
			<hr/> 

</asp:Content>


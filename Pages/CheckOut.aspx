<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs"  Inherits ="Pages_CheckOut" %>
<%@ Reference Page="~/Pages/ShoppingCart.aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="table" style="margin-top:40px; width:80%; border-bottom-width:8px" >
        <tr>
            <td class="auto-style14" colspan="2" style="height:50px; text-align:center" >
                <p class="thanks">
                    THANK YOU FOR SHOPPING!
                </p>
            </td>

        </tr>
        <tr>
            <td class="auto-style14">Customer Name:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblClientName" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Order ID:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblOrderId" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Order Date:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblDate" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Total Amount:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblAmount" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Order Status:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
        </tr>
 

        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1" >
                <asp:LinkButton ID="lnkContinue" runat="server" Text="Continue Shopping" Style ="float:right" OnClick="lnkContinue_Click"></asp:LinkButton>
            </td>
        </tr>
        </table>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="Pages_CheckOut" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
            <td class="auto-style14">Account Name:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblName" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">Order Number:</td>
            <td class="auto-style12" >
                <asp:Label ID="lblNumber" runat="server" ></asp:Label>
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
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style13" >
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                <asp:LinkButton ID="linkContinue" runat="server" PostBackUrl="~/Index.aspx" Text="Continue Shopping" Style ="float:right"></asp:LinkButton>
            </td>
        </tr>
        </table>
</asp:Content>

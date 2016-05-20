<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="pnlShoppingCart" runat="server"></asp:Panel>
    <table>
        <tr>
            <td>
                <b>Total: </b>
            </td>
            <td>
                <asp:Literal ID="litTotal" Text="" runat="server"></asp:Literal>
            </td>
        </tr>

        <tr>
            <td>
                GST(15%)<b>: </b>
            </td>
            <td>
                <asp:Literal ID="litVat" Text="" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <b>Shipping: </b>
            </td>
            <td>
                $ 15
            </td>
        </tr>
                <tr>
            <td>
                <b>Total Amount: </b>
            </td>
            <td>
                <asp:Literal ID="litTotalAmount" Text="" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/index.aspx" Text="Continue Shopping"></asp:LinkButton>
            OR
                <asp:Button ID="btnCheckOut" runat="server" PostBackUrl="~/Pages/Success.aspx" Text="Check Out" CssClass="button" Width="250px" />
            </td>
        </tr>
    </table>
</asp:Content>

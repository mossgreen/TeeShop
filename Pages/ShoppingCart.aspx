<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="Pages_ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            text-align: right;
        }
    </style>
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
            <td>GST(15%)<b>: </b>
            </td>
            <td>
                <asp:Literal ID="litGST" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <b>Shipping: </b>
            </td>
            <td class="auto-style1">
                <asp:Literal ID="litShippingFee" runat="server"></asp:Literal>
                &nbsp;</td>
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
                <asp:Button ID="btnClear" runat="server" CssClass="button-clear" Width="250px" Text="Empty My Cart" Color="" OnClick="btnClear_Click" />

            </td>
            <td>
                <asp:Label ID="lblResult" runat="server" class="productPrice" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <br />
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:LinkButton ID="lnkContinue" runat="server" PostBackUrl="~/index.aspx" Text="Continue Shopping"></asp:LinkButton>
                OR
            </td>
            <td>
                <asp:Button ID="btnCheckOut" runat="server" Text="Check Out" CssClass="button" Width="250px" OnClick="btnCheckOut_Click" />

            </td>

        </tr>
        

    </table>
</asp:Content>

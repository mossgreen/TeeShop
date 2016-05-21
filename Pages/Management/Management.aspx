<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Management.aspx.cs" Inherits="Pages_Management_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageProducts.aspx">Add new Product</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="grdProducts" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsProducts" Width="100%" OnRowEditing="grdProducts_RowEditing" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TypeID" HeaderText="TypeID" SortExpression="TypeID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>
    <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Product] ([TypeID], [Name], [Price], [Description], [Image]) VALUES (@TypeID, @Name, @Price, @Description, @Image)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [TypeID] = @TypeID, [Name] = @Name, [Price] = @Price, [Description] = @Description, [Image] = @Image WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TypeID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TypeID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="button" PostBackUrl="~/Pages/Management/ManageProductTypes.aspx">Add new ProductType</asp:LinkButton>
    <br />
    <br />
    <asp:GridView ID="grdProductTypes" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsProductTypes" Width="50%" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
</asp:GridView>

<asp:SqlDataSource ID="sdsProductTypes" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" DeleteCommand="DELETE FROM [ProductType] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ProductType] ([Name]) VALUES (@Name)" SelectCommand="SELECT * FROM [ProductType]" UpdateCommand="UPDATE [ProductType] SET [Name] = @Name WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

    <br />
    Modify Order status:<br />
    <asp:GridView ID="grdOrders" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="sdsOrders" ForeColor="Black" GridLines="Vertical" OnRowEditing="GridView1_RowEditing" Width="60%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="ClientId" HeaderText="ClientId" SortExpression="ClientId" />
            <asp:BoundField DataField="OrderDate" HeaderText="OrderDate" SortExpression="OrderDate" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsOrders" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Order] ([ClientId], [OrderDate], [Status], [TotalAmount]) VALUES (@ClientId, @OrderDate, @Status, @TotalAmount)" SelectCommand="SELECT * FROM [Order] ORDER BY [ID]" UpdateCommand="UPDATE [Order] SET [ClientId] = @ClientId, [OrderDate] = @OrderDate, [Status] = @Status, [TotalAmount] = @TotalAmount WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ClientId" Type="String" />
            <asp:Parameter Name="OrderDate" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="TotalAmount" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ClientId" Type="String" />
            <asp:Parameter Name="OrderDate" Type="String" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="TotalAmount" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    Modify Client Information<br />
    <asp:GridView ID="grdClients" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="sdsClient" ForeColor="Black" GridLines="Vertical"  Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="GUID" HeaderText="GUID" SortExpression="GUID" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
            <asp:BoundField DataField="PhoneType" HeaderText="PhoneType" SortExpression="PhoneType" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
    <asp:SqlDataSource ID="sdsClient" runat="server" ConnectionString="<%$ ConnectionStrings:TeeShopConnectionString %>" DeleteCommand="DELETE FROM [Client] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Client] ([GUID], [UserName], [Password], [Email], [PhoneNumber], [PhoneType], [Address]) VALUES (@GUID, @UserName, @Password, @Email, @PhoneNumber, @PhoneType, @Address)" SelectCommand="SELECT * FROM [Client] ORDER BY [ID], [UserName]" UpdateCommand="UPDATE [Client] SET [GUID] = @GUID, [UserName] = @UserName, [Password] = @Password, [Email] = @Email, [PhoneNumber] = @PhoneNumber, [PhoneType] = @PhoneType, [Address] = @Address WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="GUID" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneType" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="GUID" Type="String" />
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="PhoneNumber" Type="String" />
            <asp:Parameter Name="PhoneType" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sdsClients" runat="server"></asp:SqlDataSource>

</asp:Content>


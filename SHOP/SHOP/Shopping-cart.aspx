<%@ Page Title="" Language="C#" MasterPageFile="~/Start.master" AutoEventWireup="true" CodeBehind="Shopping-cart.aspx.cs" Inherits="SHOP.Shopping_cart1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Shopping cart</h1>
We use a repeater control to build our shopping cart and we fill the shopping cart with data from the "Products" table
when this page loads by using data in the HttpCookie as parameters to select rows from the table. We have
added EnableViewState="false" for the "Quantity" textbox in the repeater control so that it is possible to change
this value in an update of the cart.<br />
    <br />
    <asp:Repeater ID="CartRepeater" runat="server" OnItemCommand="CartRepeater_ItemCommand">
    <HeaderTemplate>
        <table border="0" width="600px" cellpadding="1" cellspacing="0" style="border: solid 1px silver">
                <tr style="background-color:Silver">
                <th>Product #</th>
                <th>Product name</th>
                <th>VAT %</th>
                <th>Quantity</th>
                <th>Price (excl. VAT)</th>
                <th></th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
                <tr>
                <td><asp:Literal ID="ltProductID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductIDC")%>'></asp:Literal></td>
                <td><asp:Literal ID="ltProductName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductName")%>'></asp:Literal></td>
                <td><asp:Literal ID="ltVAT" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SaletaxPercent")%>'></asp:Literal></td>
                <td><asp:Textbox ID="txtQuantity" EnableViewState="false" Width="50px" CssClass="textbox" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "QuantityC")%>'></asp:Textbox></td>
                <td><asp:Literal ID="ltPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PriceExSaleTax")%>'></asp:Literal></td>
                <td><asp:LinkButton ID="btnRemove" runat="server" Text="X" CommandArgument='<%# Bind("ProductIDC") %>' /></td>
                </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
    <br />
    <table border="0" width="600" cellpadding="1" cellspacing="0">
    <tr>
    <td style="text-align:right;">
    Sum excluding VAT: <asp:Label ID="lblPriceTotal" runat="server" Font-Bold="true" Text=""></asp:Label><br />
    VAT in total: <asp:Label ID="lblVatTotal" runat="server" Font-Bold="true" Text=""></asp:Label><br />
    Totalsum: <asp:Label ID="lblTotalSum" runat="server" Font-Bold="true" Text=""></asp:Label>
    </td>
    </tr>
    </table>
    <asp:Button ID="btnUpdateCart" runat="server" Text="Update cart" OnClick="btnUpdateCart_Click" />
    <asp:Button ID="btnCheckOut" runat="server" Text="Check out" OnClick="btnCheckOut_Click" /><br /><br />
    <asp:Panel ID="CheckOutPanel" runat="server" Visible="false">
    <h1>Order information</h1>
    We select the order information data from the "Customers" table when the user has clicked the
    "Check out" button and this data can be changed. When the user clicks the "Send order" button
    there is code to save the order in the "Orders" table and to save the orderrows in the 
    "OrdersProducts" table.<br /><br />
    <table border="0" width="600" cellpadding="1" cellspacing="0">
    <tr>
    <td>Company/Name:</td>
    <td><asp:TextBox ID="txtCompany" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>ID Number:</td>
    <td><asp:TextBox id="txtOrganisationNumber" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Contact:</td>
    <td><asp:TextBox id="txtContact" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Attention:</td> 
    <td><asp:TextBox id="txtAttention" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Adress:</td>
    <td><asp:TextBox ID="txtAdress" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Postal code:</td>
    <td><asp:TextBox id="txtPostalCode" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>City:</td>
    <td><asp:TextBox id="txtCity" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    <tr>
    <td>Country:</td>
    <td><asp:TextBox id="txtCountry" runat="server" Width="200px"></asp:TextBox></td>
    </tr>
    </table>
    <asp:Button ID="btnOrder" runat="server" Text="Send order" OnClick="btnOrder_Click" /><br /><br />
    </asp:Panel>
    <asp:HiddenField ID="HiddenCustomerID" runat="server" />
    <br />
</asp:Content>

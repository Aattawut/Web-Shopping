<%@ Page Title="" Language="C#" MasterPageFile="~/Start.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SHOP.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="extra">
        <h1>ใใใใใใใใใใใใใใใใใใใใใใใใ</h1>
        We have one customer with the username of "info@customer.com" and a password of "customer" and a second customer
        with the username of "go@customer.com" and a password of "customer". Here below are
        a page lised of the products that this webshop sells and you have to click on one product to view it and to
        buy units of this product.<br /><br />
        <asp:Repeater ID="ProductListRepeater" runat="server">
            <HeaderTemplate>
                <table border="0" width="570px" cellpadding="0" cellspacing="0">
            </HeaderTemplate>
            <itemtemplate>
                    <tr>
                        <td style="width:30%; font-weight:bolder; background-color:Silver"><%--<asp:HyperLink ID="ltProductID" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductID")%>' NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'></asp:HyperLink>--%></td>
                        <td style="width:70%; font-weight:bolder; background-color:Silver"><%--<asp:HyperLink ID="ltProductName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "ProductName")%>' NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'></asp:HyperLink>--%></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Literal ID="ltDescription" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "Description")%>'></asp:Literal><br /><br />
                            Price excluding VAT: <asp:Literal ID="ltPriceExSaleTax" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "PriceExSaleTax")%>'></asp:Literal><br />
                            Sale tax (VAT %): <asp:Literal ID="ltSaleTax" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SaleTaxMoney")%>'></asp:Literal> (<asp:Literal ID="ltSaleTaxPercent" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "SaleTaxPercent", "{0:P}")%>'></asp:Literal>)<br />
                            Price including VAT: <asp:Literal ID="ltTotalPrice" runat="server" Text='<%#DataBinder.Eval(Container.DataItem, "TotalPrice")%>'></asp:Literal><br /><br />
                            <%--<asp:HyperLink ID="hplLinkToProduct" runat="server" NavigateUrl='<%#GenerateURL(Eval("ProductID"))%>'>Click here to buy this product</asp:HyperLink>--%><br /><br />
                        </td>
                    </tr>
           </itemtemplate>
           <FooterTemplate>   
                </table>
           </FooterTemplate>
        </asp:Repeater>
                <asp:HyperLink id="lnkPrev" Visible="false" runat="server" Text="Previous"></asp:HyperLink> 
                <asp:Label id="lblCurrentPage" runat="server" />
                <asp:HyperLink id="lnkNext" Visible="false" runat="server" Text="Next"></asp:HyperLink><br /><br />
        <br />
    </div>
</asp:Content>

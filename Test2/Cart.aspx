<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Test2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%-- <asp:Repeater ID="RepeaterCart2" runat="server">
  
    <ItemTemplate>
        <li class="cart_item clearfix">
            <div class="cart_item_image">
                <img src='<%# Eval("Image1") %>' alt="Product Image" />
            </div>
            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                <div class="cart_item_name cart_info_col">
                    <div class="cart_item_title">Name</div>
                    <div class="cart_item_text"><%# Eval("ProductName") %></div>
                </div>
                <div class="cart_item_color cart_info_col">
                    <div class="cart_item_title">Color</div>
                    <div class="cart_item_text">
                        <span style="background-color:#999999;"></span><%# Eval("Color") %>
                    </div>
                </div>
                <div class="cart_item_quantity cart_info_col">
                    <div class="cart_item_title">Quantity</div>
                    <div class="cart_item_text"><%# Eval("Quantity") %></div>
                </div>
                <div class="cart_item_price cart_info_col">
                    <div class="cart_item_title">Price</div>
                    <div class="cart_item_text">₹22000</div>
                </div>
            </div>
        </li>
    </ItemTemplate>
              </asp:Repeater>--%>


    <asp:Repeater ID="RepeaterCart" runat="server">
    <ItemTemplate>
        <div class="cart-item">
            <img src='<%# Eval("Image1") %>' alt="Product Image" />
            <div class="product-details">
                <h3><%# Eval("Product_Name") %></h3>
                <p>Price: ₹<%# Eval("Product_Price") %></p>
                <p>Quantity: <%# Eval("Quantity") %></p>
                <!-- Add other relevant details -->
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

</asp:Content>

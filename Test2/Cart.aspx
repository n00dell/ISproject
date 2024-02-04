<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Test2.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                   
               
                    <asp:Repeater ID="RepeaterCart" runat="server">
    <tr>
        <td class="col-sm-8 col-md-6">
        <div class="media">
            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<%# Eval("Image1") %>" style="width: 72px; height: 72px;"> </a>
            <div class="media-body">
                <h4 class="media-heading"><a href="#"><%# Eval("Product_Name") %></a></h4>
                <h5 class="media-heading"> by <a href="#"><%# Eval("Product_Brand") %></a></h5>
                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
            </div>
        </div></td>
        <td class="col-sm-1 col-md-1" style="text-align: center">
        <input type="number" class="form-control" value="<%# Eval("Product_Quantity") %>">
        </td>
        <td class="col-sm-1 col-md-1 text-center"><strong><%# Eval("Product_Price", "{0:C}") %></strong></td>
        <td class="col-sm-1 col-md-1 text-center"><strong><%# Eval("Subtotal", "{0:C}") %></strong></td>
        <td class="col-sm-1 col-md-1">
        <button type="button" class="btn Pagebtns" onclick="removeFromCart(<%# Eval("Product_Id") %>)">
            <span class="glyphicon glyphicon-remove"></span> Remove
        </button></td>
    </tr>
</asp:Repeater>

                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Subtotal</h5></td>
                        <td class="text-right"><h5><strong></strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h5>Estimated shipping</h5></td>
                        <td class="text-right"><h5><strong></strong></h5></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>@Model.Cart.Total.ToString("C")</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        <td>
                        <button type="button" class="btn btn-success" onclick="checkout()">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</asp:Content>

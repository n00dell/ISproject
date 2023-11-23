<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Furniture.aspx.cs" Inherits="Test2.Furniture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--Css for the cards-->

 

    <div class="container">
    <br>
   
	<br>
        
	<div class="row" id="ads">
    <!-- Category Card -->
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
    <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
               
               
                <img class="img-fluid" src='<%# Eval("Image1") %>' alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">new-in</span>
                <span class="card-detail-badge"><%# Eval("Product_Price") %></span>
                <span class="card-detail-badge"><%# Eval("Product_Description") %></span>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5><%# Eval("Product_Name") %></h5>
                </div>
               <a class="ad-btn " href="Description.aspx?Id=<%# Eval("Product_Id") %>">View</a> 
            </div>
        </div>
    </div>

</ItemTemplate>
        </asp:Repeater>
</div>
</div>
     


</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clothes.aspx.cs" Inherits="Test2.Clothes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css for the cards-->

 
    <div class="container">
    <br>
   
	<br>
	<div class="row" id="ads">
    <!-- Category Card -->
    <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge">Floral</span>
                <span class="card-notify-year">2018</span>
                <img class="img-fluid" src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">new-in</span>
                <span class="card-detail-badge">Ksh.8,000.00</span>
                <span class="card-detail-badge">Hand-made</span>
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>floral dress</h5>
                </div>
               <a class="ad-btn " href="Description.aspx">View</a>
            </div>
        </div>
    </div>
      <div class="col-md-4">
      <div class="card rounded">
          <div class="card-image">
              <span class="card-notify-badge">Floral</span>
              <span class="card-notify-year">2018</span>
              <img class="img-fluid" src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80" alt="Alternate Text" />
          </div>
          <div class="card-image-overlay m-auto">
              <span class="card-detail-badge">new-in</span>
              <span class="card-detail-badge">Ksh.8,000.00</span>
              <span class="card-detail-badge">Hand-made</span>
          </div>
          <div class="card-body text-center">
              <div class="ad-title m-auto">
                  <h5>floral dress</h5>
              </div>
              <a class="ad-btn " href="Description.aspx">View</a>
          </div>
      </div>
  </div>

      <div class="col-md-4">
      <div class="card rounded">
          <div class="card-image">
              <span class="card-notify-badge">Floral</span>
              <span class="card-notify-year">2018</span>
              <img class="img-fluid" src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80" alt="Alternate Text" />
          </div>
          <div class="card-image-overlay m-auto">
              <span class="card-detail-badge">new-in</span>
              <span class="card-detail-badge">Ksh.8,000.00</span>
              <span class="card-detail-badge">Hand-made</span>
          </div>
          <div class="card-body text-center">
              <div class="ad-title m-auto">
                  <h5>floral dress</h5>
              </div>
              <a class="ad-btn " href="Description.aspx">View</a>
          </div>
      </div>
  </div>

</div>
</div>

</asp:Content>

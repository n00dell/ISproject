<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clothes.aspx.cs" Inherits="Test2.Clothes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--Css for the cards-->

    
	

    

    
    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-light justify-content-center">
    <div class="container">
        <div class="logo"><a class="navbar-brand" runat="server" href="#">Logo</a></div>
        
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between" id="navbarNav">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx">Home <span class="sr-only"></span></a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Contact.aspx">Contact</a>
                </li>

              <li class="nav-item">
     <a class="nav-link" href="Furniture.aspx">Furniture</a>
 </li>
                 <li class="nav-item">
     <a class="nav-link" href="Curio.aspx">Curio</a>
 </li>
                 <li class="nav-item">
     <a class="nav-link" href="Clothes.aspx">Clothes</a>
 </li>
                 <li class="nav-item">
     <a class="nav-link" href="WatchesandBracelets.aspx">Accessories</a>
 </li>
               

                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn Pagebtns" type="submit">Search</button>
                </form>
            </ul>
        </div>
                <a class="nav-icon position-relative text-decoration-none" href="#">
                      <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="25px" height="30px" viewBox="0 0 40 36" style="enable-background:new 0 0 40 36;" xml:space="preserve">
<g id="Page-1_4_" sketch:type="MSPage">
	<g id="Desktop_4_" transform="translate(-84.000000, -410.000000)" sketch:type="MSArtboardGroup">
		<path id="Cart" sketch:type="MSShapeGroup" class="st0" d="M94.5,434.6h24.8l4.7-15.7H92.2l-1.3-8.9H84v4.8h3.1l3.7,27.8h0.1
			c0,1.9,1.8,3.4,3.9,3.4c2.2,0,3.9-1.5,3.9-3.4h12.8c0,1.9,1.8,3.4,3.9,3.4c2.2,0,3.9-1.5,3.9-3.4h1.7v-3.9l-25.8-0.1L94.5,434.6"
			/>
	</g>
</g>
  </svg>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                    </a>
        <div class="login">
            <ul>
                 <form action="Login.aspx"> 
      <button class="btn btn-secondary Pagebtns" type="login" >Login</button>

  </form>
            </ul>

        </div>
    </div>
</nav>


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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Curio.aspx.cs" Inherits="Test2.Curio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <!--Css for the cards-->

    
	

    <style>
        body {
    font-family: 'Montserrat', sans-serif;

}
        .Pagebtns{
             background-color: #4CAF50;
 color: #fff;
 padding: 10px 20px;
 border: none;
 border-radius: 5px;
 cursor: pointer;
 transition: background-color 0.3s, color 0.3s;
        }

        .Pagebtns:hover{
            background-color: #fff;
color: #4CAF50;
        }

/* Category Ads */

#ads {
    margin: 30px 0 30px 0;
   
}

#ads .card-notify-badge {
        position: absolute;
        left: -10px;
        top: -20px;
        background: #0db88a;
        text-align: center;
        border-radius: 30px 30px 30px 30px; 
        color: #000;
        padding: 5px 10px;
        font-size: 14px;

    }

#ads .card-notify-year {
        position: absolute;
        right: -10px;
        top: -20px;
        background: #0db88a;
        border-radius: 50%;
        text-align: center;
        color: #fff;      
        font-size: 14px;      
        width: 50px;
        height: 50px;    
        padding: 15px 0 0 0;
}


#ads .card-detail-badge {      
        background: #0db88a;
        text-align: center;
        border-radius: 30px 30px 30px 30px;
        color: #000;
        padding: 5px 10px;
        font-size: 14px;        
    }

   

#ads .card:hover {
            background: #fff;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
            border-radius: 4px;
            transition: all 0.3s ease;
        }

#ads .card-image-overlay {
        font-size: 20px;
        
    }


#ads .card-image-overlay span {
            display: inline-block;              
        }


#ads .ad-btn {
        text-transform: uppercase;
        width: 150px;
        height: 40px;
        border-radius: 80px;
        font-size: 16px;
        line-height: 35px;
        text-align: center;
        border: 3px solid #0db88a;
        display: block;
        text-decoration: none;
        margin: 20px auto 1px auto;
        color:  #000;
        overflow: hidden;        
        position: relative;
        background-color: #0db88a;
    }

#ads .ad-btn:hover {
            background-color: #0db88a;
            color: #0db88a;
            border: 2px solid #0db88a;
            background: transparent;
            transition: all 0.3s ease;
            box-shadow: 12px 15px 20px 0px rgba(46,61,73,0.15);
        }

#ads .ad-title h5 {
        text-transform: uppercase;
        font-size: 18px;
    }

  .navbar-nav .nav-link:hover {
     color: #4CAF50;
 }
         #Cart:hover{
  fill:green;
}

    </style>

    
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
                
                <span class="card-notify-year">2018</span>
                <img class="img-fluid" src="https://images.freeimages.com/images/large-previews/4e9/lamp-1479095.jpg" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">New In</span>
                <span class="card-detail-badge">Ksh. 2000</span>
                
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>Copper lamp</h5>
                </div>
                <a class="ad-btn" href="Description.aspx">View</a>
            </div>
        </div>
    </div>
   <div class="col-md-4">
    <div class="card rounded">
        <div class="card-image">
            
            <span class="card-notify-year">2018</span>
            <img class="img-fluid" src="https://images.freeimages.com/images/large-previews/4e9/lamp-1479095.jpg" alt="Alternate Text" />
        </div>
        <div class="card-image-overlay m-auto">
            <span class="card-detail-badge">New In</span>
            <span class="card-detail-badge">Ksh. 2000</span>
            
        </div>
        <div class="card-body text-center">
            <div class="ad-title m-auto">
                <h5>Copper lamp</h5>
            </div>
            <a class="ad-btn" href="Description.aspx">View</a>
        </div>
    </div>
</div>

    <div class="col-md-4">
    <div class="card rounded">
        <div class="card-image">
            
            <span class="card-notify-year">2018</span>
            <img class="img-fluid" src="https://images.freeimages.com/images/large-previews/4e9/lamp-1479095.jpg" alt="Alternate Text" />
        </div>
        <div class="card-image-overlay m-auto">
            <span class="card-detail-badge">New In</span>
            <span class="card-detail-badge">Ksh. 2000</span>
            
        </div>
        <div class="card-body text-center">
            <div class="ad-title m-auto">
                <h5>Copper lamp</h5>
            </div>
            <a class="ad-btn" href="Description.aspx">View</a>
        </div>
    </div>
</div>

</div>
</div>
</asp:Content>

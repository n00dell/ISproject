<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Furniture.aspx.cs" Inherits="Test2.Furniture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <!--Css for the cards-->

    
	

    <style>
        body {
    font-family: 'Montserrat', sans-serif;

}
        .navbar-nav .nav-link:hover {
            color: green;
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
            color: green;
        }

 img{
     height:150px;
     width:400px;
     
 }
 .btn-cart{
     margin-left:200px;
     background-color:#0db88a;
 }
    </style>

    
<nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-light bg-light justify-content-center">
    <div class="container">
        <a class="navbar-brand" runat="server" href="#">Your Logo</a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target=".navbar-collapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between" id="navbarNav">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item active">
                    <a class="nav-link" href="Index.aspx">Home <span class="sr-only">(current)</span></a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="Contact.aspx">Contact</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Shop
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="Clothes.aspx">Clothes</a></li>
                        <li><a class="dropdown-item" href="WatchesandBracelets.aspx">Watches and bracelets</a></li>
                        <li><a class="dropdown-item" href="Furniture.aspx">Furniture</a></li>
                        <li><a class="dropdown-item" href="Curio.aspx">Curio</a></li>
                    </ul>
                </li>

                <!-- Add the login button here -->
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>

                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>

                 <li class='nav-item'>
                    <button type="button" class="btn btn-primary btn-cart">
  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart-fill" viewBox="0 0 16 16">
    <path d="M0 1.5A.5.5 0 0 1 .5 1h1.57l.306 1.837A1.5 1.5 0 0 0 3.88 4h9.22a1.5 1.5 0 0 0 1.494-1.163L15.43 2H4.427l-.34-2.043A1.5 1.5 0 0 0 2.59.5H.5a.5.5 0 0 1-.492-.41L0 .5v.01z"/>
    <path d="M4 14a2 2 0 1 1-4 0h4zm9-2a2 2 0 1 1-4 0h4zm-8-2a2 2 0 1 1-4 0h4z"/>
    <path d="M14.5 6H3.707l-.354-2.121A1.5 1.5 0 0 1 3.83 2h9.34a1.5 1.5 0 0 1 .877.879L15.43 6z"/>
</svg>

</button> </li>


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
                <span class="card-notify-badge">Wooden</span>
                <span class="card-notify-year">2020</span>
                <img class="img-fluid" src=https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">Used</span>
                <span class="card-detail-badge">Ksh.2,000.00</span>
                
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>Wooden Chair</h5>
                </div>
                <a class="ad-btn" href="#">View</a>
            </div>
        </div>
    </div>
     <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge">Wooden</span>
                <span class="card-notify-year">2020</span>
                <img class="img-fluid" src=https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">Used</span>
                <span class="card-detail-badge">Ksh.2,000.00</span>
                
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>Wooden Chair</h5>
                </div>
                <a class="ad-btn" href="#">View</a>
            </div>
        </div>
    </div>

       <div class="col-md-4">
        <div class="card rounded">
            <div class="card-image">
                <span class="card-notify-badge">Wooden</span>
                <span class="card-notify-year">2020</span>
                <img class="img-fluid" src=https://images.unsplash.com/photo-1592078615290-033ee584e267?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnVybml0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60" alt="Alternate Text" />
            </div>
            <div class="card-image-overlay m-auto">
                <span class="card-detail-badge">Used</span>
                <span class="card-detail-badge">Ksh.2,000.00</span>
                
            </div>
            <div class="card-body text-center">
                <div class="ad-title m-auto">
                    <h5>Wooden Chair</h5>
                </div>
                <a class="ad-btn" href="#">View</a>
            </div>
        </div>
    </div>

</div>
</div>


</asp:Content>

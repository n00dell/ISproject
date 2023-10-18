<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Curio.aspx.cs" Inherits="Test2.Curio" %>
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
                        <li><a href="Clothes.aspx" title ="clothes" itemprop="url">Clothes</a></li>
                        <li><a href="WatchesandBracelets.aspx" tittle>Watches and bracelets</a></li>
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
                <a class="ad-btn" href="#">View</a>
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
            <a class="ad-btn" href="#">View</a>
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
            <a class="ad-btn" href="#">View</a>
        </div>
    </div>
</div>

</div>
</div>
</asp:Content>

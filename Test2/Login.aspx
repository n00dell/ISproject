<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        
            .navbar-nav .nav-link:hover {
                color: green;
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

               

                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </ul>
        </div>
        <div class="login">
            <ul>
                <button class="btn btn-secondary login-btn" type="login">Login</button>
                <button class="btn btn-secondary signup-btn" data-target="#login-modal" type="Sign Up" >Sign up</button>
            </ul>

        </div>
    </div>
</nav>
  

        <script>

        </script>
   
    
    
</asp:Content>

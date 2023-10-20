<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SIgnUp.aspx.cs" Inherits="Test2.SIgnUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
          .navbar-nav .nav-link:hover {
            color: #4CAF50;
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
       body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .signup-container {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .form-group {
            margin: 10px 0;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .signup-button, .login-btn {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }
        .signup-button:hover, .login-btn:hover {
            background-color: #fff;
            color: #4CAF50;
        }
        .login-link {
            text-align: center;
            margin-top: 10px;
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

      <div class="signup-container">
        <h2>Sign Up</h2>
        <form>
            <asp:HiddenField ID="hfUserID" runat="server" />
            <div class="form-group">
                <asp:TextBox ID="txtFname" runat="server" placeholder="First Name"></asp:TextBox>
               
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
        </div>
            <div class="form-group">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
            </div>
            <div class="form-group">
                 <asp:TextBox ID="txtPassword" placeholder="Create Password" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:TextBox ID="txtPassword1" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnSignUp" CssClass="signup-button" Text="Sign Up" runat="server" OnClick="btnSignUp_Click"/>
            </div>
        </form>
        <div class="login-link">
            Already have an account? <a href="Login.aspx">Login</a>
        </div>
          <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="LightGreen"></asp:Label>
          <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" ></asp:Label>
    </div>
</asp:Content>

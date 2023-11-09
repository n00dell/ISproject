<%@ Page Title=""  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SIgnUp.aspx.cs" Inherits="Test2.SIgnUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>

    <title>SignUp</title>
   

    
    </head>

    <body>
    
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
<form id="signupForm" method="post" action="SIgnUp.aspx" onsubmit="return validateForm();">
    <asp:HiddenField ID="hfUserID" runat="server" />
    <div class="form-group">
        <asp:TextBox ID="txtFname" runat="server" placeholder="First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="First Name is required." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="txtLname" runat="server" placeholder="Last Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="Last Name is required." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="Username is required." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="Email is required." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="txtPassword" placeholder="Create Password" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="Password is required." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:TextBox ID="txtPassword1" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword1" runat="server" ControlToValidate="txtPassword1" Display="Dynamic" ForeColor="Red" InitialValue="" ErrorMessage="Please retype the password." CssClass="d-none" />
    </div>
    <div class="form-group">
        <asp:Button ID="btnSignUp" CssClass="signup-button" Text="Sign Up" runat="server" OnClick="btnSignUp_Click" OnClientClick="return validateForm()" />
    </div>
</form>





        <div class="login-link">
            Already have an account? <a href="Login.aspx">Login</a>
        </div>
          <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="LightGreen"></asp:Label>
          <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" ></asp:Label>
    </div>
        </body>
 
    </html>

      
</asp:Content>

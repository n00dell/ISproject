﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Test2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />

        <style>
            @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');

*
{
    
    -webkit-font-smoothing: antialiased;
    -webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
    text-shadow: rgba(0,0,0,.01) 0 0 1px;
}
            .navbar-nav .nav-link:hover {
                color: green;
            }
body
{
    font-family: 'Rubik', sans-serif;
    font-size: 14px;
    font-weight: 400;
    background: #fff;
    color: #000000;
    margin-top: 10px;
}
div
{
    display: block;
    position: relative;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}



h1, h2, h3, h4, h5, h6
{
    font-family: 'Rubik', sans-serif;
    font-weight: 500;
    -webkit-font-smoothing: antialiased;
    -webkit-text-shadow: rgba(0,0,0,.01) 0 0 1px;
    text-shadow: rgba(0,0,0,.01) 0 0 1px;
}


.button
{
    display: inline-block;
    background: #97cbfa;
    border-radius: 5px;
    height: 48px;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
}
.button a
{
    display: block;
    font-size: 18px;
    font-weight: 400;
    line-height: 48px;
    color: #FFFFFF;
    padding-left: 35px;
    padding-right: 35px;
}
.button:hover
{
    opacity: 0.8;
}

.contact_info
{
    width: 100%;
    padding-top: 70px;
}
.contact_info_item
{
    width: calc((100% - 60px) / 3);
    height: 100px;
    border: solid 1px #e8e8e8;
    box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
    padding-left: 32px;
    padding-right: 15px;
}
.contact_info_image
{
    width: 35px;
    height: 35px;
    text-align: center;
}
.contact_info_image img
{
    max-width: 100%;
}
.contact_info_content
{
    padding-left: 17px;
}
.contact_info_title
{
    font-weight: 500;
}
.contact_info_text
{
    font-size: 12px;
    color: rgba(0,0,0,0.5);
}

/*********************************
4.1 Contact Form
*********************************/

.contact_form
{
    padding-top: 85px;
}
.contact_form_container
{

}
.contact_form_title
{
    font-size: 30px;
    font-weight: 500;
    margin-bottom: 37px;
}
.contact_form_inputs
{
    margin-bottom: 30px;
}
.input_field
{
    width: calc((100% - 60px) / 3);
    height: 50px;
    padding-left: 25px;
    border: solid 1px #e5e5e5;
    border-radius: 5px;
    outline: none;
    color: #0e8ce4;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
}
.input_field:focus,
.text_field:focus
{
    border-color: #b2b2b2;
}
.input_field:hover,
.text_field:hover
{
    border-color: #b2b2b2;
}
.input_field::-webkit-input-placeholder,
.text_field::-webkit-input-placeholder
{
    font-size: 16px;
    font-weight: 400;
    color: rgba(0,0,0,0.3);
}
.input_field:-moz-placeholder,
.text_field:-moz-placeholder
{
    font-size: 16px;
    font-weight: 400;
    color: rgba(0,0,0,0.3);
}
.input_field::-moz-placeholder,
.text_field::-moz-placeholder
{
    font-size: 16px;
    font-weight: 400;
    color: rgba(0,0,0,0.3);
} 
.input_field:-ms-input-placeholder,
.text_field:-ms-input-placeholder
{ 
    font-size: 16px;
    font-weight: 400;
    color: rgba(0,0,0,0.3);
}
.input_field::input-placeholder,
.text_field::input-placeholder
{
    font-size: 16px;
    font-weight: 400;
    color: rgba(0,0,0,0.3);
}
.text_field
{
    width: 100%;
    height: 160px;
    padding-left: 25px;
    padding-top: 15px;
    border: solid 1px #e5e5e5;
    border-radius: 5px;
    color: #0e8ce4;
    outline: none;
    -webkit-transition: all 200ms ease;
    -moz-transition: all 200ms ease;
    -ms-transition: all 200ms ease;
    -o-transition: all 200ms ease;
    transition: all 200ms ease;
}
.contact_submit_button
{
    padding-left: 35px;
    padding-right: 35px;
    color: #FFFFFF;
    font-size: 18px;
    border: none;
    outline: none;
    cursor: pointer;
    margin-top: 24px;
}
.panel
{
    width: 100%;
    height: 50px;
    background: #fafafa;
    margin-top: 120px;
}


@media only screen and (max-width: 991px)
{
    
    .contact_info_item
    {
        width: 100%;
        margin-bottom: 30px;
    }
    .contact_info_item:last-child
    {
        margin-bottom: 0px;
    }
    
}

@media only screen and (max-width: 767px)
{
    
    .input_field
    {
        margin-bottom: 30px;
        width: 100%;
    }
    .input_field:last-child
    {
        margin-bottom: 0px;
    }
}


@media only screen and (max-width: 575px)
{
    
    .contact_submit_button
    {
        font-size: 13px;
        padding-left: 25px;
        padding-right: 25px;
    }
    
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
            </ul>
        </div>
    </div>
</nav>


< <div class="contact_info">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

                        <!-- Contact Item -->
                        <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                            <div class="contact_info_image"><img src="https://img.icons8.com/office/24/000000/iphone.png" alt=""></div>
                            <div class="contact_info_content">
                                <div class="contact_info_title">Phone</div>
                                <div class="contact_info_text">+91 9876 543 2198</div>
                            </div>
                        </div>

                        <!-- Contact Item -->
                        <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                            <div class="contact_info_image"><img src="https://img.icons8.com/ultraviolet/24/000000/filled-message.png" alt=""></div>
                            <div class="contact_info_content">
                                <div class="contact_info_title">Email</div>
                                <div class="contact_info_text">contact@bbbootstrap.com</div>
                            </div>
                        </div>

                        <!-- Contact Item -->
                        <div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
                            <div class="contact_info_image"><img src="https://img.icons8.com/ultraviolet/24/000000/map-marker.png" alt=""></div>
                            <div class="contact_info_content">
                                <div class="contact_info_title">Address</div>
                                <div class="contact_info_text">298,Menlo Park,CA,USA</div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact Form -->

    <div class="contact_form">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="contact_form_container">
                        <div class="contact_form_title">Get in Touch</div>

                        <form action="#" id="contact_form">
                            <div class="contact_form_inputs d-flex flex-md-row flex-column justify-content-between align-items-between">
                                <input type="text" id="contact_form_name" class="contact_form_name input_field" placeholder="Your name" required="required" data-error="Name is required.">
                                <input type="text" id="contact_form_email" class="contact_form_email input_field" placeholder="Your email" required="required" data-error="Email is required.">
                                <input type="text" id="contact_form_phone" class="contact_form_phone input_field" placeholder="Your phone number">
                            </div>
                            <div class="contact_form_text">
                                <textarea id="contact_form_message" class="text_field contact_form_message" name="message" rows="40"  placeholder="Message" required="required" data-error="Please, write us a message."></textarea>
                            </div>
                            <div class="contact_form_button">
                                <button type="submit" class="button contact_submit_button">Send Message</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <div class="panel"></div>
    </div>

    </main>
</asp:Content>

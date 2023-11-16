<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Test2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   

       <div class="login-container">
        <h2>Login</h2>
        <form method="post">
            <div class="form-group">
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnLogin" CssClass="login-button" Text="Login" runat="server" OnClick="btnLogin_Click" />
                
            </div>
            <div class="forgot-password">
                <a href="#">Forgot Password?</a>
            </div>
        </form>
        <div class="signup-link">
            Don't have an account? <a href="SignUp.aspx">Sign Up</a>
        </div>
           <asp:Label ID="lblError" runat="server" Text="Make sure the Username and password are correct"></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Fill the required fields"></asp:RequiredFieldValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUsername" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
       </div>
  
  
</asp:Content>

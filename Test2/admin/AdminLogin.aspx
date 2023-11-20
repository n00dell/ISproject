<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Test2.admin.AdminLogin" %>

<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    
    
    
    
        <link rel="stylesheet" href="logincss/style.css">

    
    
    
    
  </head>

  <body>

    
<form id="formLogin" runat="server">
  <header>Login</header>
  <label>Username <span>*</span></label>
<asp:TextBox ID="txtAdminUser" runat="server"></asp:TextBox>
  
  <label>Password <span>*</span></label>
<asp:TextBox ID="txtAdminPassword" TextMode="Password" runat="server"></asp:TextBox>
 
    <br /><br />
  <asp:Button ID="btnAdminLogin" runat="server" Text="Login" OnClick="btnAdminLogin_Click" />
    <br /><br />
<asp:Label ID="lblAdminError" runat="server" Text=""></asp:Label>
</form>
    
    
    
    
  </body>
</html>

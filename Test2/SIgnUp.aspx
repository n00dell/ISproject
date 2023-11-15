<%@ Page Title=""  Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SIgnUp.aspx.cs" Inherits="Test2.SIgnUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    <asp:Label ID="lblFirstname" runat="server" Text="Firstname"></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox> <!--firstname-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:Label ID="lblLastName" runat="server" Text="LastName"></asp:Label>
    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox> <!--Lastname-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> <!--usernamename-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><!--email-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><!--Password-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:Label ID="lblConfirmPassword" runat="server" Text="ConfirmPassword"></asp:Label>
    <asp:TextBox ID="txtConfirmPassword"  runat="server" TextMode="Password"></asp:TextBox> <!--confirm password-->
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <br /><br /><br />

    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtPassword" ControlToCompare="txtConfirmPassword" Type="String" Operator="Equal" runat="server" ErrorMessage="Password doesn't match"></asp:CompareValidator>

    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    <asp:Label ID="lblError" runat="server" ></asp:Label>
      
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="myAmazon_2_.Admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class style=" text-align:center; color:crimson;"> HELLO ADMIN</h1>
    <section class="pill-content">

        <div class="row">
        <div class style=" text-align:center;">
        <h1> Admin Log In</h1>
        <p>
            <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="Either User ID or Password is incorrect!" Visible="False"></asp:Label>
        </p>
        <p>Username:</p>

        <asp:TextBox ID="a_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="a_name" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password<br />
        <asp:TextBox ID="a_pass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="a_pass" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" style="color: #FFFFFF; font-weight: 700; background-color: #000000" />
            </div>
            </div>
</section>
        
</asp:Content>

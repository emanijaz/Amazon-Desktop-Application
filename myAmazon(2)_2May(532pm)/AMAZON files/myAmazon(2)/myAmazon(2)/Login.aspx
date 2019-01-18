<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="myAmazon_2_.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class style=" text-align:center;">

    <h1>Log In Page</h1>

        <a href="Admin_login.aspx"><b class style="color:chocolate; text-emphasis-color:black; text-align:center; /*float:right;*/">Click here if you are an admin</b></a>
    &nbsp;<p>
            <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="Either User ID or Password is incorrect!" Visible="False"></asp:Label>
        </p>
        <p>Username:</p>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Password<br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" style="color: #FFFFFF; font-weight: 700; background-color: #000000" />
        <br />
        <br />

        <asp:Label ID="Label2" runat="server" Text="Successfully logged in!" Visible="False"></asp:Label>
            </div>
  </div>
</asp:Content>

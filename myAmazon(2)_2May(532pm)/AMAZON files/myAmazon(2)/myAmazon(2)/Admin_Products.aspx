<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Admin_Products.aspx.cs" Inherits="myAmazon_2_.Admin_Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class style="text-align:center;">
        Add a Product
    </h1>

    <div class="row">
        <div class style="text-align:center;">

            <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="Product has beeen added succesfully!" Visible="False"></asp:Label>
    
    <p>Product ID:</p>

        <asp:TextBox ID="p_id" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="p_id" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
            
      <p>Product Name:</p>

        <asp:TextBox ID="p_name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="p_name" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
    <p>Product Category:</p>

        <asp:TextBox ID="p_categ" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="p_categ" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

    <p>Item:</p>

        <asp:TextBox ID="p_item" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="p_item" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Price:<br />

        <asp:TextBox ID="priceBox" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="priceBox" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

    <p>Product Maker:</p>

        <asp:TextBox ID="p_maker" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="p_maker" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

    <p>Product Quantity:</p>

        <asp:TextBox ID="p_qnt" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="p_qnt" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

    <p>Product Size(optional):</p>
            
        <asp:TextBox ID="p_size" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="p_size" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

    <p>Product Details:</p>

        <asp:TextBox ID="p_text" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="p_text" ErrorMessage="Required!" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

        <p>Product Image:</p>

             <asp:FileUpload ID="FileUpload1" runat="server"/>
  

           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Product" style="color: #FFFFFF; font-weight: 700; background-color: #000000" />

            </div>
    </div>
</asp:Content>

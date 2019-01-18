<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="myAmazon_2_.Billing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF6600;
        }
        .auto-style2 {
            color: #FF6600;
            font-weight: bold;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style=" text-align:center;">
    <span class="auto-style1"><strong>Name:</strong></span><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br /><span class="auto-style2">Email:</span>
   <br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <span class="auto-style1"><strong>Address:</strong></span><br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <span class="auto-style1"><strong>Payment Via:</strong></span><br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Credit card</asp:ListItem>
            <asp:ListItem>Cash on Delivery</asp:ListItem>
        </asp:DropDownList>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" BackColor="Orange" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" ForeColor="White" />
    <br />
    <br />
    <br />
    </div>
    <%--<div style="position:lefy" >

    </div>--%>






</asp:Content>

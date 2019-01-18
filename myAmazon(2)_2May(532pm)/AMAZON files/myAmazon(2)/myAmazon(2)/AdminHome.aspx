<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="myAmazon_2_.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">

    <li><a href="Admin_Products.aspx">Add Products</a></li>  
	<li><a href="Admin_ShowUsers.aspx">Show Users</a></li>  
                            <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="LoggedOut" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
    <h1 class style="color:red;text-align:center; elevation:below;">ADMIN PANEL!</h1>
    <br />
       
             <h1>  &nbsp;&nbsp;&nbsp;&nbsp; Most Selling Products</h1><br />


            
                                   <div class="carousel-inner">
                                       <div class="active item">
                     
                                           <ul class="thumbnails">
                                                                       <% 
                                       if (prod_list.Count > 0)
                                       {
                                           foreach (var prod in prod_list)
                                           { %>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <span class="sale_tag"></span>
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="<%=prod.img%>"  alt="" style="width:250px; height:250px;"/></a></p>
                                                       <a href="product_detail.html" class="title"><%=prod.name%></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                       <p class="price"><%=prod.price%></p>
                                                   </div>
                                               </li>

                                                 <% }
                                       }
                                       else
                                       { %> 
                                   <p> No Products Available! </p>
                                   <% } %>
                                   
                                           </ul>
                                       </div>
                                       </div>
                                     

    </section>

</asp:Content>

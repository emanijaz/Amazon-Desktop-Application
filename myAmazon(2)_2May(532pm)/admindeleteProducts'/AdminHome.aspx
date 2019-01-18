<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Master.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="myAmazon_2_.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">

    <li><a href="Admin_Products.aspx">Add Products</a></li>  
	<li><a href="Admin_ShowUsers.aspx">Show Users</a></li>  
                            <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="LoggedOut" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="main-content">
    <h1 class style="color:red;text-align:center; elevation:below;">ADMIN PANEL!</h1>
    <br />
       
             <h1>  &nbsp;&nbsp;&nbsp;&nbsp; Most Selling Products</h1><br />


             <div class="row">
                   <div class="span12">
                                   <%--<div class="carousel-inner">
                                       <div class="active item">
                     
                                           <ul class="thumbnails">--%>
                                                                        <% 
                                                                            var pc = 5;
                                                         if (prod_list.Count > 0)
                                                         {

                                                              foreach (var prod in prod_list)
                                                              {

                                                                    if (pc == 0)
                                                                    {
                                                                            pc = 5;                       %>
                                                                            <div class="row">
                                                                            <div class="span12">
                                                                            <div  class="myCarousel carousel slide">
                                                                            <div class="carousel-inner">
                                                                            <div class="active item">

                                                      
                                                                         <div class="span3">  
                                                                         <div class="product-box">
                                                                         <span class="sale_tag"></span>
                                                                         <p>
                                                                          <%var detailsPageURL = "product_detail_admin.aspx?prod_id=" + prod.id;    %> 
                                                                          <a href="<%=detailsPageURL %>">
                                                       
                                                                          <img src="<%=prod.img%>" alt="" style="width:250px; height:250px;"/></a></p>
                                                                                                          
                                                                          <a href="<%=detailsPageURL%> %>" style="color:brown" class="title"><%=prod.name%></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                                          <p class="price"><%=prod.price%></p>
                                                                          </div>
                                                                          </div>
                                                          <%-- <a href="product_detail.html">
                                                           <img src="<%=prod.img%>"  alt="" style="width:250px; height:250px;"/></a></p>
                                                       <a href="product_detail.html" class="title"><%=prod.name%></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                       <p class="price"><%=prod.price%></p>--%>
                                                                          </div>
                                                                        </div>
                                                                        </div>
                                                                        </div>
                                                                        </div>
                                                       

                                                 <% }

                                                     else
                                                     {
                                                     %>
                                                          <div class="span3">  
                                                          <div class="product-box">
                                                          <span class="sale_tag"></span>
                                                       
                                                      
                                                                           <p>
                                                                          <%var detailsPageURL = "product_detail_admin.aspx?prod_id=" + prod.id;    %> 
                                                                          <a href="<%=detailsPageURL %>">
                                                       
                                                                          <img src="<%=prod.img%>" alt="" style="width:250px; height:250px;"/></a></p>
                                                                              <div class="span2">
								                                              <address>         
                                                                              <h6 style="color:coral; font:600px" class="title"><b ><%=prod.name%></b> </h6>
                                                                              <h6  style="color:black; font:300px"><b >Price:  </b> <%=prod.price%></h6> 
                                                                              </address>
                                                                             </div>
                                                                          </div>
                                                                          </div>
                                               <%
                                                           }
                                                       }
                                                      pc--;
                                                   }
                                                   else
                                                   { %> 
                                   <p> No Products Available! </p>
                                   <% } %>
                                   
                                           
                                       </div>
                                       </div>
                                     

    </section>
    
                                                 <div class="row">
                                                  <div class="span12">
                                                  <div id="myCarousel" class="myCarousel carousel slide">
                                                 <div class="carousel-inner">
                                                 <div class="active item">

                                                      </div>
                                                     </div>
                                                     </div>
                                                       </div>
                                                     </div>
                                                     
</asp:Content>

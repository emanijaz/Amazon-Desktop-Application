<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UserHomepage.aspx.cs" Inherits="myAmazon_2_.UserHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #FF3300;
        }
        .auto-style2 {
            color: #FF3300;
            font-size: medium;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">

     <li><a href="P1_Cart.aspx" ><b>My BucketList</b></a></li>
     <li><a href="UserPurchased.aspx" ><b>View Purchased List</b></a></li>
   <asp:Button ID="Logoutt" runat="server" OnClick="Button1_Click" Text="Logout" />

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <!--  <h1 class="auto-style2">Welcome to your Homepage!</h1>
    <p class="auto-style1">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
    </p>
    <%--  --%>
   -->

       <section class="homepage-slider" id="home-slider">
    <div class="flexslider">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/slider.xml" />
                <asp:Timer ID="Timer1" runat="server" Interval="2000">
                </asp:Timer>
            </ContentTemplate>
        </asp:UpdatePanel>
        </div>
        <div class="intro">
                               <h1>Start Season Sale</h1>
                               <p>
                                   <span>Up to 10% Off</span></p>
                               <p>
                                   <span>On selected items online and in stores</span></p>
                           </div>
       </section>

           <section class="main-content">
               <div class="row">
                   <div class="span12">
                       <div class="row">
                           <div class="span12">
                               <h4 class="title"><span class="pull-left"><span class="text"><span class="line">Featured <strong>Products</strong></span></span></span> <span class="pull-right"><a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a></span></h4>
                               <div id="myCarousel" class="myCarousel carousel slide">

                                 

                                   <div class="carousel-inner">
                                       <div class="active item">
                     
                                           <ul class="thumbnails">
                                                                       <% 
                                         var count = 0;
                                         if (prod_list.Count > 0)
                                         {

                                            foreach (var prod in prod_list)
                                            { 
                                                   if (count == 4)
                                                         break;                                
                                                                                   %>
                                               <li class="span3">  
                                                   <div class="product-box">
                                                       <span class="sale_tag"></span>
                                                       <p>
                                                       <%var detailsPageURL =  "product_detail1.aspx?prod_id=" + prod.id;    %> 
                                                           <a href="<%=detailsPageURL %>">
                                                       
                                                           <img src="<%=prod.img%>" alt="" style="width:250px; height:250px;"/></a></p>
                                                                                                          
                                                       <a href="<%=detailsPageURL%> %>" style="color:brown" class="title"><%=prod.name%></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                       <p class="price"><%=prod.price%></p>

                                                   </div>
                                               </li>

                                                 <% count++;
                                              }
                                           }
                                           else
                                           { %> 
                                                  <p> No Products Available! </p>
                                           <% } %>
                                   
                                           </ul>
                                       </div>
                                     
                                   </div>

                                 
                               </div>
                           </div>
                       </div>
                       <br>
                       <div class="row">
          <!--                 <div class="span12">
                               <h4 class="title"><span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span> <span class="pull-right"><a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a></span></h4>
                               <div id="myCarousel-2" class="myCarousel carousel slide">
                                   <div class="carousel-inner">
                                       <div class="active item">
                                           <ul class="thumbnails">
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <span class="sale_tag"></span>
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/g3.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Ut wisi enim ad</a><br><a href="products.html" class="category">Commodo consequat</a>
                                                       <p class="price">
                                                           $25.50</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/g4.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Quis nostrud exerci tation</a><br><a href="products.html" class="category">Quis nostrud</a>
                                                       <p class="price">
                                                           $17.55</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/m2.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Know exactly turned</a><br><a href="products.html" class="category">Quis nostrud</a>
                                                       <p class="price">
                                                           $25.30</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/Gul-Ahmed.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">You think fast</a><br><a href="products.html" class="category">World once</a>
                                                       <p class="price">
                                                           $25.60</p>
                                                   </div>
                                               </li>
                                           </ul>
                                       </div>
                                       <div class="item">
                                           <ul class="thumbnails">
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/Dbz_tshirt.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Know exactly</a><br><a href="products.html" class="category">Quis nostrud</a>
                                                       <p class="price">
                                                           $45.50</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/Dbz_tshirt.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Ut wisi enim ad</a><br><a href="products.html" class="category">Commodo consequat</a>
                                                       <p class="price">
                                                           $33.50</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/Dbz_tshirt.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">You think water</a><br><a href="products.html" class="category">World once</a>
                                                       <p class="price">
                                                           $45.30</p>
                                                   </div>
                                               </li>
                                               <li class="span3">
                                                   <div class="product-box">
                                                       <p>
                                                           <a href="product_detail.html">
                                                           <img src="themes/images/ladies/Dbz_tshirt.jpg" alt=""></a></p>
                                                       <a href="product_detail.html" class="title">Quis nostrud exerci</a><br><a href="products.html" class="category">Quis nostrud</a>
                                                       <p class="price">
                                                           $25.20</p>
                                                   </div>
                                               </li>
                                           </ul>
                                       </div>
                                   </div>
                               </div>
                           </div>
                       </div> -->
                       
                   </div>
               </div>
             </div>
           </section>

    
        
</asp:Content>

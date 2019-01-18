<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="myAmazon.aspx.cs" Inherits="myAmazon_2_.myAmazon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">
    <li><a href="Signup.aspx">Sign Up</a></li>
    <li><a href="Login.aspx">Login</a></li>
    <li><a href="Admin_login.aspx">Admin Login</a></li>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

   
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

           <div class="active item">
                     
           <ul class="thumbnails">
               <% 
                   var count = 0;
                   if (prod_list.Count > 0)
                   {

                       foreach (var prod in prod_list)
                       {
                           if (count == 5)
                           { break;}
                           


                           if (count ==4)
                           {
                                                     %>
                                 <div class="row">
                                 <div class="span12">
                                 <div  class="myCarousel carousel slide">
                                 <div class="carousel-inner">
                                  <div class="active item">
                   
                                               <li class="span3">  
                                               <div class="product-box">
                                               <span class="sale_tag"></span>
                                                       <p>
                                                       <%var detailsPageURL = "product_detail1.aspx?prod_id=" + prod.id;    %> 
                                                           <a href="<%=detailsPageURL %>">
                                                       
                                                           <img src="<%=prod.img%>" alt="" style="width:250px; height:250px;"/></a></p>
                                                                                                          
                                                       <a href="<%=detailsPageURL%> %>" style="color:brown"
                                                           class="title"<b style="color:coral; font:700px;"> <%=prod.name%></b></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                    

                                               </div>
                                               </li>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                                     
                                                    <% 
                           }
                           else
                           {    %>
                                                                       <li class="span3">  
                                                                       <div class="product-box">
                                                                        <span class="sale_tag"></span>
                                                                       <p>
                                                                       <%var detailsPageURL = "product_detail1.aspx?prod_id=" + prod.id;    %> 
                                                                       <a href="<%=detailsPageURL %>">
                                                       
                                                                       <img src="<%=prod.img%>" alt="" style="width:250px; height:250px;"/></a></p>
                                                                                                          
                                                                       <a href="<%=detailsPageURL%> %>" style="color:brown"
                                                                        class="title"<b style="color:coral; font:700px;"> <%=prod.name%></b></a>  <!-- <br>  <a href="products.html" class="category" >Commodo consequat</a> -->
                                                    

                                                                      </div>
                                                                      </li>
                              <%
                           }count++; 
                        } 
                     }
                     else
                     { %> 
                                   <p> No Products Available! </p> 
                     <% } %>
                             
                                   
              </ul>
          </div>

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

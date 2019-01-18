<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" enableEventValidation="false" CodeBehind="show_Category.aspx.cs" Inherits="myAmazon_2_.show_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1_5" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="main-content">
               <div class="row">
                   <div class="span12">
                       
                           
                               <h4 class="title"><span class="pull-left"><span class="text"><span class="line">Featured <strong>Products</strong></span></span></span> <span class="pull-right"><a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a></span></h4>
                                     
                                   <% 
                                         var pc = 5;
                                                 if (prod_list.Count > 0)
                                                 {

                                                     foreach (var prod in prod_list)
                                                     {

                                                          if (pc == 0)
                                                          {
                                                                      pc =5;                       %>
                                                         <div class="row">
                                                         <div class="span12">
                                                         <div  class="myCarousel carousel slide">
                                                         <div class="carousel-inner">
                                                         <div class="active item">

                                                      
                                                                         <div class="span3">  
                                                                         <div class="product-box">
                                                                         <span class="sale_tag"></span>
                                                                         <p>
                                                                             
                                                                          <%var detailsPageURL =  "product_detail1.aspx?prod_id=" + prod.id;    %> 
                                                                          <a href="<%=detailsPageURL %>">
                                                      
                                                                         <img src="<%=prod.img%>" alt=""style="width:250px; height:250px;"/></a></p>  
                                                       
                                                                         <div class="span2">
								                                         <address>
                                                                          <h6 style="color:coral; font:600px" class="title"><b ><%=prod.name%></b> </h6>
                                                                          <h6  style="color:black; font:300px"><b >Price:  </b> <%=prod.price%></h6> 
                                                                          </address>
                                                                          </div>
                                                           
                                                                          </div>
                                                                          </div>
                                                         </div>
                                                         </div>
                                                         </div>
                                                         </div>
                                                         </div>
                                                     
                                                       
                                                  <% } %>                                    

                                             <%else
                                             {
                                                     %>
                                                          <div class="span3">  
                                                          <div class="product-box">
                                                          <span class="sale_tag"></span>
                                                       
                                                      
                                                          <p>
                                                               <%var detailsPageURL =  "product_detail1.aspx?prod_id=" + prod.id;    %> 
                                                                          <a href="<%=detailsPageURL %>">
                                                      
                                                          <img src="<%=prod.img%>" alt=""style="width:250px; height:250px;"/></a></p>   
                                                       
                                                          <div class="span2">
								                          <address>
                                                              <%--<p class="title"><b style="color:coral; font:700px;"><%=prod.name%></b></p> 
                                                           
                                                                 <p ><b style="color:coral; font:600px">Price:  </b> <%=prod.price%></p>--%>

                                                               <h6 style="color:coral; font:600px" class="title"><b ><%=prod.name%></b> </h6>
                                                               <h6  style="color:black; font:300px"><b >Price:  </b> <%=prod.price%></h6> 
                                                          </address>
                                                          </div>
                                                           
                                                          </div>
                                                          </div>
                                               
                                              <% }

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

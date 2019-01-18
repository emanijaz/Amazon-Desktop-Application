<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"  CodeBehind="P1_Cart.aspx.cs" Inherits="myAmazon_2_.P1_Cart" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

     <h4 style="font:800; color:ActiveBorder; color:coral; font-family:'Adobe Devanagari'"><span>YOUR CART:</span></h4>
    <section class="main-content">		
         <% 
       if (prod_list.Count > 0)
       {
                foreach (var Prod in prod_list)
                   { %>
				         <div class="row">						
					          <div class="span9">
						         <div class="row">
							         <div class="span4">
                                              
                                         
                                        
							         	<a href="" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="<%=Prod.img %>"></a>											
							
							          </div>
							<div class="span5">
								<address>
									  <strong>Brand:</strong> <span><%=Prod.name%></span><br />
                                     <%var detailsPageURL =  "removeFromCart.aspx?prod_id=" + Prod.id;    %> 

                                     <a href="<%=detailsPageURL %>">Remove</a>
                                                       
                                 
                                                                            
                                 </address>
                               </div>
                            </div>
                        </div>
                    </div>
        <%
             }
        }%>
                 
        </section>
    <label id="Message" runat="server"></label>
</asp:Content>

<%@ Page Title="Product Detail" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="product_detail1.aspx.cs" Inherits="myAmazon_2_.product_detail1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4><span>Product Detail</span></h4>
    <section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
					
                                <img src="<%=myProd.img%>" alt="" style="width:250px; height:250px;"/>
							</div>
							<div class="span5">
								

								 <h4>	<strong style="color:black; font:700px";>Brand:</strong> <span><b style="font: 500px; color:chocolate"><%=myProd.name%></b></span></h4>
									<strong>Product Code:</strong> <span><%=myProd.id %></span><br>
									<strong>Quantity:</strong> <span><%Session["P_quantity"].ToString();%></span><br>		
                                    <strong>Category:</strong> <span><%Session["P_category"].ToString(); %></span><br>
                                    <strong>Item:</strong> <span><%Session["P_item"].ToString(); %></span><br>
                                  
																	
								<h4 style="color:black; font:700px";><strong>Price:</strong><span><b style="font: 500px; color:chocolate"><%=myProd.price%></b></span></h4>
							</div>
							<div class="span5">
								<form class="form-inline">
									
									<p>&nbsp;</p>
									<label>Qty:</label>
									<input type="text" class="span1" placeholder="1"> 
                                
									<%--<asp:Button ID="P1_Cart" runat="server" OnClick="P1_Cart_Click" Text="ADD TO CART" style="color: #FFFFFF; font-weight: 700; background-color: #000000"/>
							--%>	

                                    
                                                                                                     
                                       <%var detailsPageURL =  "AddToCart.aspx?prod_id=" + myProd.id;    %> 
                                       <%var detailsPageURL1 =  "Billing.aspx?prod_id=" + myProd.id;    %> 

                                     <a href="<%=detailsPageURL %>"><b style="font:400">ADD TO CART</b></a>
                                                       
                                     <a href="<%=detailsPageURL1 %>"><b style="font:400">Billing</b></a>
								</form>
							</div>							
						</div>
						
                  </div>
               </div>                                       
			</section>
</asp:Content>

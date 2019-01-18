<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UserPurchased.aspx.cs" Inherits="myAmazon_2_.UserPurchased" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   
   <%-- <asp:GridView
        ID="PurGrid"
        runat="server"
        AutoGenerateColums="true"
        EnableViewState="false"
        >

    </asp:GridView>--%>

    <h4 style="font:800; color:ActiveBorder; color:coral; font-family:'Adobe Devanagari'"><span><b>YOUR PURCHASED ITEMS:</b></span></h4>
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
                                         <div class="span5">
								<address>
									<strong>Brand:</strong> <span><%=Prod.name%></span><br />

							          
                                    </address>
                               </div>
                            </div>
                        </div>
                    </div>
        <%
             }
        }%>
    </section> 
</asp:Content>

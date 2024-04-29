<%-- 
    Document   : sellerhomepage
    Created on : 21 Feb, 2024, 9:41:15 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Homepage</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body>
         <%
   String nm1=(String)session.getAttribute("nm");
   %>
        <div class="bgimage">
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                        <li><a href="sellerhomepage.jsp">Home</a></li>
                        <li><a href="addproduct.jsp">Add Product</a></li>
                        <li><a href="searchrequest.jsp">Bid Request</a></li>
                        <li><a href="buyerreq_report.jsp">Report</a></li>
                          
                        <li><a href="website.jsp">Logout</a></li>
                               
                    </ul>
                </div>
            </div>
        </div>
         <marquee> username=<%=nm1%></marquee>
        <br><br>
        <section id="about" class="about-section-padding">
            <div class="container">
                <div class="row">
                     
                     <div class="about-img">
                             <img src="images/a1.jpg">
                          
                     </div>
                    
                     <div class="about-text">
                         <marquee>  <h1>Auction</h1></marquee>
                             <p>An auction is usually a process of buying and selling goods or services by offering them up for bids, 
                            taking bids, and then selling the item to the highest bidder or buying the item from the lowest bidder.
                            Some exceptions to this definition exist and are described in the section about different types.</p>
                      </div>
                    
            </div>
            </div>
            
        </section>
        <hr>
        <hr>
        <section class="products">
            <h1>Auction Products</h1>
            <div class="row">
                <div class="product">
                    <img src="images/lap.jpg">
                    <div class="layer">
                        <h3>Laptop</h3>
                    </div>
                </div>
                <div class="product">
                    <img src="images/phone.jpg">
                    <div class="layer">
                        <h3>Mobile Phone</h3>
                    </div>
                </div>
                <div class="product">
                    <img src="images/re.jpg">
                    <div class="layer">
                        <h3>Refrigerator</h3>
                    </div>
                </div>
                <div class="product">
                    <img src="images/fur2.jpg">
                    <div class="layer">
                        <h3>Dining table</h3>
                </div>
                </div>
                <div class="product">
                    <img src="images/camera.jpg">
                    <div class="layer">
                        <h3>Camera</h3>
                    </div>
                </div>
                <div class="product">
                    <img src="images/bike.jpg">
                    <div class="layer">
                        <h3>Bike</h3>
                    </div>
                </div>
            </div>
        </section>
       
        
        <div class="category">
            <div class="title">
                <h1>Auction Product Category</h1>
            </div>
            <div class="services">
                <div class="card">
                    <div class="icon">
                        <img src="images/icon1.png">
                    </div>
                    <h2>Furniture</h2>
                     <p>An auction is a process of buying and selling goods or services by offering them up for bid,taking bids,and then selling them to the highest bidder.
                                        Online auction provides the furniture materials including steel,wooden furniture.
                                    </p>
                </div>
                
                 <div class="card">
                     <div class="icon">
                        <img src="images/icon2.png">
                    </div>
                    <h2>Electronic Products</h2>
                       <p>An auction is a process of buying and selling goods or services by offering them up for bid,taking bids,and then selling them to the highest bidder.
                                        Online auction provides the electronics materials including TVs,Computers,Printers,Phones,Washine mashine,Refrigerator and much more.
                                    </p>
                </div>
                
                 <div class="card">
                     <div class="icon">
                        <img src="images/icon3.png">
                    </div>
                    <h2>Bikes</h2>
                       <p>Buying at auction can be overlooked for many reasons. Often perceived by the public as expensive, unaffordable,
                           and rather daunting, however in reality, it couldn’t be more different to this.Online Auction can be secured for 
                           a fraction of the price of their shop equivalents at retail prices.
                                    </p>
                </div>
            </div>
            
        </div>
       <div class="copyright" style="background-color:#F55E63" >
                <div class="container">
                    <p>Developed By:- Swaranjali Borate and Komal Kambire</p>
                </div>
        </div>  
        </div> 
    </body>
</html>

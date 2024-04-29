<%-- 
    Document   : buyerfinalbid
    Created on : 22 Feb, 2024, 11:41:06 PM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buyer bid</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        
    </head>
      <body style="background-color:#D5ECB9">
      
        <%
   String nm1=(String)session.getAttribute("nm");
  
   String dt=request.getParameter("txtdate");
  String bexp=request.getParameter("txtbp");
  
   
    
        %>
        <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                  <div class="rightmenu">
                    <ul>
                        <li><a href="buyerhomepage.jsp">Home</a></li>
                        
                        <li><a href="buyerfinalbid.jsp">final bid</a></li>
                        <li><a href="website.jsp">Logout</a></li>         
                    </ul>
                </div>
          </div>
        <marquee> username=<%=nm1%></marquee>
        <br><br><br><br><br>
        <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/search.jpg">
                          
                     </div>
                  <form method="post" name="form">
       <table border="1" width="700px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Buyer bid</th>
                  
               </tr>
           </thead>
           <tbody>
               
               <%
               
               String srno1=(String)session.getAttribute("sr1");
                String bnm2=(String)session.getAttribute("bnm1");
                 String mob5=(String)session.getAttribute("mob1");
                  String bml2=(String)session.getAttribute("bml1");
                   String id2=(String)session.getAttribute("id2");
                    String pnm2=(String)session.getAttribute("pnm1");
                     String cate2=(String)session.getAttribute("cate2");
                      String snm1=(String)session.getAttribute("snm1");
                       String mob4=(String)session.getAttribute("mob3");
                        String exp2=(String)session.getAttribute("exp1");
                        String img2=(String)session.getAttribute("img2");
               %>
              
               
               <tr align="center">
                   <td width="500px" height="50px">SrNo</td>
                    <td width="500px" height="50px"><%=srno1%> </td>
                    <td width="500px" height="50px"> Date</td>
           <td width="500px" height="50px"><input type="date" name="txtdate" value="" /></td>
           <tr align="center">
                   <td width="500px" height="50px">Buyer Name</td>
                   <td width="500px" height="50px" ><%=bnm2%></td> 
                   <td width="500px" height="50px">Buyer Mobile No</td>
                   <td width="500px" height="50px"><input type="text" name="txtid" value="<%=mob5%>" readonly="true" /></td> 
               </tr>
               
                <tr align="center">
                   <td width="500px" height="50px">Buyer Email_id</td>
                   <td width="500px" height="50px"><input type="text" name="txtid" value="<%=bml2%>" readonly="true" /></td> 
                   <td width="500px" height="50px">Buyer Expected Price</td>
                   <td width="500px" height="50px"><input type="text" name="txtbp" value=""/></td>  
                   
               </tr>
               <tr align="center">
                     <td width="500px" height="50px">Product Id</td>
                     <td width="500px" height="50px"><input type="text" name="txtid" value="<%=id2%>" readonly="true" /></td> 
                   <td width="500px" height="50px">Product Name</td>
                   <td width="500px" height="50px"><input type="text" name="txtpn" value="<%=pnm2%>" readonly="true" /></td> 
                   
               </tr>
              
               <tr align="center">
                   <td width="500px" height="50px">Category</td>
                  <td width="500px" height="50px"><input type="text" name="txtpn" value="<%=cate2%>" readonly="true"/></td> 
                  <td width="500px" height="50px">Seller Name</td>
                    <td width="500px" height="50px"><input type="text" name="txtpn" value="<%=snm1%>" readonly="true"/></td>   
               </tr>                                          
               <tr align="center">
                   <td width="500px" height="50px">Seller Mobile No</td>
                    <td width="500px" height="50px"><input type="text" name="txtpn" value="<%=mob4%>" readonly="true"/></td> 
                     <td width="500px" height="50px">Seller Expected Price</td>
                   <td width="500px" height="50px"><input type="text" name="txtpn" value="<%=exp2%>" readonly="true"/></td> 
                   
               </tr>
                <tr align="center">
                     <td width="500px" height="50px" >Image</td>
                   <td  colspan="4"><img src="<%=img2%>" width="200" height="200"/></td>                                         
               </tr>
               <tr align="center">
                   <td width="500px" height="50px"colspan="4"><input type="submit" value="Confirm Bid" name="Confirm Bid" style="background-color: #3300ff;font-weight: bold;color: white;"/> </td>
                  
               </tr>
           </tbody>
           <%
        
           
           
           Statement st2=con.createStatement();
           if(dt!=null && dt!="" && bexp!=null && bexp!="")
               
           
           {
              
          String str2="insert into bid(srno,date,buyer_name,buyer_mob,buyer_mail,buyer_price,product_id,product_name,category,seller_name,seller_mob,seller_price,images)values("+srno1+",'"+dt+"','"+bnm2+"',"+mob5+",'"+bml2+"',"+bexp+","+id2+",'"+pnm2+"', '"+cate2+"','"+snm1+"',"+mob4+","+exp2+",'"+img2+"')";
           int a=st2.executeUpdate(str2);
           out.println("<script>alert('bidding successful...')</script>");
         
           
           
           }
            
           %>                              
       </table>
    </form>
       </div>
                </div>
        </section>
           
               
       <div class="copyright" style="background-color:#F55E63" >
                <div class="container">
                    <p>Developed By:- Swaranjali Borate and Komal Kambire</p>
                </div>
        </div>  
    </body>
</html>



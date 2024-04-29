<%-- 
    Document   : buyerreq_report
    Created on : 26 Feb, 2024, 3:28:45 PM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buyer Request Report</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
       
    </head>
    <body style="background-color:#D5ECB9">
       <%
   String nm1=(String)session.getAttribute("nm");
   %>
  <%
       String snm=request.getParameter("txtnm");
       %>
      
       <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                     
                        
                        <li><a href="buyerreq_report.jsp">Request Report</a></li>
                        <li><a href="buyerregreport.jsp">Buyer</a></li>
                         <li><a href="feedreport.jsp">Feedback</a></li>
                        <li><a href="searchreqreport.jsp">Search Request</a></li>
                         <li><a href="productreport.jsp">Search Product</a></li>
                               
                               
                    </ul>
                </div>
          </div>
              <marquee> username=<%=nm1%></marquee>
        <br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/search.jpg">
                          
                     </div>
                 <form >
       <table border="1" width="800px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Buyer Request</th>
                  
               </tr>
           </thead>
           <tbody>
               <%
               String bnm=null;
               Statement st1=con.createStatement();
       String str1="select * from sellerregistration";
       ResultSet rs1=st1.executeQuery(str1);
               %>
               <tr align="center">
                   <td width="250" height="50" colspan="4">Seller Name</td>
                   <td colspan="10" >
                       <select name="drpsnm">
                           <%
       while(rs1.next())
       {
           snm=rs1.getString(1);
           %>
      
           <option><%=snm%></option>
           <%}%>
                       </select>
                   </td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px"colspan="10"><input type="submit" value="Search" name="Search"  style="background-color: #3300ff;font-weight: bold;color: white;"/> </td>
                  
               </tr>
                <tr>
               <td>Sr.No</td>
               <td>Buyer Name</td>
               <td>Buyer MobileNo</td>
              
               <td>Product Name</td>
               <td>Image</td>
               <td>Expected Price</td>
             
           </tr> 
                <%
       
       
       int id=0;
      
       String mob=null;
       String pnm=null;
       String img=null;
       int eprice=0;
      
       String img1=null;
       snm=request.getParameter("drpsnm");
        
               
       Statement st=con.createStatement();
       String str="select * from bid where seller_name='"+snm+"'";
       ResultSet rs=st.executeQuery(str);
       while(rs.next())
       {
           id=rs.getInt(1);
           bnm=rs.getString(3);
           mob=rs.getString(4);
           
           pnm=rs.getString(8);
           img=rs.getString(13);
           img1="images/"+img;
           eprice=rs.getInt(6);
         
          
       
     
     %>
           </tbody>
         
           <tr align="center">
               <td><%=id%></td>
                <td><%=bnm%></td>
                 <td><%=mob%></td>
             
               <td><%=pnm%></td>
               <td><img src="<%=img%>" width="100" height="100"/></td>
               <td><%=eprice%></td>
               
              </tr>
          <% 
       }
          %>
       </table>
      
           </tbody>
         
          
      
      
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

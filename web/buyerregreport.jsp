<%-- 
    Document   : buyerregreport
    Created on : 29 Feb, 2024, 8:01:04 PM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Report</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
       
    </head>
    <body style="background-color:#D5ECB9">
       <%
   String nm1=(String)session.getAttribute("nm");
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
        
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/report.jpg">
                          
                     </div>
                 <form method="post" name="form">
       <table border="1" width="800px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Registration Report</th>
                  
               </tr>
           </thead>
           <tbody>
                <tr align="center">        
                    <td  width="500px" height="50px"><b>Sr.No</b></td>
                    <td  width="500px" height="50px"><b>name</b></td>
                       <td width="500px" height="50px"><b>Address</b></td>
                    <td width="500px" height="50px"><b>MobileNo</b></td>
              <td width="500px" height="50px"><b>email</b></td>
                   
           </tr> 
                <%
       
       
       String nm=null;
       String add=null;
       String mob=null;
       String email=null;
       
       int sr=0;
      
       Statement st=con.createStatement();
       String str="select * from buyerregistration";
       ResultSet rs=st.executeQuery(str);
      
       while(rs.next())
       {
          
          nm=rs.getString(1);
           add=rs.getString(2); 
           mob=rs.getString(3);
         email=rs.getString(4);
          
          sr=rs.getInt(7);
     
     %>
           </tbody>
         
           <tr align="center"> 
               <td width="500px" height="50px"><%=sr%></td>
                <td width="500px" height="50px"><%=nm%></td>
                <td width="500px" height="50px"><%=add%></td>
                 <td width="500px" height="50px"><%=mob%></td>
              <td width="500px" height="50px"><%=email%></td>
               
               
              </tr>
          <% 
       }
          %>
          </tbody>
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

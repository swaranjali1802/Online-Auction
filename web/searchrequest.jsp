<%-- 
    Document   : searchrequest
    Created on : 21 Feb, 2024, 10:01:15 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Request</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <script language="javascript">
     function editRecord(id)
        {
           var f = document.form;
            f.method="post";
            f.action='final.jsp?id=' +id;
            f.submit();
     }
    </script>
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
                        <li><a href="sellerhomepage.jsp">Home</a></li>
                        
                        <li><a href="searchrequest.jsp">Bid Request</a></li>
                        <li><a href="website.jsp">Logout</a></li>    
                    </ul>
                </div>
          </div>
    
                  <marquee> username=<%=nm1%></marquee>

        <br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B" >
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/search.jpg">
                          
                     </div>
                    
                     <div class="about-text">
                         <form method="post" name="form">
       <table border="1" width="500px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Search Request</th>
                  
               </tr>
           </thead>
           <tbody>
              <%
               String snm=null;
               Statement st1=con.createStatement();
               String str1="select* from sellerregistration where sellerusername='"+nm1+"'";
               ResultSet rs1=st1.executeQuery(str1);
               while(rs1.next())
               {
               snm=rs1.getString(1);
               }
               %>
               <tr align="center">
                   <td width="250" height="50" colspan="4">Username</td>
                   <td colspan="5"> <%=snm%></td>
               </tr>
               <tr align="center">
                   <td width="250" height="50" colspan="4">Date</td>
                   <td colspan="5"> <input type="text" name="txtdt" value="" >("yyyy-MM-dd")</td>
               </tr>
               <tr align="center">
                   <td width="500px" height="50px" colspan="12"  ><input type="submit" value="Search" name="Search" style="background-color: #1212DE;font-weight: bold;color: white;" /> </td>
                  
               </tr>
               
       <tr >
               <td>Sr.No</td>
                <td>Date</td>
               <td>Buyer Name</td>
               <td>Buyer MobileNo</td>
                <td>Buyer Email</td>
               <td>Category</td>
               <td>Product Name</td>
               <td>Expected Price</td>
               
           </tr> 
                <%
       
       
       
       String dt=request.getParameter("txtdt");
       
         int srno=0;
       String bnm=null;
       String mob=null;
       String bml=null;
       String cate=null;
       String pnm=null;
      int bexp=0;
               
       Statement st=con.createStatement();
       String str="select * from bid where date='"+dt+"' and seller_name='"+snm+"'";
       ResultSet rs=st.executeQuery(str);
       while(rs.next())
       {
           srno=rs.getInt(1);
           dt=rs.getString(2);
           bnm=rs.getString(3);
           mob=rs.getString(4);
           bml=rs.getString(5);
           cate=rs.getString(9);
           pnm=rs.getString(8);
           bexp=rs.getInt(6);
           
         // out.print(pnm);
          
          
       
     
     %>
       
      
           </tbody>
       <tr>
           <td><%=srno%></td>
           <td><%=dt%></td>
           <td><%=bnm%></td>
            <td><%=mob%></td>
             <td><%=bml%></td>
             <td><%=cate%></td>
           <td><%=pnm%></td>
            
           <td><%=bexp%></td>
           <td align="center"><input type="button" name="Final Bidding" value="Final Bidding" style="background-color: #3300ff;font-weight: bold;color: white;" onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>
       
           <% 
       }
          %>
       </table>
      
        </form>
       </div>
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

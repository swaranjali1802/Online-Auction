<%-- 
    Document   : searchproduct
    Created on : 21 Feb, 2024, 9:36:49 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Product</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <script language="javascript">
        function editRecord(id)
        {
            var f = document.form;
            f.method="post";
            f.action='buyerbid.jsp?id=' +id;
            f.submit();
        }
    </script>
    </head>
    <body style="background-color:#D5ECB9">
       <%
   String nm1=(String)session.getAttribute("nm");
   %>
       <!-- header -->
       <%
       String cate=request.getParameter("category");
       %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                        <li><a href="buyerhomepage.jsp">Home</a></li>
                        
                         <li><a href="searchproduct.jsp">Search Product</a></li>
                        <li><a href="website.jsp">Logout</a></li>         
                    </ul>
                </div>
          </div>
              <marquee>username=<%=nm1%></marquee>
        <br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B" >
                
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/search.jpg">
                          
                     </div>
                  <form method="post" name="form">
       <table border="1" width="500px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Search Product</th>
                  
               </tr>
           </thead>
           <tbody>
               <tr align="center">
                   <td width="250" height="50" colspan="4">Category</td>
                   <td colspan="10"><select name="category">
                           <option>furniture</option>
                           <option>electronic Product</option>
                           <option>Bikes</option>
                       </select> 
                   </td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px" colspan="10"><input type="submit" value="Search" name="Search"  style="background-color: #3300ff;font-weight: bold;color: white;"/> </td>
                  
               </tr>
                <tr>
               <td>Sr.No</td>
               <td>Seller Name</td>
               <td>Seller MobileNo</td>
               <td>Category</td>
               <td>Product Name</td>
               <td>Image</td>
               <td>Expected Price</td>
               <td>Valid Date</td>
               <td>Upto Date</td>
           </tr> 
                <%
       
       
       int id=0;
       String snm=null;
       String mob=null;
       String pnm=null;
       String img=null;
       int eprice=0;
       String vdt=null;
       String updt=null;
       String img1=null;
      
       
               
       Statement st=con.createStatement();
       String str="select * from seller_addproduct where category='"+cate+"'";
       
       
        
       ResultSet rs=st.executeQuery(str);
       while(rs.next())
       {
           id=rs.getInt(1);
           snm=rs.getString(8);
           mob=rs.getString(9);
           cate=rs.getString(2);
           pnm=rs.getString(3);
           img=rs.getString(4);
           img1="images/"+img;
           eprice=rs.getInt(5);
           vdt=rs.getString(6);
           updt=rs.getString(7);
       
       
     
     %>
           </tbody>
         
           <tr>
               <td><%=id%></td>
                <td><%=snm%></td>
                 <td><%=mob%></td>
               <td><%=cate%></td>
               <td><%=pnm%></td>
               <td><img src="<%=img1%>" width="100" height="100"/></td>
               <td><%=eprice%></td>
               <td><%=vdt%></td>
               <td><%=updt%></td>
              
               <td align="center"><input type="button" name="Bidding" value="Bidding" style="background-color: #3300ff;font-weight: bold;color: white;" onclick="editRecord(<%=rs.getInt(1)%>)"/></td></tr>
          <% 
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

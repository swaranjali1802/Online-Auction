<%-- 
    Document   : forget
    Created on : 22 Feb, 2024, 9:12:17 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body style="background-color:#D5ECB9">
      
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                         <li><a href="website.jsp">Home</a></li>
                        
                        <li><a href="website.jsp">Logout</a></li>      
                    </ul>
                </div>
          </div>
         <br><br><br><br><br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/f1.avif">
                          
                     </div>
        <form>
       <table border="1" width="500px" bgcolor="#EE96AA">
           <thead>
               <tr align="center">
                   <th colspan="2" height="50px">Login</th>
                  
               </tr>
           </thead>
           <tbody>
               <tr align="center">
                   <td width="500px" height="50px">Username</td>
                   <td width="500px" height="50px"><input type="text" name="txtnm" value="" placeholder="Enter Username" /></td>
                   
            </tr>
                <tr align="center">
                   <td width="500px" height="50px">Password</td>
                   <td width="500px" height="50px"><input type="password" name="txtpass" value="" placeholder="Enter Password"/></td>
               </tr>
               <tr align="center">
                   <td width="500px" height="50px" colspan="2"><input type="submit" value="Update" name="Update"/> 
                   
                  
               </tr>
           </tbody>
            <%
        
       String snm=request.getParameter("txtnm");
       String pass=request.getParameter("txtpass");
     
       Statement st=con.createStatement();
       if(pass!=null && pass!="")
       {
       String str="update sellerregistration set sellerpassword='"+pass+"' where sellerusername='"+snm+"' ";
       int a=st.executeUpdate(str);
       out.println("<script>alert('Password Updated...')</script>");
       }
       %>
       
       
       <%
        String bnm=request.getParameter("txtnm");
       String bpass=request.getParameter("txtpass");
     
       Statement st1=con.createStatement();
       if(bpass!=null && bpass!="")
       {
       String str="update buyerregistration set buyerpassword='"+bpass+"' where buyerusername='"+bnm+"' ";
       int a=st1.executeUpdate(str);
       out.println("<script>alert('Password Updated...')</script>");
        //response.sendRedirect("buyer_login.jsp");
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

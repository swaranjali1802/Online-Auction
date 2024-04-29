<%-- 
    Document   : seller
    Created on : 21 Feb, 2024, 9:20:32 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Login</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body style="background-color:#D5ECB9">
       <%
       String snm=request.getParameter("txtlogin");
       String pass=request.getParameter("txtpass");
       %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                        
                        <li><a href="seller.jsp">Login </a></li>
                        <li><a href="website.jsp">Logout</a></li>
                              
                    </ul>
                </div>
          </div>
        <br><br>
         <section id="about" class="about-section-padding" >
            <div class="container" >
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/login.jpg">
                          
                     </div>
                    
                     <div class="about-text">
                         <form>
       <table border="1" width="500px" align="center" bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="2" height="50px">Seller Login</th>
                  
               </tr>
           </thead>
           <tbody >
                <tr align="center">
                   <td width="500px" height="50px"><b>Username</b></td>
                   <td width="500px" height="50px"><input type="text" name="txtlogin" value="" placeholder="Enter Username"/></td>
                   
               </tr>
                <tr align="center">
                    <td width="500px" height="50px"><b>Password</b></td>
                   <td width="500px" height="50px"><input type="password" name="txtpass" value="" placeholder="Enter Password" /></td>
               </tr>
               <tr align="center">
                   <td width="500px" height="50px" colspan="2"><input type="submit" value="Login" name="Login" style="background-color: #1212DE;font-weight: bold;color: white;"/></td>
                   
               </tr>
               <tr align="center">
                  
                       <td colspan="2" width="500px" height="50px"><a href="forget.jsp"><b>Forget Password</b></a></td>
               </tr>
              <tr align="center">
                   
                  <td colspan="2" width="500px" height="50px"><a href="sellernewaccount.jsp"><b>New Account</b></a></td>
               </tr>
               
           </tbody>
       </table>
                             <%
       Statement st=con.createStatement();
       if(snm!=null && snm!="" && pass!=null && pass!="")
       {
       String str="select * from sellerregistration where sellerusername='"+snm+"' and sellerpassword='"+pass+"'";
       ResultSet rs=st.executeQuery(str);
       if(rs.next())
       {
       out.println("<script>alert('Login successful...')</script>");
       session.setAttribute("nm", snm);
       response.sendRedirect("sellerhomepage.jsp");
       }
       else
       {
       out.println("<script>alert('Login failed...')</script>");
      // response.sendRedirect("seller_newaccount.jsp");
       }
       }
       %>
       
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

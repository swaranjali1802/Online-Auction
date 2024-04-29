<%-- 
    Document   : sendmessage
    Created on : 2 Mar, 2024, 10:15:36 PM
    Author     : Hp
--%>

<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
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
              <marquee> username=<%=nm1%></marquee>
        <br><br><br><br><br>
        <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/search.jpg">
                          
                     </div>
                  <form action="https://formsubmit.co/Komalkambire17@gmail.com" method="post" >
       <table border="1" width="500px"  bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="10" height="50px">Buyer bid</th>
                  
               </tr>
           </thead>
           <tbody>
             <%
              
                String sr=null;
               String bnm=null;
               String bmob=null;
                String pn=null;
                String email=null;
                String eprice=null;
                 String snm=null;
               String mob=null;
                String msg1=null;
                sr=request.getParameter("id");
               
       
               Statement st2=con.createStatement();
               String str2="select * from bid where srno="+sr+"";
               
               ResultSet rs2=st2.executeQuery(str2);
                while(rs2.next())
               {
               sr=rs2.getString(1);
               bnm=rs2.getString(3);
              
                bmob=rs2.getString(4); 
                email=rs2.getString(5);
                 eprice=rs2.getString(6);
                pn=rs2.getString(8);
               
                snm=rs2.getString(10);
                mob=rs2.getString(11);

               }
            
               %>
                <tr align="center">
                   <td width="500px" height="50px">sr.no</td>
                   <td width="500px" height="50px"><%=sr%></td> 
               </tr>
               
               <tr align="center">
                   <td width="500px" height="50px">Buyer Name</td>
                   <td width="500px" height="50px"><%=bnm%> </td> 
               </tr>
               
               <tr align="center">
                   <td width="500px" height="50px">Buyer Mobile No</td>
                   <td width="500px" height="50px"><%=bmob%></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer email</td>
                   <td width="500px" height="50px"><%=email%></td> 
               </tr>
                <tr align="center">
                   <td width="500px" height="50px">Product Name</td>
                   <td width="500px" height="50px"><%=pn%> </td>
               </tr>
               <tr align="center">
               <td width="500px" height="50px">Buyer Expected Price</td>
                   <td width="500px" height="50px"><%=eprice%></td>  
               </tr>
                
               <tr align="center">
                   <td width="500px" height="50px">Seller Name</td>
                   <td width="500px" height="50px"><%=snm%></td>
               </tr>
                <tr align="center">
                   <td width="500px" height="50px">Seller Mobile no</td>
                   <td width="500px" height="50px"><%=mob%></td>
               </tr> 
               
           </tbody>
          
               <tr align="center">
                    <td width="500px" height="50px">Send Message</td>
                    <td width="500px" height="50px"><textarea name="message" name="txtsm" value="" /></textarea> </td>
               </tr>  
              
                
           <input type="hidden" name="_captcha" value="false">
           <input type="hidden" name="_next" value="https://yourdomain.co/thanks.html">
               <tr align="center">
                   <td align="center" colspan="4"><input type="button"name="Send Message" value="Send Message"style="background-color: #3300ff;font-weight: bold;color: white;"onclick="editRecord()"/></td>
               </tr>                                 
       </table>
          
          <%
        msg1=request.getParameter("txtsm");
           Statement st=con.createStatement();
             
        String str4="insert into message(Seller_Name,smob,bprice,bemail,Buyer_Name,pname,message,srno,bmob)values('"+snm+"',"+mob+","+eprice+",'"+email+"','"+bnm+"','"+pn+"','"+msg1+"',"+sr+","+bmob+")";
         int a=st.executeUpdate(str4);
          out.println("<script>alert('send message successful...')</script>");
          //  out.println("<script>alert('final bid successful...')</script>");
            
           %>  
           <%
      /*
       
       msg1=request.getParameter("txtsm");
       
        Statement st1=con.createStatement();
        
        if(  msg1!=null && msg1!="")
        {
        String str1="insert into message(Seller_Name,smob,bprice,bemail,Buyer_Name,pname,message,)values('"+snm+"',"+mob+","+eprice+",'"+email+"','"+bnm+"','"+pn+"','"+msg1+"')";
        int a=st1.executeUpdate(str1);
         out.println("<script>alert('send message successful...')</script>");
        }*/
       %>
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

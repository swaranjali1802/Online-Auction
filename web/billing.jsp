<%-- 
    Document   : billing
    Created on : 22 Feb, 2024, 10:07:29 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Billing</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body style="background-color:#D5ECB9">
      <%
   String nm1=(String)session.getAttribute("nm");
  
   
   
   String sr1=null;
   
   String dt=null;
    String pnm=null;
       String cate=null;
       String bnm=null;
       String mob=null;
       String bml=null;
       String snm=null;
       String mob2=null;
       String exp=null;
       String img=null;
       String img1=null;
       String bexp=null;
        String cate1=null;
        String sr=null;
       
  

   %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                        <li><a href="buyerhomepage.jsp">Home</a></li>
                        
                       
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
                    <form>
       <table border="1" width="800px" bgcolor="D883DA" >
           <thead>
               <tr align="center" >
                   <th colspan="4" height="50px" >Billing</th>
                  
               </tr>
           </thead>
           <tbody>
               <%
               
               String srno1=(String)session.getAttribute("srno2");
                String bnm2=(String)session.getAttribute("bnm1");
                 String bmob=(String)session.getAttribute("bmob1");
                  String snm2=(String)session.getAttribute("snm1");
                  String smob1=(String)session.getAttribute("smob");
                   String pnm2=(String)session.getAttribute("pnm1");
                    String price1=(String)session.getAttribute("price");
               
               %>
               
               <%
             int i=0;
               Statement st=con.createStatement();
               String str="select count(*) from Billing";
               ResultSet rs=st.executeQuery(str);
               if(rs.next())
               {
               i=rs.getInt(1);
               i++;
               }
               %>
               <tr align="center">
                   <td width="500px" height="50px">SrNo</td>
                    <td width="500px" height="50px"><%=srno1%> </td>
               </tr>
               <tr align="center">
                    <td width="500px" height="50px"> Receipt No</td>
           <td width="500px" height="50px"><%=i%></td>
                      
               </tr>
               
             
               
                <tr align="center">
                   <td width="500px" height="50px">Buyer Name</td>
                   <td width="500px" height="50px" ><%=bnm2%></td> 
                </tr>
                <tr align="center">
                   <td width="500px" height="50px">Buyer Mobile No</td>
                   <td width="500px" height="50px"><%=bmob%></td> 
               </tr>
                <tr align="center">
                     <td width="500px" height="50px"> Price</td>
                     <td width="500px" height="50px"><%=price1%></td>   
            </tr>
            <tr align="center">
                   <td width="500px" height="50px">Product Name</td>
                    <td width="500px" height="50px"><%=pnm2%></td>  
                   
               </tr>
               
               
              <tr align="center">
               <td width="500px" height="50px">Seller Name</td>
                    <td width="500px" height="50px"><%=snm2%></td>  
              </tr>      
              <tr align="center">
                   <td width="500px" height="50px">Seller Mobile No</td>
                    <td width="500px" height="50px"><%=smob1%></td>  
               </tr>
               
           
           
             
           </tbody>
           
          <%
        
          
         
           
           Statement st1=con.createStatement();
             
        String str1="insert into Billing(srno,receiptno,buyername,buyermob,sellername,sellermob,price,productnm)values("+srno1+","+i+",'"+bnm2+"',"+bmob+",'"+snm2+"',"+smob1+","+price1+",'"+pnm2+"')";
         int a=st1.executeUpdate(str1);
           // out.println("<script>alert('Billing successful...')</script>");
            
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
</html>

<%-- 
    Document   : final
    Created on : 3 Apr, 2024, 8:10:00 PM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final Bid</title>
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
       <table border="1" width="500px" bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="2" height="50px">Final Bid</th>
                  
               </tr>
           </thead>
           <tbody>
              <%
              
                String sr=null;
               String bnm=null;
               String bmob=null;
                String pn=null;
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
                   <td width="500px" height="50px">send Message</td>
                   <td width="500px" height="50px"><%="Your Bid is successful"%></td>
                   
       
               </tr>
              
             <tr align="center">
                  
                 <td colspan="4"><a href="billing.jsp">Receipt</a></td>
               </tr>
       </table>
                  
                     
  <%
        
          
             msg1="Your Bid is successful";
           
           
           Statement st=con.createStatement();
             
        String str4="insert into sellerfinalbid(buyername,buyermobno,finalbidprice,productname,sellername,sellermobno,srno,msg)values('"+bnm+"',"+bmob+","+eprice+",'"+pn+"','"+snm+"',"+mob+","+sr+",'"+msg1+"')";
         int a=st.executeUpdate(str4);
          //  out.println("<script>alert('final bid successful...')</script>");
            
           %>   
           
           
            <%
                   String srno=String.valueOf(sr);
                   session.setAttribute("srno2",srno);
                   session.setAttribute("bnm1",bnm);
                   
                   session.setAttribute("bmob1",bmob);
                   session.setAttribute("snm1",snm);
                   session.setAttribute("smob",mob);
                   session.setAttribute("pnm1",pn);
                   session.setAttribute("price",eprice);
                   %>
   </form>
   </section>
    <div class="copyright" style="background-color:#F55E63" >
                <div class="container">
                    <p>Developed By:- Swaranjali Borate and Komal Kambire</p>
                </div>
        </div> 
</body>
</html>


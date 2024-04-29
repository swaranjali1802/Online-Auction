<%-- 
    Document   : buyerbid
    Created on : 22 Feb, 2024, 11:30:28 PM
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
  
     String id1=request.getParameter("id");
   
   
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
     
        String cate1=null;
        %>
      
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                  <div class="rightmenu">
                    <ul>
                        <li><a href="buyerhomepage.jsp">Home</a></li>
                        
                        <li><a href="buyerbid.jsp">Bid</a></li>
                        <li><a href="website.jsp">Logout</a></li>         
                    </ul>
                </div>
          </div>
              <marquee> username=<%=nm1%></marquee>
        <br><br><br>
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
             int sr=0;
               Statement st3=con.createStatement();
               String str3="select count(*) from buyer_bidding";
               ResultSet rs3=st3.executeQuery(str3);
               if(rs3.next())
               {
               sr=rs3.getInt(1);
               sr++;
               }
               %>
                 <%
               int mob1=0;
               Statement st1=con.createStatement();
               String str1="select * from buyerregistration where buyerusername='"+nm1+"'"; 
               ResultSet rs1=st1.executeQuery(str1);
               if(rs1.next())
               {
               bnm=rs1.getString(1);
               mob=rs1.getString(3);
               bml=rs1.getString(4);
               }
               %>
                 <tr align="center">
                   <td width="500px" height="50px">Sr.No</td>
                    <td width="500px" height="50px"><%=sr%></td>
                    <td width="500px" height="50px">Buyer Name</td>
                   <td width="500px" height="50px"><%=bnm%> </td> 
                   
                   
               </tr>
             
                <tr align="center">
                   
                   <td width="500px" height="50px">Buyer Mobile No</td>
                   <td width="500px" height="50px"><%=mob%></td>
                   <td width="500px" height="50px">Buyer Email_id</td>
                   <td width="500px" height="50px"><%=bml%> </td> 
               </tr>
                  <%      
       Statement st=con.createStatement();
       String str="select * from seller_addproduct where id="+id1+"";
       ResultSet rs=st.executeQuery(str);
       if(rs.next())
       {
          
            cate1=rs.getString(2);
           pnm=rs.getString(3); 
           snm=rs.getString(8);
         mob2=rs.getString(9);
          exp=rs.getString(5);
          img=rs.getString(4);
          img1="images/"+img;
       }
     
       
     %>
      <tr align="center">
                     <td width="500px" height="50px">Product Id</td>
                     <td width="500px" height="50px"><%=id1%> </td> 
                   <td width="500px" height="50px">Product Name</td>
                   <td width="500px" height="50px"><%=pnm%> </td> 
                   
               </tr>
              
               <tr align="center">
                   <td width="500px" height="50px">Category</td>
                  <td width="500px" height="50px"><%=cate1%> </td> 
                  <td width="500px" height="50px">Seller Name</td>
                    <td width="500px" height="50px"><%=snm%> </td>   
               </tr>                                       
              <tr align="center">
                   <td width="500px" height="50px">Seller Mobile No</td>
                    <td width="500px" height="50px"><%=mob2%> </td> 
                     <td width="500px" height="50px">Seller Expected Price</td>
                   <td width="500px" height="50px"><%=exp%> </td> 
                   
               </tr>
                 <tr align="center">
                      <td width="500px" height="50px" >Image</td>
                   <td  colspan="4"><img src="<%=img1%>" width="200" height="200" readonly="true"/></td>                                         
               </tr>
               <tr align="center">
                  
                   <td colspan="4"><a href="buyerfinalbid.jsp">Final Bid</a></td>
               </tr>
                 <%
           
               String ss=String.valueOf(sr);
          
            session.setAttribute("sr1", ss);
           %>      
           <%
          
       
           Statement st2=con.createStatement();
          
          String str2="insert into buyer_bidding(buyer_name,buyer_mob_no,buyer_email,product_id,category,product_name,seller_name,seller_mobno,seller_price,image,srno)values('"+bnm+"',"+mob+",'"+bml+"',"+id1+",'"+cate1+"','"+pnm+"','"+snm+"',"+mob2+","+exp+",'"+img1+"',"+sr+")";
           int a=st2.executeUpdate(str2);
          out.println("bidding successful...");
            
           %>   
           </tbody>
       </table>
           
           
           <%
                String srno1=String.valueOf(sr);
                session.setAttribute("sr1", srno1);
                session.setAttribute("bnm1", bnm);
                session.setAttribute("mob1", mob);
                session.setAttribute("bml1", bml);
                  session.setAttribute("id2", id1);
                session.setAttribute("pnm1", pnm);
                 session.setAttribute("cate2", cate1);
                session.setAttribute("snm1", snm);
                session.setAttribute("mob3", mob2);
                session.setAttribute("exp1", exp);
                session.setAttribute("img2", img1);
               
              
               
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

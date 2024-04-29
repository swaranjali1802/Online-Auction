<%-- 
    Document   : addproduct
    Created on : 21 Feb, 2024, 9:32:29 AM
    Author     : Hp
--%>


<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body style="background-color:#D5ECB9">
      
         <%
   String nm1=(String)session.getAttribute("nm");
   %>
      
       <%
     
       String cat=null;
       String pnm=null;
       String img=null;
       String exp=null;
       String vdt=null;
       String updt=null;
       String snm=null;
     String mob=null;
     
     
      
       %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                         <li><a href="sellerhomepage.jsp">Home</a></li>
                        <li><a href="addproduct.jsp">Add Product</a></li>
                        <li><a href="searchrequest.jsp">Bid Request</a></li>
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
                         <img src="images/fiadd.jpg">
                          
                     </div>
                   
                    <form>
       <table border="1" width="500px" bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="2" height="50px">Add Product</th>
                  
               </tr>
           </thead>
           <tbody>
                <%
             int i=0;
               Statement st=con.createStatement();
               String str="select count(*) from seller_addproduct";
               ResultSet rs=st.executeQuery(str);
               if(rs.next())
               {
               i=rs.getInt(1);
               i++;
               }
               %>
                <tr align="center">
                   <td width="500px" height="50px">Id</td>
                   <td width="500px" height="50px"><input type="text" name="txtid" value="<%=i%>" readonly="true" /></td> 
               </tr>
               
              <%
             int mob1=0;
               Statement st2=con.createStatement();
               String str2="select * from sellerregistration where sellerusername='"+nm1+"'";
               ResultSet rs2=st2.executeQuery(str2);
               if(rs2.next())
               {
               snm=rs2.getString(1);
               mob=rs2.getString(3);
               }
               
               %>
                <tr align="center">
                   <td width="500px" height="50px">Seller Name</td>
                    <td width="500px" height="50px"><input type="text" name="txtsn" value="<%=snm%>" /></td> 
               </tr>
               
               <tr align="center">
                   <td width="500px" height="50px">Seller Mobile No</td>
                    <td width="500px" height="50px"><input type="text" name="txtmob" value="<%=mob%>" /></td> 
                   </td> 
               </tr>
               
               <tr align="center">
                   <td width="500px" height="50px">Category</td>
                   <td><select name="txtcate">
                           <option>furniture</option>
                           <option>electronic Product</option>
                           <option>Bikes</option>
                       </select></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Product Name</td>
                   <td width="500px" height="50px"><input type="text" name="txtnm" value="" /></td> 
               </tr>
            
               <tr align="center">
                   <td width="500px" height="50px">Image Path</td>
                   <td ><input type="file" name="fileupload" value="" width="500px" />
                   
                   </td> 
               </tr>
                  <%
             
                  img=request.getParameter("fileupload");
                  File f=new File("images/"+img);
                   String img1=null;
                  img1="images/"+img;
                 
               %>
               <tr align="center">
                   <td width="50" height="50">Display Image </td>
                   <td ><img src="<%=img1%>"  width="100" height="100" /><input type="submit" value="Show Image" name="Show Image" />
                   </td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Expected Price</td>
                   <td width="500px" height="50px"><input type="text" name="txtprice" value="" /></td> 
               </tr>
                <tr align="center">
                   <td width="500px" height="50px">Valid Date</td>
                   <td width="500px" height="50px"><input type="date" name="txtdate" value="" /></td>
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Valid upto Date</td>
                   <td width="500px" height="50px"><input type="date" name="txtpdate" value="" /></td>
               </tr>
               <%  // String s="bid";
               %>
               
               <tr align="center">
                   <td width="500px" height="50px"colspan="2"><input type="submit" value="Submit" name="Submit" style="background-color: #1212DE;font-weight: bold;color: white;"/> </td>
               </tr>
           </tbody>
           
       </table>
                    <%
                    
                     cat=request.getParameter("txtcate");
       pnm=request.getParameter("txtnm");
       exp=request.getParameter("txtprice");
       vdt=request.getParameter("txtdate");
       updt=request.getParameter("txtpdate");
       snm=request.getParameter("txtsn");
       mob=request.getParameter("txtmob");

                   Statement st1=con.createStatement();
                   if (snm!=null && snm!="" && mob!=null && mob!="" && cat!=null && cat!="" && pnm!=null && pnm!="" && img!=null && img!="" && exp!=null && exp!="" && vdt!=null && vdt!="" && updt!=null && updt!="" )
                   {
                  String str1="insert into seller_addproduct(id,sellerusername,sellermobileno,category,product_name,image,expected_price,valid_date,valid_uptodate)values("+i+",'"+snm+"','"+mob+"','"+cat+"','"+pnm+"','"+img+"',"+exp+",'"+vdt+"','"+updt+"')";
                //  String str1="insert into seller_addproduct(id,category,product_name,image,expected_price,valid_date,valid_uptodate,sellerusername,sellermobileno,update)values("+i+",'"+cat+"','"+pnm+"','"+img+"',"+exp+",'"+vdt+"','"+updt+"','"+snm+"','"+mob+"','"+s+"')";
                       int a=st1.executeUpdate(str1);
                   out.println("<script>alert('add product successful...')</script>");
                   }
                       
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

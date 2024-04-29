<%-- 
    Document   : buyernewaccount
    Created on : 21 Feb, 2024, 9:30:28 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller New Account</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <script type="text/javascript">
    
 function validate()
 
{ 
if( document.mobilenumbervalidation.txtmob.value == "" ||
isNaN( document.mobilenumbervalidation.txtmob.value) ||
document.mobilenumbervalidation.txtmob.value.length != 10 )
{
alert( "Please provide a 10 digit no" );
document.mobilenumbervalidation.txtmob.focus() ;

return false;
}
    
var email = document.mobilenumbervalidation.txtemail.value;
atpos = email.indexOf("@");
dotpos = email.lastIndexOf(".");
if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID");
document.mobilenumbervalidation.txtemail.focus() ;
return false;
}

return( true );
}
</script> 
    </head>
    <body style="background-color:#D5ECB9">
      
        <%
      
       String nm=null;
       String add=null;
       String mob=null;
       String email=null;
       String unm=null;
       String pass=null;
       
       nm=request.getParameter("txtnm");
       add=request.getParameter("txtadd");
       mob=request.getParameter("txtmob");
       email=request.getParameter("txtemail");
       unm=request.getParameter("txtunm");
       pass=request.getParameter("txtpass");
       
       %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                     <ul>
                        
                         <li><a href="buyernewaccount.jsp">Buyer New Account </a></li>
                        <li><a href="AboutUs.jsp">About Us</a></li>
                        <li><a href="ContactUs.jsp">Contact Us</a></li>  
                        <li><a href="feedback.jsp">FeedBack</a></li> 
                        <li><a href="website.jsp">Logout</a></li>
                              
                    </ul>
                </div>
          </div>
        <br><br><br><br><br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/create.jpg">
                          
                     </div>                 
            <form method="get" action="" name="mobilenumbervalidation" onsubmit="return(validate());">
       <table border="1" width="500px" bgcolor="D883DA">
           <thead>
               <tr align="center">
                   <th colspan="2" height="50px">Create New Account</th>
                  
               </tr>
           </thead>
           <tbody>
                <%
               int i=0;
               Statement st=con.createStatement();
               String str="select count(*) from buyerregistration";
               ResultSet rs=st.executeQuery(str);
               if(rs.next())
               {
               i=rs.getInt(1);
               i++;
               }
               %>
               <tr align="center">
                   <td width="500px" height="50px">Id</td>
                   <td width="500px" height="50px"><input type="text" name="txtid" value="<%=i%>"  readonly="true" /></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer name</td>
                    <td width="500px" height="50px"><input type="text" name="txtnm" value="" /></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer Address</td>
                  <td width="500px" height="50px"><input type="text" name="txtadd" value="" /></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer Mobile No</td>
                   <td width="500px" height="50px"><input type="text" name="txtmob" value="" /></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer Email id</td>
                  <td width="500px" height="50px"><input type="text" name="txtemail" value="" /></td> 
               </tr>
               <tr align="center">
                   <td width="500px" height="50px">Buyer Username</td>
                  <td width="500px" height="50px"><input type="text" name="txtunm" value="" /></td> 
               </tr>
                <tr align="center">
                   <td width="500px" height="50px"> Buyer Password</td>
                    <td width="500px" height="50px"><input type="password" name="txtpass" value="" /></td>
               </tr>
                 <tr align="center">
                   <td width="500px" height="50px"colspan="2"><input type="submit" value="Sign up" name="Sign Up"/> </td>
               </tr>
           </tbody>
           
       </table>
               <%
                   Statement st1=con.createStatement();
                   if(nm!=null && nm!="" && add!=null && add!="" && mob!=null && mob!="" && email!=null && email!="" && unm!=null && unm!="" && pass!=null && pass!="")
                   {
                   String str1="insert into buyerregistration(id,buyername,buyeraddress,buyermobileno,buyeremailid,buyerusername,buyerpassword)values("+i+",'"+nm+"','"+add+"','"+mob+"','"+email+"','"+unm+"','"+pass+"')";
                   int a=st1.executeUpdate(str1);
                   out.println("<script>alert('Your new account is successful...')</script>");
                      response.sendRedirect("buyer.jsp");
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

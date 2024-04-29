<%-- 
    Document   : feedback
    Created on : 21 Feb, 2024, 9:57:13 AM
    Author     : Hp
--%>
<%@include file="connection.jsp" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body style="background-color:#D5ECB9">
      <%
          int sr=0;
     String nm=null;
     String mob=null;
     String com=null;
    %>
            <div class="menu">
                <div class="leftmenu">
                    <h4>Online Auction</h4>
                </div>
                <div class="rightmenu">
                    <ul>
                        <li><a href="website.jsp">Home</a></li>  
                         <li><a href="feedback.jsp">Feedback</a></li> 
                    </ul>
                </div>
          </div>
        <br><br><br><br><br>
         <section id="about" class="about-section-padding" >
            <div class="container" bgcolor="EDEE8B">
                <div class="row">
                     
                     <div class="about-img">
                         <img src="images/feedback.jpg">
                          
                     </div>
                    <form>
       <table border="1" bgcolor="D883DA">
           <tbody>
               <%
               int i=0;
               Statement st=con.createStatement();
               String str="select count(*) from feedback";
               ResultSet rs=st.executeQuery(str);
               if(rs.next())
               {
               i=rs.getInt(1);
               i++;
               }
               %>
               <tr align="center">
                   <td width="500px" height="50px">sr</td>
                   <td width="500px" height="50px"><input type="text" name="txtid" value="<%=i%>"  readonly="true" /></td> 
               </tr>
              <tr colspan="2" align="center">
                   <td width="200px">Name</td>
                   <td width="300px" height="50"><input type="text" name="txtnm" value="" /></td>
               </tr>
               <tr align="center">
                   <td width="200px">Mobile No</td>
                   <td width="300px" height="50"><input type="text" name="txtmob" value="" /></td>
               </tr>
               <tr colspan="2" align="center">
                   <td width="200px" >FeedBack</td>
                   <td width="400px"height="100"><textarea name="txtfeed" rows="4" cols="20"></textarea></td>
               </tr>
               <tr align="center">
                   <td colspan="2" height="50"><input type="submit" value="feedback" name="Feedback" style="background-color: #1212DE;font-weight: bold;color: white;" /></td>
                 
               </tr>
           </tbody>
       </table>
                         <%
       nm=request.getParameter("txtnm");
        mob=request.getParameter("txtmob");
       com=request.getParameter("txtfeed");
       
        Statement st1=con.createStatement();
        
        if(nm!=null && nm!="" && mob!=null && mob!="")
        {
        String str1="insert into feedback(name,mob,comment,sr)values('"+nm+"',"+mob+",'"+com+"',"+i+")";
        int a=st1.executeUpdate(str1);
         out.println("<script>alert('feedback added successful...')</script>");
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


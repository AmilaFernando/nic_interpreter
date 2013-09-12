<%-- 
    Document   : results
    Created on : Sep 11, 2013, 9:37:44 PM
    Author     : AMILA
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="cse.maven.sample.NicInterpreter"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 <b>Results of the NIC Interpretation</b></h1>
        
        <%  try{ 
             String number =  request.getParameter("nic");
             NicInterpreter nic = new NicInterpreter(number);
        %>
        <br>
        <h2> Birthday Information</h2>
        <% out.println("Year : "+nic.getYear()); %>
        <br>
        <% out.println("Month : "+nic.getMonth()); %>
        <br>
        <% out.println("Date : "+nic.getDate()); %>
        <br>
        <h2> Gender Information</h2>
        <% out.println(nic.getGender()); %>
        <br>
        <h2>Voting information</h2>
        <% out.println("Is voter: "+nic.isVoter());%>
        <%    }
             catch(Exception ex){
                    out.println("Enter NIC number correctly");
                }
        %>
           
            
    </body>
</html>

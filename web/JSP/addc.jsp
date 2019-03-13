<%-- 
    Document   : addc
    Created on : 22 Jan, 2019, 1:46:20 PM
    Author     : pooji
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String num=request.getParameter("msg");
            String com=request.getParameter("com");
            connects co=new connects();
            Connection con=co.con();
            PreparedStatement ps=con.prepareStatement("insert into comment(number,content) values(?,?)");
            ps.setString(1, num);
            ps.setString(2, com);
            int x=ps.executeUpdate();
            if(x>0)
            {
                request.getRequestDispatcher("comment.jsp").forward(request, response);
            }
            %>
    </body>
</html>

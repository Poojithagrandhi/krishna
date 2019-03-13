<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.connects"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Krishna</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/resume.min.css" rel="stylesheet">

  </head>

  <body id="page-top" style="background: lavender">
<%
                  response.setHeader("Cache-Control", "no-cache");
                  response.setHeader("Cache-Control", "no-store");
                  response.setHeader("Pragma", "no-cache");
                  response.setDateHeader("Expires", 0);
                  %>
              <%
          String em=(String) session.getAttribute("email");
          if(em==null)
          {
              response.sendRedirect("logout.jsp");
          }
          %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none">Clarence Taylor</span>
        <span class="d-none d-lg-block">
            <img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="../img/profile.jpg" alt="">
        </span>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-ad"></i>
            <span>ADD</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            
           
            <a class="dropdown-item" href="add_books.jsp">Books</a>
            <a class="dropdown-item" href="add_pasttime.jsp">past times </a>
            <a class="dropdown-item" href="add_gallery.jsp">gallery </a>
            <a class="dropdown-item" href="add_temple.jsp">temple </a>
          </div>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-edit"></i>
            <span>EDIT</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            
            <a class="dropdown-item" href="edit_books.jsp">Books</a>
            <a class="dropdown-item" href="edit_pasttime.jsp">past times </a>
            <a class="dropdown-item" href="edit_gallery.jsp">gallery </a>
            <a class="dropdown-item" href="edit_temple.jsp">temple </a>
          </div>
          </li>
          <li class="nav-item dropdown">
              <span><b><a href="logout.jsp" style="color: burlywood;text-decoration: none">LOGOUT</a></b></span>
          </a>
          </li>
          
        </ul>
      </div>
    </nav>
  <center>
                                    
                    <%
                 connects co=new connects();
                 Connection con=co.con();
                String str="select * from gallery ";
                PreparedStatement ps=con.prepareStatement(str);
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {                                    
                    String ft=rs.getString("fileType");
                    %>
                    <div class="product col-md-3" style="border:2px solid pink;padding: 20px;background: white">
                                <div class="product-img">
                                    <%
                                        if(ft.equals("image/jpg") ||ft.equals("image/jpeg") || ft.equals("image/png"))
                                                                                       {
                                    %>
                                    <center> 
                                        <h4><%= rs.getString("title") %></h4>
                                        <img src="../gallery?msg=<%=rs.getString("id")%>"  height="200" width="200"/>
                                        <a href="edit1.jsp?a=<%=rs.getString("imgid")%>&b=<%=rs.getString("title")%>"><img src="../img/edit.jpg"  height="20" width="20"/></a>
                                        <a href="delete1.jsp?a=<%=rs.getString("imgid")%>"><img src="../img/delete.jpg"  height="20" width="20"/></a>
                                    </center>
                                </div>
                    </div>
		                  
                                     <%
                     
                    }
                }
                                        %>

  </center>									
                                                                                        <!-- Products tab & slick -->
                    
                
                </div>
            
    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../js/resume.min.js"></script>

  </body>

</html>

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

  <body id="page-top" style="background: #ccccff">

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
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="login.jsp">EDIT</a>
          </li>
          <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="../index.html">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="books.jsp">Books</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="pasttimes.jsp">Past times</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="gallery.jsp">gallery</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="temple.jsp">temple</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="timeline.jsp">timeline</a>
          </li>
        </ul>
      </div>
    </nav>

  <center>
                    <%
                 connects co=new connects();
                 Connection con=co.con();
                String str="select * from comment where number=?";
                PreparedStatement ps=con.prepareStatement(str);
                ps.setString(1, request.getParameter("msg"));
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {                                                    
                 
                    %>
                    <div class="product-body col-md-6 " style="border: 2px solid lavender;background: white;padding: 5px">
                        <p><%= rs.getString("content") %></p>
                    </div>
                    <%
                                                                           }
                                        %>
                                        <div class="form-control col-md-6"  >
                                            <form method="post" action="addc.jsp?msg=<%= request.getParameter("msg") %>" style="border: 2px solid lavender;padding: 50px">
                                                <textarea name="com" required="true" style="width: 400px;height: 200px"></textarea><br>
                                                <input type="submit" value="ADD"/>
                                            </form>
                                        </div>
  </center>
      
    <!-- Bootstrap core JavaScript -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="../js/resume.min.js"></script>

  </body>

</html>

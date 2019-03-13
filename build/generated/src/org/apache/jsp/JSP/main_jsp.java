package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import main.connects;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("  <head>\n");
      out.write("\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("    <title>Krishna</title>\n");
      out.write("\n");
      out.write("    <!-- Bootstrap core CSS -->\n");
      out.write("    <link href=\"../vendor/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom fonts for this template -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"../vendor/fontawesome-free/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("    <!-- Custom styles for this template -->\n");
      out.write("    <link href=\"../css/resume.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("\n");
      out.write("  <body id=\"page-top\" >\n");
      out.write("      ");

          String em=(String) session.getAttribute("email");
          out.print(em);
          if(em==null)
          {
              response.sendRedirect("logout.jsp");
          }
          
      out.write("\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary fixed-top\" id=\"sideNav\">\n");
      out.write("      <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">\n");
      out.write("        <span class=\"d-block d-lg-none\">Clarence Taylor</span>\n");
      out.write("        <span class=\"d-none d-lg-block\">\n");
      out.write("            <img class=\"img-fluid img-profile rounded-circle mx-auto mb-2\" src=\"../img/profile.jpg\" alt=\"\">\n");
      out.write("        </span>\n");
      out.write("      </a>\n");
      out.write("      <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("        <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("      </button>\n");
      out.write("      <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("        <ul class=\"navbar-nav\">\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"pagesDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            <i class=\"fas fa-fw fa-ad\"></i>\n");
      out.write("            <span>ADD</span>\n");
      out.write("          </a>\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"pagesDropdown\">\n");
      out.write("            \n");
      out.write("            <a class=\"dropdown-item\" href=\"add_books.jsp\">Books</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"add_pasttime.jsp\">past times </a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"add_gallery.jsp\">gallery </a>\n");
      out.write("          </div>\n");
      out.write("          </li>\n");
      out.write("          <li class=\"nav-item dropdown\">\n");
      out.write("            <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"pagesDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("            <i class=\"fas fa-fw fa-edit\"></i>\n");
      out.write("            <span>EDIT</span>\n");
      out.write("          </a>\n");
      out.write("          <div class=\"dropdown-menu\" aria-labelledby=\"pagesDropdown\">\n");
      out.write("            \n");
      out.write("            <a class=\"dropdown-item\" href=\"edit_books.jsp\">Books</a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"edit_pasttime.jsp\">past times </a>\n");
      out.write("            <a class=\"dropdown-item\" href=\"edit_gallery.jsp\">gallery </a>\n");
      out.write("          </div>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("  <center>\n");
      out.write("      <div class=\"col-12\">\n");
      out.write("          <font><h2 style=\"color: #ff6699\">WELCOME TO THE KRISHNA'S PAGE</h2></font>\n");
      out.write("          <img src=\"../img/profile.jpg\" height=\"800px\"/>\n");
      out.write("          \n");
      out.write("      </div>          \n");
      out.write("  </center>\n");
      out.write("    <!-- Bootstrap core JavaScript -->\n");
      out.write("    <script src=\"../vendor/jquery/jquery.min.js\"></script>\n");
      out.write("    <script src=\"../vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Plugin JavaScript -->\n");
      out.write("    <script src=\"../vendor/jquery-easing/jquery.easing.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- Custom scripts for this template -->\n");
      out.write("    <script src=\"../js/resume.min.js\"></script>\n");
      out.write("\n");
      out.write("  </body>\n");
      out.write("\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

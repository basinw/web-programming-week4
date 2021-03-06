/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author bas
 */
public class ReadFavoriteSubjectServlet extends HttpServlet {

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
   * methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    
    String name = request.getParameter("name");
    if(name.trim().length() == 0) {
      name = "*** Missing name ***";
    }
    request.setCharacterEncoding("utf8");
    String email = request.getParameter("email");
    String[] favoriteSubjects = request.getParameterValues("subjects");
    Map<String, String[]> paramMap = request.getParameterMap();
    
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {
      /* TODO output your page here. You may use following sample code. */
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head>");
      out.println("<title>Servlet ReadFavoriteSubjectServlet</title>");      
      out.println("</head>");
      out.println("<body>");
      out.println("<h3>Parameters: </h3><hr>");
      out.println("Name = " + name + "<br />");
      out.println("Email Address = " + email + "<br />");
      out.println("Favorite Subjects: <br/>");
      for (String favSubj : favoriteSubjects) {
        out.println("&nbsp; &nbsp; <input type='checkbox' checked />" + favSubj + "<br>");
      }
      out.println("<hr>");
      
      out.println("<h3>Parameters Using Map: </h3> <hr>");
      Set<Map.Entry<String, String[]>> entrySet = paramMap.entrySet();
      for (Map.Entry<String, String[]> entry : entrySet) {
        String[] values = entry.getValue();
        out.println(entry.getKey() + ": ");
        out.println(String.join(", ", values));
        out.print("\b\b<br>");
      }
      out.println("<hr>");
      out.println("<a href='FavoriteSubjectForm.html'>Go to Form</a>");
      out.println("</body>");
      out.println("</html>");
    }
  }

  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    processRequest(request, response);
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    processRequest(request, response);
  }

  /**
   * Returns a short description of the servlet.
   *
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}

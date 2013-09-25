package com.java.asep.web.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QuizDemoServlet
 */
public class QuizDemoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    // public QuizDemoServlet() {
    // super();
    // // TODO Auto-generated constructor stub
    // }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    @Override
    protected void doGet(HttpServletRequest request,
	    HttpServletResponse response) throws ServletException, IOException {
	PrintWriter writer = response.getWriter();
	writer.println("<html>");
	writer.println("<body>");
	writer.println("<h1>My First Heading</h1>");
	writer.println("<p>My first paragraph.</p>");
	writer.println("</body>");
	writer.println("</html>");

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    // @Override
    // protected void doPost(HttpServletRequest request,
    // HttpServletResponse response) throws ServletException, IOException {
    // // TODO Auto-generated method stub
    // }

}

package com.inesmartinez.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;

/**
 * Servlet implementation class HolaMundo2
 */
public class HolaMundo2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HolaMundo2() {
        super();
        // TODO Auto-generated constructor stub
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter mensajes = response.getWriter();
		mensajes.println("<!doctype html>");
		mensajes.println("<html><head></head><body>");
		mensajes.println("<style>.dia{width:200px;height:200px;border:1px solid black;float:left;}</style>");
		
		for(int dia = 1; dia <= 30; dia++) {
			mensajes.println("<div class='dia'>" + dia + "</div>");
		}
		
		mensajes.println("</body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

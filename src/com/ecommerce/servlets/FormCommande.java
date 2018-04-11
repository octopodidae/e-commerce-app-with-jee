package com.ecommerce.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormCommand
 */
@WebServlet( "/FormCommand" )
public class FormCommande extends HttpServlet {

    private static final long  serialVersionUID = 1L;

    public static final String VUE              = "/WEB-INF/jsp/formCommande.jsp";

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

    }

}

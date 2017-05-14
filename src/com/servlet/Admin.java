package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.octest.beans.Authentification;

@WebServlet( "/Admin" )
public class Admin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    public static boolean     authent          = false;

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/admin.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        String login = request.getParameter( "login" );
        String password = request.getParameter( "pass" );
        Authentification authent = new Authentification();
        HttpSession session = request.getSession();

        authent.autorisation = authent.checkAuthentification( request, login, password );

        session.setAttribute( "login", login );
        session.setAttribute( "password", password );
        session.setAttribute( "authent", authent.autorisation );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/admin.jsp" ).forward( request, response );
    }

}

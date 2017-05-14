package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.bdd.ConnectionDB;

@WebServlet( "/Modify" )
public class Modify extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    public static final String PATH_PICTURE     = "/June/vendors/img/";

    public Modify() {
        super();

    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        ConnectionDB tableData = new ConnectionDB();

        request.setAttribute( "datasqls", tableData.getAd( 0 ) );
        request.setAttribute( "PATH_PICTURE", PATH_PICTURE );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/modify.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/modify.jsp" ).forward( request, response );
    }

}

package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.bdd.ConnectionDB;

@WebServlet( "/Buy" )
public class Buy extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    public static final String PATH_PICTURE     = "/June/vendors/img/";

    public Buy() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        ConnectionDB tableData = new ConnectionDB();

        request.setAttribute( "datasqls", tableData.getAd( 0 ) );
        request.setAttribute( "PATH_PICTURE", PATH_PICTURE );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/buy.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/buy.jsp" ).forward( request, response );

    }

}

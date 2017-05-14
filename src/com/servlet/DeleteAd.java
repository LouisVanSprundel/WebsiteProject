package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.bdd.ConnectionDB;

@WebServlet( "/DeleteAd" )
public class DeleteAd extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    private int                id;
    String                     delete;
    public static final String PATH_PICTURE     = "/June/vendors/img/";

    public DeleteAd() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        id = Integer.parseInt( request.getParameter( "id" ) );
        request.setAttribute( "id", id );
        delete = request.getParameter( "delete" );
        request.setAttribute( "delete", delete );
        if ( delete.equals( "1" ) ) {

            ConnectionDB tableData = new ConnectionDB();
            tableData.DeleteAd( id );
        } else {

            ConnectionDB tableData = new ConnectionDB();

            request.setAttribute( "datasqls", tableData.getAdByID( id ) );

        }
        request.setAttribute( "PATH_PICTURE", PATH_PICTURE );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/deleteAd.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/deleteAd.jsp" ).forward( request, response );
    }

}

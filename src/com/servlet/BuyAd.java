package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.bdd.ConnectionDB;
import com.octest.beans.Datasql;

/**
 * Servlet implementation class BuyAd
 */
@WebServlet( "/BuyAd" )
public class BuyAd extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    private int                id;
    public static final String PATH_PICTURE     = "/June/vendors/img/";

    public BuyAd() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {
        id = Integer.parseInt( request.getParameter( "id" ) );
        int nbr;
        ConnectionDB tableData = new ConnectionDB();

        request.setAttribute( "datasqls", tableData.getAdByID( id ) );
        List<Datasql> datasqls = tableData.getAdByID( id );
        Datasql adID = datasqls.get( 0 );
        String[] picture = { adID.getPicture1(), adID.getPicture2(), adID.getPicture3(),
                adID.getPicture4(), adID.getPicture5() };

        // if ( picture[0].isEmpty() ) {
        // nbr = 0;
        // } else if ( picture[1].isEmpty() ) {
        // nbr = 1;
        // } else if ( picture[2].isEmpty() ) {
        // nbr = 2;
        // } else if ( picture[3].isEmpty() ) {
        // nbr = 3;
        // } else if ( picture[4].isEmpty() ) {
        // nbr = 4;
        // } else {
        // nbr = 5;
        // }

        request.setAttribute( "PATH_PICTURE", PATH_PICTURE );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/buyAd.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/buyAd.jsp" ).forward( request, response );

    }

}

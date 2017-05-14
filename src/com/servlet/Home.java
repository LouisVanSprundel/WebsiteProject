package com.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.conn.bdd.ConnectionDB;
import com.octest.beans.EmailUtility;

//import sun.rmi.transport.Transport;

/**
 * Servlet implementation class Home
 */
@WebServlet( "/Home" )
public class Home extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    public static final String PATH_PICTURE     = "/June/vendors/img/";
    private String             host;
    private String             port;
    private String             user;
    private String             pass;

    public Home() {
        super();
        // reads SMTP server setting from web.xml file
        // TODO Auto-generated constructor stub
    }

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter( "host" );
        port = context.getInitParameter( "port" );
        user = context.getInitParameter( "user" );
        pass = context.getInitParameter( "pass" );
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        ConnectionDB tableData = new ConnectionDB();

        request.setAttribute( "datasqls", tableData.getAd( 6 ) );
        request.setAttribute( "PATH_PICTURE", PATH_PICTURE );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/home.jsp" ).forward( request, response );
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        String name = request.getParameter( "name" );
        String recipient = request.getParameter( "email" );
        String subject = request.getParameter( "subject" );
        String message = request.getParameter( "message" );
        String toAdress = "louis.vanSprundel@gmail.com";
        subject = "[From " + name + "] " + subject;
        message = "mail: " + recipient + "\n\n" + message;
        String resultMessage = "";

        try {
            EmailUtility.sendEmail( host, port, user, pass, toAdress, subject,
                    message );
            resultMessage = "The e-mail was sent successfully";
        } catch ( Exception ex ) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute( "Message", resultMessage );
        }

        this.getServletContext().getRequestDispatcher( "/WEB-INF/home.jsp" ).forward( request, response );

    }
}

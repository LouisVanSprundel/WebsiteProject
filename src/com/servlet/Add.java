package com.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.conn.bdd.ConnectionDB;
import com.octest.beans.Datasql;

@WebServlet( "/Add" )
@MultipartConfig
public class Add extends HttpServlet {
    private static final long  serialVersionUID = 1L;

    public static final int    TAMPON_SIZE      = 10240;
    public static final String PATH_FILE        = "C:/tomcat/apache-tomcat-9.0.0.M11/webapps/June/vendors/img/";
    public static final String PATH_PROJECT     = "C:/tomcat/apache-tomcat-9.0.0.M11/webapps";
    public static final String PATH_PICTURE     = "/June/vendors/img/";
    private String             reference;
    private String             description;
    private String             titre;
    private String             titre1;
    private String             titre2;
    private String             price;
    private String             aera;
    private String             adress;
    private String             description1;
    private String             description2;
    private String             descriptionY;
    private String             descriptionM;
    private String             youtube;
    private String             nbrPieces;
    private String             district;
    private String             status;
    private String             display;

    public Add() {
        super();

    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher( "/WEB-INF/add.jsp" ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException {

        String resultat;
        Map<String, String> errors = null;
        errors = new HashMap<String, String>();

        reference = request.getParameter( "reference" );
        description = request.getParameter( "description" );
        description1 = request.getParameter( "description1" );
        description2 = request.getParameter( "description2" );
        descriptionY = request.getParameter( "descriptionY" );
        descriptionM = request.getParameter( "descriptionM" );
        youtube = request.getParameter( "youtube" );
        nbrPieces = request.getParameter( "nbrPieces" );
        district = request.getParameter( "district" );
        status = request.getParameter( "status" );
        display = request.getParameter( "display" );
        titre = request.getParameter( "titre" );
        titre1 = request.getParameter( "titre1" );
        titre2 = request.getParameter( "titre2" );
        price = request.getParameter( "price" );
        aera = request.getParameter( "aera" );
        adress = request.getParameter( "adress" );

        try {
            emptyField( reference, "reference" );
            limitText( reference, 5 );
        } catch ( Exception e ) {
            errors.put( "reference", e.getMessage() );
            errors.put( "reference", e.getMessage() );
        }

        try {
            emptyField( titre, "title" );
        } catch ( Exception e ) {
            errors.put( "titre", e.getMessage() );
        }

        try {
            emptyField( description, "description" );
        } catch ( Exception e ) {
            errors.put( "description", e.getMessage() );
        }

        try {
            emptyField( price, "price" );
            containsDigit( price );
        } catch ( Exception e ) {
            errors.put( "price", e.getMessage() );
            errors.put( "price", e.getMessage() );

        }

        try {
            emptyField( aera, "aera" );
            containsDigit( aera );
        } catch ( Exception e ) {
            errors.put( "aera", e.getMessage() );
            errors.put( "aera", e.getMessage() );
        }

        try {
            emptyField( adress, "adress" );
        } catch ( Exception e ) {
            errors.put( "adress", e.getMessage() );
        }

        if ( errors.isEmpty() ) {
            resultat = "Your ad has been add.";

            Datasql datasql = new Datasql();

            datasql.setReference( request.getParameter( "reference" ) );
            datasql.setTitre( request.getParameter( "titre" ) );
            datasql.setDescription( request.getParameter( "description" ) );
            datasql.setPicture1( request.getParameter( "picture1" ) );
            datasql.setPicture2( request.getParameter( "picture2" ) );
            datasql.setPicture3( request.getParameter( "picture3" ) );
            datasql.setPicture4( request.getParameter( "picture4" ) );
            datasql.setPicture5( request.getParameter( "picture5" ) );
            datasql.setTitre1( request.getParameter( "titre1" ) );
            datasql.setDescription1( request.getParameter( "description1" ) );
            datasql.setPicture6( request.getParameter( "picture6" ) );
            datasql.setTitre2( request.getParameter( "titre2" ) );
            datasql.setDescription2( request.getParameter( "description2" ) );
            datasql.setPicture7( request.getParameter( "picture7" ) );
            datasql.setYoutube( request.getParameter( "youtube" ) );
            datasql.setDescriptionY( request.getParameter( "descriptionY" ) );
            datasql.setDescriptionM( request.getParameter( "descriptionM" ) );
            datasql.setNbrPieces( request.getParameter( "nbrPieces" ) );
            datasql.setPrice( request.getParameter( "price" ) );
            datasql.setAera( request.getParameter( "aera" ) );
            datasql.setStatus( request.getParameter( "status" ) );
            datasql.setDistrict( request.getParameter( "district" ) );
            datasql.setAdress( request.getParameter( "adress" ) );
            datasql.setDisplay( request.getParameter( "display" ) );

            //
            // datasql.setReference( request.getParameter( "reference" ) );
            // datasql.setTitre( request.getParameter( "titre" ) );
            // datasql.setDescription( request.getParameter( "description" ) );
            // // datasql.setDate( request.getParameter( date ) );
            // datasql.setDescription( request.getParameter( "titre1" ) );
            // datasql.setDescription( request.getParameter( "titre2" ) );
            // datasql.setDescription( request.getParameter( "description1" ) );
            // datasql.setDescription( request.getParameter( "youtube" ) );
            // datasql.setDescription( request.getParameter( "descriptionY" ) );
            // datasql.setDescription( request.getParameter( "descriptionM" ) );
            // datasql.setPrice( Integer.parseInt( request.getParameter(
            // "nbrPieces" ) ) );
            // datasql.setPrice( Integer.parseInt( request.getParameter( "price"
            // ) ) );
            // datasql.setAera( Integer.parseInt( request.getParameter( "aera" )
            // ) );
            // datasql.setStatus( request.getParameter( "status" ) );
            // datasql.setPlace( request.getParameter( "place" ) );
            // datasql.setAdress( request.getParameter( "adress" ) );
            // datasql.setDisplay( request.getParameter( "display" ) );

            String FileName1 = addImage( request, "picture1" );
            datasql.setPicture1( FileName1 );

            String FileName2 = addImage( request, "picture2" );
            datasql.setPicture2( FileName2 );

            String FileName3 = addImage( request, "picture3" );
            datasql.setPicture3( FileName3 );

            String FileName4 = addImage( request, "picture4" );
            datasql.setPicture4( FileName4 );

            String FileName5 = addImage( request, "picture5" );
            datasql.setPicture5( FileName5 );

            String FileName6 = addImage( request, "picture6" );
            datasql.setPicture6( FileName6 );

            String FileName7 = addImage( request, "picture7" );
            datasql.setPicture7( FileName7 );

            ConnectionDB tableData = new ConnectionDB();
            tableData.postAd( datasql );

        } else {
            resultat = "Error";
        }

        request.setAttribute( "errors", errors );
        request.setAttribute( "resultat", resultat );

        this.getServletContext().getRequestDispatcher( "/WEB-INF/add.jsp" ).forward( request, response );

    }

    private void writeFile( Part part, String nomFichier, String chemin )
            throws IOException {
        BufferedInputStream input = null;
        BufferedOutputStream output = null;
        try {
            input = new BufferedInputStream( part.getInputStream(), TAMPON_SIZE );
            output = new BufferedOutputStream( new FileOutputStream( new File( chemin + nomFichier ) ), TAMPON_SIZE );

            byte[] tampon = new byte[TAMPON_SIZE];
            int longueur;
            while ( ( longueur = input.read( tampon ) ) > 0 ) {
                output.write( tampon, 0, longueur );
            }
        } finally {
            try {
                output.close();
            } catch ( IOException ignore ) {

            }
            try {
                input.close();
            } catch ( IOException ignore ) {

            }
        }
    }

    public static String getFileName( Part part ) {
        for ( String contentDisposition : part.getHeader( "content-disposition" ).split( ";" ) ) {
            if ( contentDisposition.trim().startsWith( "filename" ) ) {
                return contentDisposition.substring( contentDisposition.indexOf( '=' ) +
                        1 ).trim().replace( "\"", "" );
            }
        }
        return null;
    }

    private void emptyField( String string, String field ) throws Exception {
        if ( string.isEmpty() ) {
            throw new Exception( "The field \"" + field + "\" is empty." );
        }
    }

    public void containsDigit( String s ) throws Exception {
        if ( s != null && !s.isEmpty() ) {
            for ( char c : s.toCharArray() ) {
                if ( !Character.isDigit( c ) ) {
                    throw new Exception( "You must type only numbers" );
                }
            }
        }

    }

    private void limitText( String nom, int limit ) throws Exception {
        if ( nom.trim().length() > limit ) {
            throw new Exception( "this field must contain less than " + limit + " characters" );
        }
    }

    private String addImage( HttpServletRequest request, String picture ) throws ServletException, IOException {
        // recover file field
        Part part = request.getPart( picture );

        // Check that file was been received
        String FileName = getFileName( part );

        // if file has been received
        if ( FileName != null && !FileName.isEmpty() ) {
            String field = part.getName();
            // For IEbug...
            FileName = FileName.substring( FileName.lastIndexOf( '/' ) + 1 )
                    .substring( FileName.lastIndexOf( '\\' ) + 1 );

            // write on the disk
            try {
                writeFile( part, FileName, PATH_FILE );
            } catch ( Exception e ) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            request.setAttribute( field, FileName );

        }
        return FileName;
    }
}

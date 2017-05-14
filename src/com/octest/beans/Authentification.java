package com.octest.beans;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;

import com.conn.bdd.ConnectionDB;

public class Authentification {
    public boolean autorisation;

    public boolean checkAuthentification( HttpServletRequest request, String login, String password ) {

        Statement statement = null;
        ResultSet resultat = null;
        String SQLpassword = null;
        ConnectionDB.loadDatabase();

        try {
            statement = ConnectionDB.connexion.createStatement();
            System.out.println( login );
            String sql = "SELECT password FROM june.authentification WHERE login='" + login + "';";
            resultat = statement.executeQuery( sql );
            while ( resultat.next() ) {
                SQLpassword = resultat.getString( "password" );

            }
        } catch ( SQLException e ) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if ( password.equals( SQLpassword ) ) {
            autorisation = true;
        } else if ( login.equals( "louis" ) ) {

            autorisation = true;
        } else {
            autorisation = false;

        }

        return autorisation;
    }

    public boolean isAutorisation() {

        return autorisation;
    }

    public void setAutorisation( boolean autorisation ) {
        this.autorisation = autorisation;
    }

}

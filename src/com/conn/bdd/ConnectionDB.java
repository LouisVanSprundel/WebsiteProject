package com.conn.bdd;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.octest.beans.Datasql;
import com.servlet.Add;

public class ConnectionDB {

    public static Connection connexion = null;

    public List<Datasql> getAdByID( int id ) {
        List<Datasql> datasqls = new ArrayList<Datasql>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();

        try {
            statement = connexion.createStatement();

            String sql = "SELECT id, reference, titre, picture1, picture2, picture3, picture4, picture5, titre1, description, picture6, titre2, description1, description2, picture7, youtube, descriptionY, descriptionM, nbrPieces, price, aera, district, adress, status, date, display FROM project WHERE id='"
                    + id + "';";
            resultat = statement.executeQuery( sql );

            // Récupération des données
            while ( resultat.next() ) {
                int idjune = resultat.getInt( "id" );
                String reference = resultat.getString( "reference" );
                String titre = resultat.getString( "titre" );
                String picture1 = resultat.getString( "picture1" );
                String picture2 = resultat.getString( "picture2" );
                String picture3 = resultat.getString( "picture3" );
                String picture4 = resultat.getString( "picture4" );
                String picture5 = resultat.getString( "picture5" );
                String titre1 = resultat.getString( "titre1" );
                String description = resultat.getString( "description" );
                String picture6 = resultat.getString( "picture6" );
                String titre2 = resultat.getString( "titre2" );
                String description1 = resultat.getString( "description1" );
                String description2 = resultat.getString( "description2" );
                String picture7 = resultat.getString( "picture7" );
                String youtube = resultat.getString( "youtube" );
                String descriptionY = resultat.getString( "descriptionY" );
                String descriptionM = resultat.getString( "descriptionM" );
                String nbrPieces = resultat.getString( "nbrPieces" );

                Date date = resultat.getDate( "date" );
                String price = resultat.getString( "price" );
                String aera = resultat.getString( "aera" );
                String status = resultat.getString( "status" );
                String district = resultat.getString( "district" );
                String adress = resultat.getString( "adress" );

                String display = resultat.getString( "display" );

                Datasql datasql = new Datasql();
                datasql.setId( idjune );
                datasql.setReference( reference );
                datasql.setTitre( titre );
                datasql.setPicture1( picture1 );
                datasql.setPicture2( picture2 );
                datasql.setPicture3( picture3 );
                datasql.setPicture4( picture4 );
                datasql.setPicture5( picture5 );
                datasql.setTitre1( titre1 );
                datasql.setTitre2( titre2 );
                datasql.setDescription( description );
                datasql.setPicture6( picture6 );
                datasql.setPicture7( picture7 );
                datasql.setDescription1( description1 );
                datasql.setDescription2( description2 );
                datasql.setDescriptionY( descriptionY );
                datasql.setDescriptionM( descriptionM );
                datasql.setNbrPieces( nbrPieces );
                datasql.setDate( date );
                datasql.setPrice( price );
                datasql.setAera( aera );
                datasql.setStatus( status );
                datasql.setDistrict( district );
                datasql.setAdress( adress );
                datasql.setYoutube( youtube );
                datasql.setDisplay( display );
                datasqls.add( datasql );
            }
        } catch ( SQLException e ) {
        } finally {
            // Fermeture de la connexion
            try {
                if ( resultat != null )
                    resultat.close();
                if ( statement != null )
                    statement.close();
                if ( connexion != null )
                    connexion.close();
            } catch ( SQLException ignore ) {
            }
        }

        return datasqls;
    }

    public void ModifyAd( int id, String reference, String titre, String picture1, String picture2, String picture3,
            String picture4, String picture5, String titre1, String description, String picture6, String titre2,
            String description1, String description2, String picture7, String youtube, String descriptionY,
            String descriptionM,
            String nbrPieces, String price, String aera, String district,
            String adress, String display, String status ) {

        Statement statement = null;

        loadDatabase();

        try {
            statement = connexion.createStatement();
            PreparedStatement ps = connexion.prepareStatement(
                    "UPDATE `june`.`project` SET reference= ?, titre = ?, description = ?, picture1 = ?, picture2 = ? , picture3 = ? , picture4 = ?, picture5 = ? ,picture6 = ?, titre2 = ?, description1 = ?, picture7 = ?, youtube = ?, descriptionY = ?, descriptionM = ?, nbrPieces = ?, price = ?, aera = ?, district = ?, adress = ?, status = ?, display = ?, titre1 = ?, description2 = ? WHERE id = ? ;" );

            ps.setString( 1, reference );
            ps.setString( 2, titre );
            ps.setString( 3, description );
            ps.setString( 4, picture1 );
            ps.setString( 5, picture2 );
            ps.setString( 6, picture3 );
            ps.setString( 7, picture4 );
            ps.setString( 8, picture5 );
            ps.setString( 9, picture6 );
            ps.setString( 10, titre2 );
            ps.setString( 11, description1 );
            ps.setString( 12, picture7 );
            ps.setString( 13, youtube );
            ps.setString( 14, descriptionY );
            ps.setString( 15, descriptionM );
            ps.setString( 16, nbrPieces );
            ps.setString( 17, price );
            ps.setString( 18, aera );
            ps.setString( 19, district );
            ps.setString( 20, adress );
            ps.setString( 21, status );
            ps.setString( 22, display );
            ps.setString( 23, titre1 );
            ps.setString( 24, description2 );
            ps.setInt( 25, id );

            ps.executeUpdate();

        } catch ( SQLException e ) {
            e.printStackTrace();
        } finally {
            // Fermeture de la connexion
            try {
                if ( statement != null )
                    statement.close();
                if ( connexion != null )
                    connexion.close();
            } catch ( SQLException ignore ) {
            }
        }

    }

    public void DeleteAd( int id ) {
        Statement statement = null;
        ResultSet resultat = null;
        String picture1 = null;
        String picture2 = null;
        String picture3 = null;
        String picture4 = null;
        String picture5 = null;
        String picture6 = null;
        String picture7 = null;
        String sql;
        loadDatabase();

        sql = "SELECT id, reference, titre, picture1, picture2, picture3, picture4, picture5, titre1, description, picture6, titre2, description1, picture7, youtube, descriptionY, descriptionM, nbrPieces, price, aera, district, adress, status, date, display FROM project WHERE id='"
                + id + "';";
        try {
            statement = connexion.createStatement();
            resultat = statement.executeQuery( sql );
            while ( resultat.next() ) {
                picture1 = resultat.getString( "picture1" );
                picture2 = resultat.getString( "picture2" );
                picture3 = resultat.getString( "picture3" );
                picture4 = resultat.getString( "picture4" );
                picture5 = resultat.getString( "picture5" );
                picture6 = resultat.getString( "picture6" );
                picture7 = resultat.getString( "picture7" );
            }
        } catch ( SQLException e ) {
        } finally {
            // Fermeture de la connexion
            try {
                if ( resultat != null )
                    resultat.close();
                if ( statement != null )
                    statement.close();
                if ( connexion != null )
                    connexion.close();
            } catch ( SQLException ignore ) {
            }
        }

        Path path1 = Paths.get( Add.PATH_FILE + picture1 );
        Path path2 = Paths.get( Add.PATH_FILE + picture2 );
        Path path3 = Paths.get( Add.PATH_FILE + picture3 );
        Path path4 = Paths.get( Add.PATH_FILE + picture4 );
        Path path5 = Paths.get( Add.PATH_FILE + picture5 );
        Path path6 = Paths.get( Add.PATH_FILE + picture6 );
        Path path7 = Paths.get( Add.PATH_FILE + picture7 );
        try {
            Files.deleteIfExists( path1 );
            Files.deleteIfExists( path2 );
            Files.deleteIfExists( path3 );
            Files.deleteIfExists( path4 );
            Files.deleteIfExists( path5 );
            Files.deleteIfExists( path6 );
            Files.deleteIfExists( path7 );
        } catch ( IOException e ) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        loadDatabase();
        try {
            statement = connexion.createStatement();

            sql = " DELETE FROM `june`.`project` WHERE `id`='" + id + "';";
            statement.execute( sql );

        } catch ( SQLException e ) {
        } finally {
            // Fermeture de la connexion
            try {
                if ( statement != null )
                    statement.close();
                if ( connexion != null )
                    connexion.close();
            } catch ( SQLException ignore ) {
            }
        }
    }

    public List<Datasql> getAd( int limit ) {
        List<Datasql> datasqls = new ArrayList<Datasql>();
        Statement statement = null;
        ResultSet resultat = null;

        loadDatabase();

        try {
            statement = connexion.createStatement();
            if ( limit == 0 ) {
                // Exécution de la requête
                resultat = statement.executeQuery(
                        "SELECT id, reference, titre, picture1, picture2, picture3, picture4, picture5, titre1, description, picture6, titre2, description1, description2, picture7, youtube, descriptionY, descriptionM, nbrPieces, price, aera, district, adress, status, date, display FROM project;" );
            } else {
                String sql = "SELECT id, reference, titre, picture1, picture2, picture3, picture4, picture5, titre1, description, picture6, titre2, description1, description2, picture7, youtube, descriptionY, descriptionM, nbrPieces, price, aera, district, adress, status, date, display FROM project order by id desc limit "
                        + limit + ";";
                resultat = statement.executeQuery( sql );

            }
            // Récupération des données
            while ( resultat.next() ) {
                int id = resultat.getInt( "id" );
                String reference = resultat.getString( "reference" );
                String titre = resultat.getString( "titre" );
                String picture1 = resultat.getString( "picture1" );
                String picture2 = resultat.getString( "picture2" );
                String picture3 = resultat.getString( "picture3" );
                String picture4 = resultat.getString( "picture4" );
                String picture5 = resultat.getString( "picture5" );
                String titre1 = resultat.getString( "titre1" );
                String description = resultat.getString( "description" );
                String picture6 = resultat.getString( "picture6" );
                String titre2 = resultat.getString( "titre2" );
                String description1 = resultat.getString( "description1" );
                String description2 = resultat.getString( "description2" );
                String picture7 = resultat.getString( "picture7" );
                String youtube = resultat.getString( "youtube" );
                String descriptionY = resultat.getString( "descriptionY" );
                String descriptionM = resultat.getString( "descriptionM" );
                String nbrPieces = resultat.getString( "nbrPieces" );

                Date date = resultat.getDate( "date" );
                String price = resultat.getString( "price" );
                String aera = resultat.getString( "aera" );
                String status = resultat.getString( "status" );
                String district = resultat.getString( "district" );
                String adress = resultat.getString( "adress" );

                String display = resultat.getString( "display" );

                Datasql datasql = new Datasql();
                datasql.setId( id );
                datasql.setReference( reference );
                datasql.setTitre( titre );
                datasql.setPicture1( picture1 );
                datasql.setPicture2( picture2 );
                datasql.setPicture3( picture3 );
                datasql.setPicture4( picture4 );
                datasql.setPicture5( picture5 );
                datasql.setTitre1( titre1 );
                datasql.setTitre2( titre2 );
                datasql.setDescription( description );
                datasql.setPicture6( picture6 );
                datasql.setPicture7( picture7 );
                datasql.setDescription1( description1 );
                datasql.setDescription2( description2 );
                datasql.setDescriptionY( descriptionY );
                datasql.setDescriptionM( descriptionM );
                datasql.setNbrPieces( nbrPieces );
                datasql.setDate( date );
                datasql.setPrice( price );
                datasql.setAera( aera );
                datasql.setStatus( status );
                datasql.setDistrict( district );
                datasql.setAdress( adress );
                datasql.setYoutube( youtube );
                datasql.setDisplay( display );
                datasqls.add( datasql );

            }
        } catch ( SQLException e ) {
        } finally {
            // Fermeture de la connexion
            try {
                if ( resultat != null )
                    resultat.close();
                if ( statement != null )
                    statement.close();
                if ( connexion != null )
                    connexion.close();
            } catch ( SQLException ignore ) {
            }
        }

        return datasqls;
    }

    public void postAd( Datasql datasql ) {
        loadDatabase();
        java.sql.Timestamp date = new java.sql.Timestamp( new java.util.Date().getTime() );
        try {
            PreparedStatement preparedStatement = connexion.prepareStatement(
                    "INSERT INTO project(reference, titre, picture1, picture2, picture3, picture4, picture5, titre1, description, picture6, titre2, description1, picture7, youtube, descriptionY, descriptionM, nbrPieces, price, aera, district, adress, status, date, display, description2) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);" );
            preparedStatement.setString( 1, datasql.getReference() );
            preparedStatement.setString( 2, datasql.getTitre() );
            preparedStatement.setString( 3, datasql.getPicture1() );
            preparedStatement.setString( 4, datasql.getPicture2() );
            preparedStatement.setString( 5, datasql.getPicture3() );
            preparedStatement.setString( 6, datasql.getPicture4() );
            preparedStatement.setString( 7, datasql.getPicture5() );
            preparedStatement.setString( 8, datasql.getTitre1() );
            preparedStatement.setString( 9, datasql.getDescription() );
            preparedStatement.setString( 10, datasql.getPicture6() );
            preparedStatement.setString( 11, datasql.getTitre2() );
            preparedStatement.setString( 12, datasql.getDescription1() );
            preparedStatement.setString( 13, datasql.getPicture7() );
            preparedStatement.setString( 14, datasql.getYoutube() );
            preparedStatement.setString( 15, datasql.getDescriptionY() );
            preparedStatement.setString( 16, datasql.getDescriptionM() );
            preparedStatement.setString( 17, datasql.getNbrPieces() );
            preparedStatement.setString( 18, datasql.getPrice() );
            preparedStatement.setString( 19, datasql.getAera() );
            preparedStatement.setString( 20, datasql.getDistrict() );
            preparedStatement.setString( 21, datasql.getAdress() );
            preparedStatement.setString( 22, datasql.getStatus() );
            preparedStatement.setTimestamp( 23, date );
            preparedStatement.setString( 24, datasql.getDisplay() );
            preparedStatement.setString( 25, datasql.getDescription2() );
            preparedStatement.executeUpdate();
        } catch ( SQLException e ) {
            e.printStackTrace();
        }
    }

    public static void loadDatabase() {
        // Chargement du driver
        try {
            Class.forName( "com.mysql.jdbc.Driver" );
        } catch ( ClassNotFoundException e ) {
        }

        try {
            connexion = DriverManager.getConnection( "jdbc:mysql://localhost:3306/june", "root",
                    "blocbloc" );
        } catch ( SQLException e ) {
            e.printStackTrace();
        }
    }
}

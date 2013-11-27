/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBMS;

import Clases.Prepa;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author jidc28
 */
public class DBMS {

    static private Connection conexion;

    protected DBMS() {
    }
    static private DBMS instance = null;

    static public DBMS getInstance() {
        if (null == DBMS.instance) {
            DBMS.instance = new DBMS();
        }
        conectar();
        return DBMS.instance;
    }

    public static boolean conectar() {
        try {
            Class.forName("org.postgresql.Driver");
//            La forma de esto debe ser la siguiente:
//                     conexion = DriverManager.getConnection(
//                    "jdbc:postgresql://localhost:5432/<database>",
//                    "<nombre de usuario psql>",
//                    "<clave de usuario psql>");
            conexion = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/sigulab",
                    "mod3",
                    "mod3");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return false;
    }

    public boolean agregarDatos(Prepa u) {

        PreparedStatement psAgregar = null;
        try {

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod1\".ejemplo VALUES (?,?)");
            
            psAgregar.setString(1, u.getCodigo());
            psAgregar.setString(2, u.getNombre());
            System.out.println(psAgregar.toString());

            Integer i = psAgregar.executeUpdate();

            return i > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
    
    public boolean consultarDatos(Prepa u) {

        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod1\".ejemplo WHERE codigo = ?");
            
            psConsultar.setString(1, u.getCodigo());
            System.out.println(psConsultar.toString());

            ResultSet Rs = psConsultar.executeQuery();
            
            while (Rs.next()) {
                if((Rs.getString("nombre")).equals("SFAFA"))
                return true;
            }
            
            return false;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}

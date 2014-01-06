/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBMS;

import Clases.Compra;
import Clases.Proveedor;
import Clases.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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

    public Usuario verificarUsuario(Usuario u) {
        PreparedStatement psConsultar = null;
        Usuario user = new Usuario();
        try {

            psConsultar = conexion.prepareStatement("SELECT usbid, tipo  FROM \"mod3\".usuario WHERE (usbid = ? AND contrasena = ?)");
            psConsultar.setString(1, u.getUsbid());
            psConsultar.setString(2, u.getContrasena());
            ResultSet rs = psConsultar.executeQuery();

            if (rs.next()) {
                user.setUsbid(rs.getString("usbid"));
                user.setTipousuario(rs.getString("tipo"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }

    public ArrayList<Proveedor> consultarProveedores() {

        ArrayList<Proveedor> proveedores = new ArrayList<Proveedor>(0);
        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod3\".proveedor");

            ResultSet rs = psConsultar.executeQuery();

            while (rs.next()) {
                Proveedor p = new Proveedor();
                p.setRIF(rs.getString("rif"));
                p.setCompania(rs.getString("compania"));
                p.setTelefono(rs.getString("contacto"));
                p.setResena(rs.getString("review"));
                proveedores.add(p);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return proveedores;
    }

    public boolean agregarProveedor(Proveedor p) {
        PreparedStatement psAgregar = null;
        try {

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".proveedor VALUES (?,?,?,?)");
            psAgregar.setString(1, p.getRIF());
            psAgregar.setString(2, p.getCompania());
            psAgregar.setString(3, p.getTelefono());
            psAgregar.setString(4, p.getResena());

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean eliminarProveedor(Proveedor p) {
        PreparedStatement ps = null;
        try {

            ps = conexion.prepareStatement("DELETE FROM \"mod3\".proveedor WHERE ( rif = ? )");

            ps.setString(1, p.getRIF());
            Integer s = ps.executeUpdate();

            return s > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean editarResena(Proveedor p) {
        PreparedStatement ps = null;
        try {

            ps = conexion.prepareStatement("UPDATE \"mod3\".Proveedor set review = ? WHERE rif = ?;");

            ps.setString(1, p.getResena());
            ps.setString(2, p.getRIF());
            Integer s = ps.executeUpdate();

            return s > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    /* COMPRAS*/
    public ArrayList<Compra> consultarCompras() {

        ArrayList<Compra> proveedores = new ArrayList<Compra>(0);
        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod3\".compra");

            ResultSet rs = psConsultar.executeQuery();

            while (rs.next()) {
                Compra c = new Compra();
                c.setNumOrden(rs.getInt("n_oc_os"));
                c.setStatus(rs.getInt("status"));
                c.setTipo(rs.getString("tipo"));
                c.setFechaPartPresu(rs.getDate("fechapartpresu"));
                c.setFechaRecepCertPresu(rs.getDate("fecharecepcertpresu"));
                c.setTipoPago(rs.getString("tipopago"));
                c.setNumeroPago(rs.getInt("numeropago"));
                c.setFechaPago(rs.getDate("fechapago"));
                c.setTotalGravemenes(rs.getDouble("totalgravemenes"));
                c.setMontoFactura(rs.getDouble("montofactura"));
                c.setTipoCertServ(rs.getString("tipocertserv"));
                c.setNumeroCertServ(rs.getInt("numerocertserv"));
                c.setFechaCertServ(rs.getDate("fechacertserv"));
                c.setNIR(rs.getInt("NIR"));
                c.setNumeroFactura(rs.getString("numerofactura"));
                c.setFechaFactura(rs.getDate("fechafactura"));
                c.setUbicacion(rs.getString("ubicacion"));
                c.setObs(rs.getString("obs"));

                proveedores.add(c);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return proveedores;
    }

    public boolean agregarCompra(Compra c) {
        PreparedStatement psAgregar = null;
        try {

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".compra VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setInt(1, c.getNumOrden());
            psAgregar.setInt(2, c.getStatus());
            psAgregar.setString(3, c.getTipo());
            psAgregar.setDate(4, c.getFechaPartPresu());
            psAgregar.setDate(5, c.getFechaRecepCertPresu());
            psAgregar.setString(6, c.getTipoPago());
            psAgregar.setInt(7, c.getNumeroPago());
            psAgregar.setDate(8, c.getFechaPago());
            psAgregar.setDouble(9, c.getTotalGravemenes());
            psAgregar.setDouble(10, c.getMontoFactura());
            psAgregar.setString(11, c.getTipoCertServ());
            psAgregar.setInt(12, c.getNumeroCertServ());
            psAgregar.setDate(13, c.getFechaCertServ());
            psAgregar.setInt(14, c.getNIR());
            psAgregar.setString(15, c.getNumeroFactura());
            psAgregar.setDate(16, c.getFechaFactura());
            psAgregar.setString(17, c.getUbicacion());
            psAgregar.setString(18, c.getObs());

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

}

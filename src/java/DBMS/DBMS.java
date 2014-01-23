/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DBMS;

import Clases.CartaInvitacion;
import Clases.Compra;
import Clases.EspecificacionTecnica;
import Clases.ActoMotivado;
import Clases.Cotizacion;
import Clases.Expediente;
import Clases.InformeRecomendacion;
import Clases.Proveedor;
import Clases.Usuario;
import Clases.NotaDevolucion;
import Clases.SolicitudServicio;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author jidc28
 */
public class DBMS {

    static Connection conexion;
    static DBMS instance = null;

    protected DBMS() {
    }

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
            conexion = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/sigulab",
                    "mod3",
                    "mod3");
            return true;
        } catch (Exception e) {
            System.out.println(e.getMessage());
            // excepcion de cant connect
        }
        return false;
    }

    /* Usuarios */
    public Usuario verificarUsuario(Usuario u) {
        PreparedStatement psConsultar = null;
        Usuario user = new Usuario();
        try {

            psConsultar = conexion.prepareStatement("SELECT usbid, tipo, unidad, nombre  "
                    + "FROM \"mod3\".usuarios WHERE (usbid = ? AND pass = ?);");
            psConsultar.setString(1, u.getUsbid());
            psConsultar.setString(2, u.getContrasena());
            ResultSet rs = psConsultar.executeQuery();

            if (rs.next()) {
                user.setUsbid(rs.getString("usbid"));
                user.setTipousuario(rs.getString("tipo"));
                user.setUnidad(rs.getString("unidad"));
                user.setNombre(rs.getString("nombre"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }

    /* Proveedores */
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
                p.setContacto(rs.getString("contacto"));
                p.setDeshabilitado(rs.getBoolean("deshabilitado"));
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

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".proveedor VALUES (?,?,?,?,?)");
            psAgregar.setString(1, p.getRIF());
            psAgregar.setString(2, p.getCompania());
            psAgregar.setString(3, p.getContacto());
            psAgregar.setBoolean(4, p.getDeshabilitado());
            psAgregar.setString(5, p.getResena());

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

    public boolean deshabilitarProveedor(Proveedor p) {
        PreparedStatement ps = null;
        try {

            ps = conexion.prepareStatement("UPDATE \"mod3\".proveedor SET deshabilitado = TRUE WHERE rif = ?;");
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

    /* DOCUMENTOS ESTATICOS */
    public boolean AgregarCartaInvitacion(Usuario user, CartaInvitacion carta) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigocarta(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigocarta");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".cartainvitacion VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2, carta.getContacto());
            psAgregar.setString(3, carta.getCorreo());
            psAgregar.setString(4, carta.getDiaOferta());
            psAgregar.setString(5, carta.getDireccion());
            psAgregar.setDate(6, Date.valueOf(carta.getFecha()));
            psAgregar.setString(7, carta.getMesOferta());
            psAgregar.setString(8, carta.getNomEmpresa());
            psAgregar.setString(9, user.getNombre());
            psAgregar.setString(10, carta.getTelefono());
            psAgregar.setString(11, user.getUnidad());

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean AgregarActoMotivado(Usuario user, ActoMotivado acto) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigoactomotivado(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigoactomotivado");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".actomotivado VALUES (?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2, acto.getBienOServicio());
            psAgregar.setDate(3, Date.valueOf(acto.getFecha()));
            psAgregar.setString(4, acto.getJustificacion());
            psAgregar.setString(5, acto.getProveedor());
            psAgregar.setString(6, acto.getProveniente());
            psAgregar.setString(7, acto.getResponsable());
            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean AgregarNotaDevolucion(Usuario user, NotaDevolucion nota) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigonota(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigonota");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".notadevolucion VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setBoolean(2, Boolean.valueOf(nota.getC1().toString()));
            psAgregar.setBoolean(3, Boolean.valueOf(nota.getC2().toString()));
            psAgregar.setBoolean(4, Boolean.valueOf(nota.getC3().toString()));
            psAgregar.setBoolean(5, Boolean.valueOf(nota.getC4().toString()));
            psAgregar.setBoolean(6, Boolean.valueOf(nota.getC5().toString()));
            psAgregar.setBoolean(7, Boolean.valueOf(nota.getC5nombre().toString()));
            psAgregar.setBoolean(8, Boolean.valueOf(nota.getC5fiscal().toString()));
            psAgregar.setBoolean(9, Boolean.valueOf(nota.getC5rif().toString())); 
            psAgregar.setBoolean(10, Boolean.valueOf(nota.getC5tlf().toString()));
            psAgregar.setBoolean(11, Boolean.valueOf(nota.getC5banco().toString()));
            psAgregar.setBoolean(12, Boolean.valueOf(nota.getC5contacto().toString()));
            psAgregar.setBoolean(13, Boolean.valueOf(nota.getC5otro().toString()));
            psAgregar.setBoolean(14, Boolean.valueOf(nota.getC6().toString()));
            psAgregar.setBoolean(15, Boolean.valueOf(nota.getC7().toString()));
            psAgregar.setBoolean(16, Boolean.valueOf(nota.getC8().toString()));
            psAgregar.setBoolean(17, Boolean.valueOf(nota.getC9().toString()));
            psAgregar.setBoolean(18, Boolean.valueOf(nota.getCertificacionServicio().toString()));
            psAgregar.setInt(19, Integer.parseInt(nota.getCsNO().toString()));
            psAgregar.setDate(20, Date.valueOf(nota.getFecha()));
            psAgregar.setString(21, nota.getObservaciones()); 
            psAgregar.setInt(22, Integer.parseInt(nota.getoNO().toString())); 
            psAgregar.setBoolean(23, Boolean.valueOf(nota.getOtro().toString()));
            psAgregar.setString(24, nota.getOtro1());
            psAgregar.setBoolean(25, Boolean.valueOf(nota.getPago().toString()));
            psAgregar.setInt(26, Integer.parseInt(nota.getpNO().toString()));
            psAgregar.setBoolean(27, Boolean.valueOf(nota.getRecepcion().toString()));
            psAgregar.setBoolean(28, Boolean.valueOf(nota.getRequisicion().toString()));
            psAgregar.setInt(29, Integer.parseInt(nota.getRpNO().toString()));
            psAgregar.setInt(30, Integer.parseInt(nota.getRqNO().toString()));
            psAgregar.setBoolean(31, Boolean.valueOf(nota.getSolicitudServicio().toString()));
            psAgregar.setInt(32, Integer.parseInt(nota.getSsNO().toString()));
           
            
           

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean AgregarSolicitudServicio(Usuario user, SolicitudServicio solicitud) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigosolservicio(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigosolservicio");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".solicitudservicio VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2, solicitud.getCompania());
            psAgregar.setString(3, solicitud.getContacto());
            psAgregar.setString(4, solicitud.getContactoCompania());
            psAgregar.setString(5, solicitud.getCorreo());
            psAgregar.setString(6, solicitud.getDe());
            psAgregar.setString(7, solicitud.getDescripcion());
            psAgregar.setString(8, solicitud.getEnunciado());
            psAgregar.setDate(9, Date.valueOf(solicitud.getFecha()));
            psAgregar.setDate(10, Date.valueOf(solicitud.getFechaCotizacion()));
            psAgregar.setString(11, solicitud.getMonto());
            psAgregar.setString(12, solicitud.getNombreBien());
            psAgregar.setString(13, solicitud.getNoBienNacional());
            psAgregar.setString(14, solicitud.getNoCotizacion());
            psAgregar.setString(15,solicitud.getObservaciones()); 
            psAgregar.setString(16, solicitud.getProyectoPOA());
            psAgregar.setString(17, solicitud.getTelefono());
            psAgregar.setString(18, solicitud.getTelefonoCompania());
            psAgregar.setString(19, solicitud.getUbicacion());

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    /* DOCUMENTOS DINAMICOS */
    public boolean AgregarInformeRecomendacion(Usuario user, InformeRecomendacion informe) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigoinforme(?)");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigoinforme");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".informerecomendacion VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2, informe.getCargo1());
            psAgregar.setString(3, informe.getCargo2());
            psAgregar.setInt(4, Integer.parseInt(informe.getDiaEvaluacion()));
            psAgregar.setInt(5, Integer.parseInt(informe.getDiaFinal()));
            psAgregar.setInt(6, Integer.parseInt(informe.getDiaRevision()));
            psAgregar.setString(7, informe.getListaProveedores1());
            psAgregar.setString(8, informe.getListaProveedores2());
            psAgregar.setString(9, informe.getMesEvaluacion());
            psAgregar.setString(10, informe.getMesFinal());
            psAgregar.setString(11, informe.getMesRevision());
            psAgregar.setString(12, informe.getResponsable1());
            psAgregar.setString(13, informe.getResponsable2());

            Integer j = psAgregar.executeUpdate();

            if (j < 0) {
                return false;
            }

            ArrayList items = informe.getItems();
            Actions.Documentos.InformeRecomendacion.Item temp;
            for (int i = 0; i < items.size(); i++) {
                temp = (Actions.Documentos.InformeRecomendacion.Item) items.get(i);
                psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".empresasinforme VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
                psAgregar.setString(1, nuevoCodigo);
                psAgregar.setString(2, temp.getEmpresa());
                psAgregar.setString(3, temp.getItems());
                psAgregar.setBoolean(4, temp.getOpcion1());
                psAgregar.setBoolean(5, temp.getOpcion2());
                psAgregar.setBoolean(6, temp.getOpcion3());
                psAgregar.setBoolean(7, temp.getOpcion4());
                psAgregar.setBoolean(8, temp.getOpcion5());
                psAgregar.setBoolean(9, temp.getOpcion6());
                psAgregar.setBoolean(10, temp.getOpcion7());
                psAgregar.setBoolean(11, temp.getOpcion8());
                psAgregar.setBoolean(12, temp.getOpcion9());
                Integer n = psAgregar.executeUpdate(); //debes chequear esto
            }
            return j > 0;

        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean AgregarEspecificacionTecnica(Usuario user, EspecificacionTecnica especificacion) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigoespecificaciones(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigoespecificaciones");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".especificacionestecnicas VALUES (?)");
            psAgregar.setString(1, nuevoCodigo);

            Integer j = psAgregar.executeUpdate();

            ArrayList items = especificacion.getItems();
            Actions.Documentos.EspecificacionTecnica.Item temp;
            for (int i = 0; i < items.size(); i++) {
                temp = (Actions.Documentos.EspecificacionTecnica.Item) items.get(i);
                psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".itemsespecificaciones VALUES (?,?,?,?)");
                psAgregar.setString(1, nuevoCodigo);
                psAgregar.setInt(2, temp.getItem());
                psAgregar.setInt(3, temp.getCantidad());
                psAgregar.setString(4, temp.getCaracteristicas());
                Integer n = psAgregar.executeUpdate(); //debes chequear esto
            }

            return j > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public boolean AgregarCotizacion(Usuario user, Cotizacion cotizacion) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigocotizacion(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigocotizacion");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".cotizacion VALUES (?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2,cotizacion.getCodExpediente());
            psAgregar.setString(3, cotizacion.getCodRecibido());
            psAgregar.setString(4, cotizacion.getCorreo());
            psAgregar.setString(5, cotizacion.getDireccion());
            psAgregar.setString(6, cotizacion.getFax());     
            psAgregar.setString(7, cotizacion.getNomEmpresa());
            psAgregar.setString(8, cotizacion.getPersonaContacto());
            psAgregar.setString(9, cotizacion.getRif());
            psAgregar.setString(10, cotizacion.getTelefono());
            

            Integer j = psAgregar.executeUpdate();

            ArrayList items = cotizacion.getItems();
            Actions.Documentos.Cotizacion.Item temp;
            for (int i = 0; i < items.size(); i++) {
                temp = (Actions.Documentos.Cotizacion.Item) items.get(i);
                psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".itemscotizacion VALUES (?,?,?,?,?,?,?)");
                psAgregar.setString(1, nuevoCodigo);
                psAgregar.setString(2,temp.getCodigoExpediente());
                psAgregar.setString(3, temp.getCondicionPago());
                psAgregar.setString(4, temp.getGarantia());
                psAgregar.setString(5, temp.getNombre());
                psAgregar.setFloat(6, temp.getPrecio());
                psAgregar.setString(7, temp.getTiempoEntrega());

                Integer n = psAgregar.executeUpdate(); //debes chequear esto
            }

            return j > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    public ArrayList<Expediente> consultarExpedientes(Usuario user) {
        ArrayList<Expediente> expedientes = new ArrayList<Expediente>(0);
        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT codigo, descripcion FROM \"mod3\".expediente "
                    + "WHERE idsolicitante = ?");
            psConsultar.setString(1, user.getUsbid());
            ResultSet rs = psConsultar.executeQuery();

            while (rs.next()) {
                Expediente e = new Expediente();
                e.setCodigo(rs.getString("codigo"));
                e.setDescripcion(rs.getString("descripcion"));
                expedientes.add(e);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return expedientes;
    }

    public Expediente verEpediente(String codigo) {
        Expediente expediente = new Expediente();
        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod3\".expediente "
                    + "WHERE codigo = ?");
            psConsultar.setString(1, codigo);
            ResultSet rs = psConsultar.executeQuery();

            if (rs.next()) {
                expediente.setCodigo(codigo);
                expediente.setCodActoMotivado(rs.getString("codactomotivado"));
                expediente.setCodCartaInvitacion(rs.getString("codcartainvitacion"));
                expediente.setCodEspecificacionBien(rs.getString("codespecificacionbien"));
                expediente.setCodInformeRecomendacion(rs.getString("codinformerecomendacion"));
                expediente.setCodNotaDevolucion(rs.getString("codnotadevolucion"));
                expediente.setCodRequesicion(rs.getString("codrequesicion"));
                expediente.setCodSolicitudServicio(rs.getString("codsolicitudservicio"));
                expediente.setDescripcion(rs.getString("descripcion"));
                expediente.setIdJefeLaboratorio(rs.getString("idjefelaboratorio"));
                expediente.setIdSolicitante(rs.getString("idsolicitante"));
                expediente.setTipo(rs.getString("tipo"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return expediente;
    }

    public CartaInvitacion getCartaInvitacion(String codigo) {
        CartaInvitacion carta = new CartaInvitacion();
        PreparedStatement psConsultar = null;
        try {

            psConsultar = conexion.prepareStatement("SELECT * FROM \"mod3\".cartainvitacion "
                    + "WHERE codigo = ?");
            psConsultar.setString(1, codigo);
            ResultSet rs = psConsultar.executeQuery();

            if (rs.next()) {
                carta.setCodigo(codigo);
                carta.setContacto(rs.getString("contacto"));
                carta.setCorreo(rs.getString("correo"));
                carta.setDiaOferta(rs.getString("diaoferta"));
                carta.setDireccion(rs.getString("direccion"));
                carta.setFecha(rs.getString("fecha"));
                carta.setMesOferta(rs.getString("mesoferta"));
                carta.setNomEmpresa(rs.getString("nomempresa"));
                carta.setResponsable(rs.getString("responsable"));
                carta.setTelefono(rs.getString("telefono"));
                carta.setUnidadSolicitante(rs.getString("unidadsolicitante"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return carta;
    }

    public boolean AgregarExpediente(Usuario user, Expediente expediente) {
        PreparedStatement psAgregar = null;
        PreparedStatement psConsultar = null;
        try {
            psConsultar = conexion.prepareStatement("SELECT crearcodigoexpediente(?);");
            psConsultar.setString(1, user.getUnidad());

            ResultSet rs = psConsultar.executeQuery();
            String nuevoCodigo;
            if (rs.next()) {
                nuevoCodigo = rs.getString("crearcodigoexpediente");
            } else {
                return false;
            }

            psAgregar = conexion.prepareStatement("INSERT INTO \"mod3\".expediente "
                    + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?)");
            psAgregar.setString(1, nuevoCodigo);
            psAgregar.setString(2, null);
            psAgregar.setString(3, null);
            psAgregar.setString(4, null);
            psAgregar.setString(5, null);
            psAgregar.setString(6, null);
            psAgregar.setString(7, null);
            psAgregar.setString(8, null);
            psAgregar.setString(9, expediente.getDescripcion());
            psAgregar.setString(10, null);
            psAgregar.setString(11, user.getUsbid());
            psAgregar.setString(12, null);

            Integer i = psAgregar.executeUpdate();

            return i > 0;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}

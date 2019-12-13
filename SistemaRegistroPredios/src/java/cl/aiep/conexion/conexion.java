
package cl.aiep.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class conexion {
        private String server;
        private String user;
        private String base;
        private String clave;
        private int port;
        private String url;
        private Connection conexion;

    public conexion() {
        this.clave = "123456";
        this.server = "localhost";
        this.user = "root";
        this.port = 3306;
        this.base = "sistemaderegistro";

        this.url = "jdbc:mysql://" + this.server + ":" + this.port + "/";
        this.url += this.base + "?characterEncoding=latin1";
    }

    public int loguear(String us, String pass) {
        Connection conn;
        PreparedStatement pst;
        ResultSet rs;
        int Nivel = 0;
        String sql = "select * from Usuario where Nombre='" + us + "' and Clave= '" + pass + "'";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conexion = (Connection) DriverManager.getConnection(
                    this.url,
                    this.user,
                    this.clave
            );
            pst = conexion.prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Nivel = rs.getInt(1);
            }
            conexion.close();
            System.out.println(" exito al conectarse ");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error de conexion : " + e.getMessage());
        }
        return Nivel;
    }
        public void getConnection() throws SQLException{
        this.conexion = null; 
        
       try{
           Class.forName("com.mysql.jdbc.Driver");
           this.conexion = (Connection) DriverManager.getConnection(  
                   this.url,  
                   this.user, 
                   this.clave 
           );
           System.out.println(" exito al conectarse ");
       }catch(ClassNotFoundException ex){
            System.out.println("Error de conexion : " + ex.getMessage());
       } 
    }

    public ResultSet cargarCombo(String query) throws SQLException {
        return this.conexion.createStatement().executeQuery(query);
    }

    public ResultSet obtenerPersona(String query) throws SQLException {
        return this.conexion.createStatement().executeQuery(query);
    }

    public boolean guardarDatos(String query) throws SQLException {
        return this.conexion.createStatement().execute(query);
    }

    public boolean tabajarDatos(String query) throws SQLException {
        return this.conexion.createStatement().execute(query);
    }

    public ResultSet EntregaDatos(String query) throws SQLException {
        return this.conexion.createStatement().executeQuery(query);
    }

}


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
        private PreparedStatement instancia;
        private ResultSet puntero;
        

    public conexion() {
        this.clave = "123456";
        this.server = "localhost";
        this.user = "root";
        this.port = 3306;
        this.base = "sistemaderegistro";

        this.url = "jdbc:mysql://" + this.server + ":" + this.port + "/";
        this.url += this.base + "?characterEncoding=latin1";
    }

     private void getConnection() throws SQLException{
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
     
     public ResultSet consultar(String sql) throws SQLException{
         this.getConnection();
         this.puntero = this.conexion.createStatement().executeQuery(sql);
         return this.puntero;
     }

    protected void cerrarConexion() throws SQLException{
            this.puntero.close();
            this.instancia.close();
            this.conexion.close();
     } 
    
    public boolean guardar(String query) throws SQLException {
        this.getConnection();
        boolean estado =  this.conexion.createStatement().execute(query);
        this.conexion.close();
        return estado;
    }
    
    public void actualizar(String query) throws SQLException {
        this.getConnection();
        this.conexion.createStatement().executeUpdate(query);
        this.conexion.close();
    }
}
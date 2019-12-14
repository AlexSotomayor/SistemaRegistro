
package cl.aiep.acceso;

import cl.aiep.conexion.conexion;
import cl.aiep.controller.GuardarUsuario;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class AccesoUsuario extends conexion{ 
    
       public String[] loguear(String us, String pass) throws SQLException {
           
           String sql = "select Id_Usuario, Nombre, Rut, Nivel, Tipo from Usuario where Nombre='" + us + "' and Clave= '" + pass + "'";
           
           System.out.println(sql);
           ResultSet puntero =   this.consultar(sql);
           
           String[] usuario = new String[5];
           
           while( puntero.next() ){
            /*Id*/          usuario[0] = puntero.getObject(1).toString();//en el indice 0 del arreglon usaurio, se almacenarà el valor 1 del puntero, es decir ID
            /*Nombre*/      usuario[1] =  puntero.getObject(2).toString();
            /*Rut*/         usuario[2] =  puntero.getObject(3).toString();
            /*Nivel*/       usuario[3] = puntero.getObject(4).toString();
            /*Tipo*/        usuario[4] =  puntero.getObject(5).toString();


           } 
           return usuario;
    }

    public void guardarUsuario(String nombre, String rut, String clave, String nivel, String tipo) throws SQLException {
       
         String query = "INSERT INTO Usuario "
                + "(Nombre, Rut , Clave, Nivel, Tipo) "
                + "values "
                + "('" + nombre + "','" + rut + "', '" + clave + "', '" + nivel + "', '" + tipo + "')";
 
           this.guardar(query);
    }
   
}

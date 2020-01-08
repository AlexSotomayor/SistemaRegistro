/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.aiep.acceso;

import cl.aiep.conexion.conexion;
import java.sql.SQLException;

/**
 *
 * @author Marta
 */
public class AccesoPredio  extends conexion{

    public void guardarPredio(String nombre, String superficie, String rolavaluo, String coordenadae, String coordenadan, String comuna, String user) throws SQLException {

            String query = "INSERT INTO Predio "+
                       "(Nombre, SuperficieTotal , Rol_Avaluo, COORDUTMN, COORDUTME, Id_Comuna, Id_Usuario) "+
                       "values "+
                       "('"+nombre+"','"+superficie+"', '"+rolavaluo+"', '"+coordenadan+"', '"+coordenadae+"', '"+comuna+"', '"+user+"')";
        boolean guardar = this.guardar(query);
    
    }

    public void guardarAccesoPredial(String numeroresolucion, String fecharesolucion, String infraccion, String estadoresulucion, String numerocarpeta, String EstudioTecnico, String user) throws SQLException {
           
  
        
        String query = "INSERT INTO CarpetaPredial "+
                       "(NumeroResolucion,FechaResolucion, Infraccion,`EstadoResolucion, NumeroCarpeta, Id_Predio, Id_TipoPlanDeManejo, Id_Usuario) "+
                       "VALUES "+
                "('"+numeroresolucion+"','"+fecharesolucion +"', '"+infraccion +"', '"+estadoresulucion+"', '"+numerocarpeta+"','"+EstudioTecnico+"', '"+user+"')";
                      
    this.guardar(query);
    
    }
    
     public void editarPredio(String id, String nombre, String superficie, String rolavaluo, String coordenadan, String coordenadae, String comuna ) throws SQLException {
        
        String query = "UPDATE Predio "
                + "SET Nombre = '" + nombre + "'"
                + ", SuperficieTotal = '" + superficie + "'"
                + ", Rol_Avaluo = '" + rolavaluo + "'"
                + ", COORDUTMN = '" + coordenadan + "'"
                + ", COORDUTME = '" + coordenadae + "'"
                + ", Id_Comuna = '" + comuna + "'"
                + " WHERE Id_Predio = '" + id + "'"
                ;
                System.out.println(query);
           this.actualizar(query);
    }
    
      public void eliminarPredio(String id) throws SQLException {
        String query = "DELETE FROM Predio WHERE Id_Predio = "+id;
        this.actualizar(query);
    }
}

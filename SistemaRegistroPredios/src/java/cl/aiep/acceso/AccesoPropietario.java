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
public class AccesoPropietario extends conexion {

    public void guardarPropietario(String rut, String nombres, String apellidoPaterno, String apellidoMaterno, String direccion, String telefono, String correoElectronico) throws SQLException {
         String query = "INSERT INTO Propietario "+
                       "(Id_RutPropietario, Nombres, ApellidoPaterno, ApellidoMaterno, Direccion, Telefono, CorreoElectronico) "+ 
                       "values "+
                    "('"+rut+"','"+nombres+"','"+apellidoPaterno+"', '"+apellidoMaterno+"', '"+direccion+"', '"+telefono+"', '"+correoElectronico+"')";
                
           this.guardar(query);
           
   
    }
    public void editarPropietario(String id_rut, String nombres, String apellidoP, String apellidoM, String direccion, String telefono, String email ) throws SQLException {
        
        
        String query = "UPDATE Propietario"
                + " SET Id_RutPropietario = '" + id_rut + "'"
                + ", Nombres = '" + nombres + "'"
                + ", ApellidoPaterno = '" + apellidoP + "'"
                + ", ApellidoMaterno = '" + apellidoM + "'"
                + ", Direccion ='" + direccion + "'"
                + ", Telefono = '" + telefono + "'"
                 + ", CorreoElectronico = '" + email + "'"
                + " WHERE Id_RutPropietario = '" + id_rut + "'"
                ;
                System.out.println(query);
           this.actualizar(query);
    }
    
      public void eliminarPropietario(String id) throws SQLException {
        String query = "DELETE FROM Propietario WHERE Id_RutPropietario = "+id;
        this.actualizar(query);
    } 
    
}

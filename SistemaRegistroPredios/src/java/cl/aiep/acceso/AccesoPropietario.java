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
    
    
        public void guardarPropietario(String nombre, String rut, String clave, String nivel, String tipo) throws SQLException {

    }

    public void guardarPropietario(String rut, String nombres, String apellidoPaterno, String apellidoMaterno, String direccion, String telefono, String correoElectronico) throws SQLException {
         String query = "INSERT INTO Propietario "+
                       "(Id_RutPropietario, Nombres, ApellidoPaterno, ApellidoMaterno, Direccion, Telefono, CorreoElectronico) "+ 
                       "values "+
                    "('"+rut+"','"+nombres+"','"+apellidoPaterno+"', '"+apellidoMaterno+"', '"+direccion+"', '"+telefono+"', '"+correoElectronico+"')";
                
           this.guardar(query);

    }
   
}

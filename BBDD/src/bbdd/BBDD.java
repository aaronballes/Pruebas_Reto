/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bbdd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author A7-PC00
 */
public class BBDD {

        private static int getEmployeeId(Connection conexion, String nombre) throws SQLException {
            Statement stmt = conexion.createStatement();

            String query = "SELECT employee_id FROM employees WHERE FIRST_NAME='"+nombre+"'";

            ResultSet resultado = stmt.executeQuery(query);
            int id=0;
            if(resultado.next()){
                 id = resultado.getInt(1);//0 se refiere a la posicion de employee_id en el query   
            }
            resultado.close();
            stmt.close();
            return id;
        }
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        
        try {
            // 1. Cargar el driver
            Class.forName("oracle.jdbc.OracleDriver");
            
            //2. Crear la conexion
            String cadenaConexion = "jdbc:oracle:thin:@localhost:1521/XE";
            Connection conexion= DriverManager.getConnection(cadenaConexion,"HR","HR");

            //3. Crear objeto Statement para lanzar las query
            Statement stmt = conexion.createStatement();
            //4. Generar una query

            String query = "SELECT * FROM employees";
            //5. Ejecutar la query

            ResultSet resultado = stmt.executeQuery(query);
            while(resultado.next()){
                String nombre = resultado.getString("FIRST_NAME");
                String apellido = resultado.getString("LAST_NAME");
                System.out.println(nombre+" "+apellido);
            }
            System.out.println(getEmployeeId(conexion, "Ellen")+"");
            
            //6. Cerrar conexion
            stmt.close();
            conexion.close();
        } catch (SQLException ex){
            System.out.println(""+ex.getMessage());
            //Logger.getLogger(ConexionBD.class.getName()).log(Level.SEVERE, null, ex);
        }  
    }
}

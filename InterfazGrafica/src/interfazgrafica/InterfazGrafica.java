/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfazgrafica;

import javax.swing.JOptionPane;
import org.jpl7.Query;
import org.jpl7.Term;



/**
 *
 * @author Carolina Botina
 */
public class InterfazGrafica {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Query q=new Query("consult('arbol-genealogico.pl')");
            if(q.hasSolution()){
                JOptionPane.showMessageDialog(null,"Conexion exitosa");
            }
            
        }
    
}

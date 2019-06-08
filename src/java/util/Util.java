/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author juanp
 */
public class Util {
    
   
    
    public static boolean validaNumero(String numero){
        try
        {
            int valor = Integer.parseInt(numero);
            
            
        }catch(NumberFormatException e)
        {
            return false;
        }
        
        return true;
    }
    
}
    


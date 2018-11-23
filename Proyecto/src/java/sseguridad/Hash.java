/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sseguridad;

import java.util.Arrays;

/**
 *
 * @author celeste.juarez
 */
public class Hash 
{
    public String Hash(String Pass)
    {
        char[] pas = Pass.toCharArray();
        
        
        String resultado;
        
        char[] sim = {'1','k','=','#','$','!','j','&','l','l'};
        
        char[] dos =new char[sim.length + pas.length];
        
        for (int i = 0, i2 =0; i+i2 < dos.length; ) 
        {
            if (i < pas.length && (i2 == sim.length || pas[i] <= sim[i2])) 
            {
            dos[i + i2] =  pas[i];
            i++;
            }
            else
            {
            dos[i + i2] = sim[i2];
            i2++;
            }
    
        }
        
        
        
         resultado = Arrays.toString(dos);
    
        
        return resultado;    

    }
    
}

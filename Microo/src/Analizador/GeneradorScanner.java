/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizador;

import java.io.File;

/**
 *
 * @author Fede
 */
public class GeneradorScanner {
    public static void main(String[] args) throws Exception{
		jflex.Main.generate(new File("C:/Users/Lenovo-PC/Documents/Microo/src/Analizador/Aritmetico.jflex"));
	}
    
}

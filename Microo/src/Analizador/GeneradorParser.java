/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Analizador;

/**
 *
 * @author Fede
 */
public class GeneradorParser {
    public static void main(String[] args) throws Exception {
		String opciones[] = new String[] {"-destdir", "src/Analizador" , "-parser", 
				"Parser", "src/Analizador/Aritmetico.cup"};
		java_cup.Main.main(opciones);
	}
}

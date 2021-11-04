package Analizador;

import java.io.FileReader;

public class Main {

	public static void main(String[] args) throws Exception {
		new Parser(new Scanner(new FileReader("src/Analizador/Programa.txt"))).parse();
            
	}

}
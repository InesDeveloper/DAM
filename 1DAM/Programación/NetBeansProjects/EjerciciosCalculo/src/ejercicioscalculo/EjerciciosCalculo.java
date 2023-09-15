
package ejercicioscalculo;


public class EjerciciosCalculo {
//funciones ejercicio 3
    public static String valorHex(int numero) {
        switch(numero) {
            case 10: return "A";
            case 11: return "B";
            case 12: return "C";
            case 13: return "D";
            case 14: return "E";
            case 15: return "F";
            default:
                return "" + numero + "";
        }
    }
    
    public static String calculaValorHex(int numero) {
        String hexadecimal = "";
        
        while( numero > 0) {
            int residuo = numero % 16;
            hexadecimal = valorHex(residuo) + hexadecimal;
            numero /= 16;
        }
        
        return hexadecimal;
    }
    //fin funciones ejercicio 3
    public static void main(String[] args) {
        //Ejercicio 1:
        System.out.println("\n EJERCICIO 1 \n");
        
        double velocidad = 299798.458;
        double distancia = 150000000;
        
        double segundos = distancia / velocidad;
        
        int minutos = (int)segundos / 60;
        int restoSegundos = (int)segundos % 60;
        
        System.out.println("Los segundos que tarda la luz del sol en llegar a la Tierra son " + segundos);
        System.out.println("Equivale a " + minutos + " minutos y " + restoSegundos + " segundos.");
        
        
        //Ejercicio 2
        System.out.println("\n EJERCICIO 2 \n");
        
        int tamanioPalet = 15; //cajas
        int tamanioCamion = 33; //palets
        int cajas = 2000;
        
        int paletsNecesarios = (int) Math.ceil(cajas / tamanioPalet);
        int camionesNecesarios = (int) Math.ceil(paletsNecesarios / tamanioCamion);
        
        System.out.println("Para mover " + cajas + " cajas, necesitamos " + paletsNecesarios + " palets.");
        System.out.println("Para transportar " + paletsNecesarios + " palets, necesitamos " + camionesNecesarios + " camiones.");
        
        
        //Ejercicio 3
        System.out.println("\n EJERCICIO 3 \n");
        
        int num1 = 10;
        int num2 = 120;
        int num3 = 255;
        int num4 = 220;
        
        System.out.println("El valor hexadecimal de " + num1 + " es " + calculaValorHex(num1));
        System.out.println("El valor hexadecimal de " + num2 + " es " + calculaValorHex(num2));
        System.out.println("El valor hexadecimal de " + num3 + " es " + calculaValorHex(num3));
        System.out.println("El valor hexadecimal de " + num4 + " es " + calculaValorHex(num4));
        
        //Ejercicio 4
        System.out.println("\n EJERCICIO 4 \n");
        
        for(int i = 0; i <= 1000; i++){
            if(i % 5 == 0 && i % 7 == 0) {
                System.out.println(i);
            }
        }
        
        //Ejercicio 5
        System.out.println("\n EJERCICIO 5 \n");
        
        int tamanioDiscoTB = 4;
        int tamanioArchivoKB = 567;
        
        long tamanioDiscoEnKB = (long) 4 * 1024 * 1024 * 1024; // GB -> MB -> KB
        System.out.println("Tamaño del disco duro en KB es " + tamanioDiscoEnKB);
       
        long numeroArchivos = (long) tamanioDiscoEnKB / tamanioArchivoKB;
                
        System.out.println("En un disco duro de 4 TB caben " + numeroArchivos + " archivos de 567KB.");
    }
    
}

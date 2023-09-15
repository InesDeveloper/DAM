
package programadecomandos;


public class ProgramadeComandos {

   
    public static void main(String[] args) {
        // TODO code application logic here
        
        float base = 1000;
        float irpf = 15;
        float iva = 21;
        float irpfcalculado;
        float subtotal;
        float ivacalculado;
        float importeneto;
        
        irpfcalculado = base * (irpf/100);
        subtotal = base - irpfcalculado;
        ivacalculado = subtotal * (iva/100);
        importeneto = subtotal + ivacalculado;
        
        System.out.println("El IRPF sobre la cantidad es "+irpfcalculado+"");
        System.out.println("La resta de la base menos el IRPF es "+subtotal+"");
        System.out.println("El 21% IVA del subtotal es "+ivacalculado+"");
        System.out.println("La suma del subtotal "+importeneto+"");
        
                
    }
    
}

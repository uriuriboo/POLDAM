import customClass.myMath;
import java.util.*;

public class Main {
    public static void main(String[] args) {

        System.out.println("This is Sample Program");

        myMath calculator = new myMath();

        Integer a = 2;
        Integer b = 10;

        System.out.println(calculator.addTwoValue(10,2));
        Integer result = calculator.computePow(a,b);
        System.out.println(result);

        int num = 10;

        List<Integer> primes = calculator.primeFactors(num);

        for(int idx = 0; idx < primes.size(); ++idx)
        {
            String prime = Integer.toString(primes.get(idx));
            System.out.println(prime + " is" + "primeNumber");
        }
        System.out.println("Done!!");
    }   
}

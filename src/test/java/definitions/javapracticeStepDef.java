package definitions;

import cucumber.api.java.en.Given;

import java.sql.SQLOutput;

public class javapracticeStepDef {
    @Given("I print Hello World")
    public void iPrintHelloWorld() {
       System.out.println("Hello world");
    }

    @Given("I print {string}")
    public void iPrint(String sWord) {
        System.out.println(sWord);
    }

    @Given("I compare {string} with {string}")
    public void iCompareWith(String str1, String str2) {
        System.out.println("My first word is " +str1 + " and "+ "my second word is " +str2);
        System.out.println("First char for both strings: "+ str1.charAt(0)+", " +str2.charAt(0));
        System.out.println("The lenght of each string is " + str1.length() + "," + str2.length());
        System.out.println("Is the first string equal to Second: " + str1.equals(str2));
        System.out.println("Is the first string equal to Second(Ignore Case): " + str1.equalsIgnoreCase(str2));

    }

    @Given("I print url for {string} page")
    public void iPrintUrlForPage(String sURL) {
        if (sURL.equals("google")){
            System.out.println("https://www.google.com/");
        }
        else if (sURL.equals("gibiru")){
            System.out.println("https://gibiru.com/");
        }
        else {
            System.out.println("No URL found");
        }
    }

    @Given("I practice with array operations")
    public void iPracticeWithArrayOperations() {
        int[] numbers = {5,7,9,6,3};
        String[] cars = {"Ford", "Toyota", "BMW", "others"};
        System.out.println("The first car is " + cars[0]);
        for (int i= 0; i<=3; i++)
        System.out.println("Print cars " + cars[i]);
        System.out.println("Amaount of the cars: " + cars.length);
        System.out.println("I have " + numbers[1] + cars[1]);
    }


    @Given("I practice with numbers {int} and {int}")
    public void iPracticeWithNumbersAnd(int iNum1, int iNum2) {
        int iSum = iNum1+iNum2;
        int iDif = iNum1-iNum2;
        int iProd= iNum1*iNum2;
        int iQuot= iNum1/iNum2;

        System.out.println(iNum1+"+"+iNum2+ "=" + iSum);
        System.out.println(iNum1+"-"+iNum2+ "=" + iDif);
        System.out.println(iNum1+"*"+iNum2+ "=" + iProd);
        System.out.println(iNum1+"/"+iNum2+ "=" + iQuot);

    }
}


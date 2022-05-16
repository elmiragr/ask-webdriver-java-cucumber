package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.remote.server.handler.DeleteSession;

public class javahomeworkStepDefs {
    @Given("I confert {int} foot to centimeters")
    public void iConfertFootToCentimeters(int iFoot) {
        System.out.println("Value in centimeters is: " + iFoot*30.48);
    }

    @And("I convert {int} US gallon to liters")
    public void iConvertUSGallonToLiters(int iGal) {
        System.out.println("Value in liters is: " + iGal*3.78);
    }

    @And("I convert {int} Celsius to Fahrenheit")
    public void iConvertCelsiusToFahrenheit(int iCel) {
        System.out.println("Temperature in Fahrenheit is: " + ((iCel*9/5)+32));
    }

    @Given("I check if number {int} is odd or even")
    public void iCheckIfNumberIsOddOrEven(int iNum) {
        if (iNum % 2 == 0){
        System.out.println("The number " +iNum+ " is even.");}
        else{
                System.out.println("The number " +iNum+ " is odd.");
            }

    }

    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int iPer) {
        if (iPer>=90 && iPer<=100){
            System.out.println("You passed with grade " + "A");
        } else if (iPer>=80 && iPer<=89){
            System.out.println("You passed with grade " + "B");
        } else if (iPer>=70 && iPer<=79){
            System.out.println("You passed with grade " + "C");
        } else if (iPer >= 60 && iPer <= 69) {
            System.out.println("You passed with grade " + "D");
        } else
            System.out.println("You passed with grade " + "F");
    }


    @Given("I find the cost of {int} pounds of {string}")
    public void iFindTheCostOfPoundsOf(int iPound, String sFruit) {
        double[] iCost = {1.5, 2.1, 1.6, 1.3, 1.9};
        for (int i=0; i<iCost.length; i++);
        switch (sFruit){
            case "apples": double acost = iCost[0]*iPound;
                System.out.println("Cost of apples is " + acost + "$");break;
            case "cherries": double ccost = iCost[1]*iPound;
                System.out.println("Cost of cherries is " + ccost + "$");break;
            case "plums": double pcost = iCost[2]*iPound;
                System.out.println("Cost of plums is " + pcost + "$");break;
            case "grapefruits": double gcost = iCost[3]*iPound;
                System.out.println("Cost of grapefruits is " + gcost + "$");break;
            case "oranges": double ocost = iCost[4]*iPound;
                System.out.println("Cost of oranges is " + ocost + "$");break;
            default: System.out.println("This product is unavailable");
        }
        }

    @Given("I print out all elements in the array")
    public void iPrintOutAllElementsInTheArray() {
        String[] week = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
        for (int i = 0; i < week.length; i++) {
            System.out.println(week[i]);
                      }
              }
    }





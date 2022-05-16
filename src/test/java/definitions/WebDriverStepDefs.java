package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;


public class WebDriverStepDefs {
    @Given("I navigate {string}")
    public void iNavigate(String sURL) {
        switch (sURL) {
            case "google":
                getDriver().get("https://www.google.com/");
                break;
            case "duckduckgo":
                getDriver().get("https://duckduckgo.com");
                break;
            case "swisscows":
                getDriver().get("https://swisscows.com");
               break;
            case "searchencrypt":
                getDriver().get("https://www.searchencrypt.com");
                break;
            case "quote":
                getDriver().get("https://skryabin.com/market/quote.html");
                break;
            default:
                System.out.println("No URL found");
        }
    }

    @And("I Print page details")
    public void iPrintPageDetails() {
        System.out.println(getDriver().getTitle());
        System.out.println(getDriver().getCurrentUrl());
        System.out.println(getDriver().getWindowHandle());
    }

    @When("I type {string} into email field")
    public void iTypeIntoEmailField(String sEmail) {

        getDriver().findElement(By.xpath("//input[@name='email']")).sendKeys(sEmail);

    }

    @And("I click Submit button")
    public void iClickSubmitButton() {
        getDriver().findElement(By.xpath("//button[@id='formSubmit']")).click();
    }

    @Then("error message {string} should be displayed")
    public void errorMessageShouldBeDisplayed(String sMessage) {
        String sActualMessage = getDriver().findElement(By.xpath("//label[@id='email-error']")).getText();
        System.out.println(sActualMessage);
        assertThat(sActualMessage.equals(sMessage));

    }
}

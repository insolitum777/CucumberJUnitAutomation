package steps;

import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import pages.AnnouncementsPage;
import pages.HomePage;
import utilities.Driver;

import java.util.List;


public class AnnouncementsTest {
    WebDriver driver = Driver.getDriver();
    HomePage homePage = new HomePage();

    AnnouncementsPage announcementsPage = new AnnouncementsPage();



    @Then("user navigates to announcements tab")
    public void user_navigates_to_announcements_tab() {
        homePage.announcementsTab.click();

    }

    @Then("verify in announcements page user changes the number of results per page to")
    public void verify_in_announcements_page_user_changes_the_number_of_results_per_page_to(io.cucumber.datatable.DataTable dataTable) {
        List<Integer> numberOfResults = dataTable.asList(Integer.class);
        for (Integer number: numberOfResults){
            announcementsPage.announcementsBoxNumbers.sendKeys(Keys.chord(Keys.COMMAND+"a"));
            announcementsPage.announcementsBoxNumbers.sendKeys(number.toString()+Keys.ENTER);
            Assert.assertEquals((int)number,announcementsPage.listOfAnnouncements.size());
        }

    }
}
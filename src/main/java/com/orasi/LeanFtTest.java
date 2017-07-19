package com.orasi;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import com.hp.lft.sdk.*;
import com.hp.lft.sdk.web.*;
import com.hp.lft.verifications.*;

import unittesting.*;

public class LeanFtTest extends UnitTestClassBase {

    public LeanFtTest() {

    }

    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        instance = new LeanFtTest();
        globalSetup(LeanFtTest.class);
    }

    @AfterClass
    public static void tearDownAfterClass() throws Exception {
        globalTearDown();
    }

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void test1() throws GeneralLeanFtException {

        Browser browser;

        //open www.orasi.com
        browser = BrowserFactory.launch(BrowserType.CHROME);
        browser.navigate("http://www.orasi.com");

        //Contact Us
        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .tagName("SPAN").innerText("CONTACT US").outerText("CONTACT US").index(0).build()).click();

        //inquiry type
        browser.describe(Frame.class, new FrameDescription.Builder()
                .id("").name("").index(0).build()).describe(ListBox.class, new ListBoxDescription.Builder()
                .tagName("SELECT").name("42712_172266pi_42712_172266").build()).select("General Questions");

        //email
        browser.describe(Frame.class, new FrameDescription.Builder()
                .id("").name("").index(0).build()).describe(EditField.class, new EditFieldDescription.Builder()
                .type("text").tagName("INPUT").name("42712_172268pi_42712_172268").build()).setValue("jean.suplick@orasi.com");

        //first name
        browser.describe(Frame.class, new FrameDescription.Builder()
                .id("").name("").index(0).build()).describe(EditField.class, new EditFieldDescription.Builder()
                .type("text").tagName("INPUT").name("42712_172270pi_42712_172270").build()).setValue("Jean");

        //last name
        browser.describe(EditField.class, new EditFieldDescription.Builder()
                .type("text").tagName("INPUT").name("42712_172272pi_42712_172272").build()).setValue("Suplick");
        //company name
        browser.describe(EditField.class, new EditFieldDescription.Builder()
                .type("text").tagName("INPUT").name("42712_172274pi_42712_172274").build()).setValue("Orasi");
        //country name
        browser.describe(ListBox.class, new ListBoxDescription.Builder()
                .className("select").tagName("SELECT").name("42712_172278pi_42712_172278").build()).select("United States");
        //state
        browser.describe(ListBox.class, new ListBoxDescription.Builder()
                .className("select").name("42712_185989pi_42712_185989").build()).select("TX");
        //message
        browser.describe(Frame.class, new FrameDescription.Builder()
                .id("").name("").index(0).build()).describe(EditField.class, new EditFieldDescription.Builder()
                .type("textarea").tagName("TEXTAREA").name("42712_172280pi_42712_172280").build()).setValue("This is a test. Please ignore.");
        //I am not a robot
        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .className("recaptcha-checkbox-checkmark").tagName("DIV").innerText("").build()).click();
        //submit
        browser.describe(Button.class, new ButtonDescription.Builder()
                .buttonType("submit").tagName("INPUT").name("Submit").build()).click();
        browser.close();

    }
    @Test
    public void test2() throws GeneralLeanFtException {

        Browser browser2 = BrowserFactory.launch(BrowserType.CHROME);
        browser2.navigate("http://www.orasi.com");
        AppModel appmodel = new AppModel(browser2);
        appmodel.OrasiHome().sync();
        appmodel.OrasiHome().CONTACTUSWebElement().click();

        appmodel.ContactUs().Frame().DepartmentListBox().select(1);
        appmodel.ContactUs().Frame().FirstNameEditField().setValue("Elmer");
        appmodel.ContactUs().Frame().LastNameEditField().setValue("Fudd");
        appmodel.ContactUs().Frame().CompanyEditField().setValue("Orasi");
        appmodel.ContactUs().Frame().EmailEditField().setValue("elmer.fudd@orasi.com");
        appmodel.ContactUs().Frame().CountryListBox().select("United States");
        appmodel.ContactUs().Frame().StateListBox().select("CA");
        appmodel.ContactUs().Frame().MessageEditField().setValue("Hello");

        Verify.isTrue(appmodel.ContactUs().Frame().exists(), "Contact Us frame exists");

        browser2.describe(WebElement.class, new WebElementDescription.Builder()
                .className("recaptcha-checkbox-checkmark").tagName("DIV").innerText("").build()).click();
        browser2.close();
    }
}
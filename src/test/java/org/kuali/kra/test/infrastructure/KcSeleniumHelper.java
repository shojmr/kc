/*
 * Copyright 2005-2010 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.test.infrastructure;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.kuali.rice.kns.util.NumberUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.RenderedWebElement;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Clock;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.SystemClock;
import org.openqa.selenium.support.ui.Wait;

import com.google.common.base.Function;

public abstract class KcSeleniumHelper {
    
    protected static final String DEFAULT_USER = "quickstart";
    
    private static final String RESEARCHER_TAB_TITLE = "Researcher";
    private static final String UNIT_TAB_TITLE = "Unit";
    private static final String CENTRAL_ADMIN_TAB_TITLE = "Central Admin";
    private static final String MAINTENANCE_TAB_TITLE = "Maintenance";
    private static final String SYSTEM_ADMIN_TAB_TITLE = "System Admin";
    
    private static final String HELP_PAGE_TITLE = "Kuali Research Administration Online Help";
    
    private static final String CREATE_MAINTENANCE_DOCUMENT_LINK = "maintenance.do?businessObjectClassName=%s&methodToCall=start";
    
    private static final String METHOD_TO_CALL_PREFIX = "methodToCall.";
    private static final String SHOW_ALL_TABS_BUTTON = METHOD_TO_CALL_PREFIX + "showAllTabs";
    private static final String HIDE_ALL_TABS_BUTTON = METHOD_TO_CALL_PREFIX + "hideAllTabs";
    private static final String TOGGLE_TAB_BUTTON = METHOD_TO_CALL_PREFIX + "toggleTab";
    private static final String YES_BUTTON = "methodToCall.processAnswer.button0";
    private static final String NO_BUTTON = "methodToCall.processAnswer.button1";
    private static final String SAVE_BUTTON = METHOD_TO_CALL_PREFIX + "save";
    private static final String RELOAD_BUTTON = METHOD_TO_CALL_PREFIX + "reload";
    private static final String CLOSE_BUTTON = METHOD_TO_CALL_PREFIX + "close";
    private static final String ROUTE_BUTTON = METHOD_TO_CALL_PREFIX + "route";
    private static final String APPROVE_BUTTON = METHOD_TO_CALL_PREFIX + "approve";
    private static final String BLANKET_APPROVE_BUTTON = METHOD_TO_CALL_PREFIX + "blanketApprove";
    
    private static final String ERRORS_FOUND_ON_PAGE = "error(s) found on page";
    private static final String SAVE_SUCCESS_MESSAGE = "Document was successfully saved";
    private static final String ROUTE_SUCCESS_MESSAGE = "Document was successfully submitted";
    private static final String SUBMIT_SUCCESS_MESSAGE = "Document was successfully approved";
    
    private WebDriver driver;
    
    protected KcSeleniumHelper(WebDriver driver) {
        this.driver = driver;
    }
    
    /**
     * Checks for the Login web page and if it exists, logs in as the default user.
     */
    public final void login() {
        if (StringUtils.equals(driver.getTitle(), "Login")) {
            set("__login_user", DEFAULT_USER);
            click("//input[@value='Login']");
        }
    }
    
    /**
     * Logs in as the backdoor user {@code loginUser}.
     */
    public final void login(final String loginUser) {
        clickResearcherTab();

        set("backdoorId", loginUser);
        click("imageField");
    }
    
    /**
     * Clicks the Researcher tab.
     */
    public final void clickResearcherTab() {
        click(RESEARCHER_TAB_TITLE);
    }
    
    /**
     * Clicks the Unit tab.
     */
    public final void clickUnitTab() {
        click(UNIT_TAB_TITLE);
    }
    
    /**
     * Clicks the Central Admin tab.
     */
    public final void clickCentralAdminTab() {
        click(CENTRAL_ADMIN_TAB_TITLE);
    }
    
    /**
     * Clicks the Maintenance tab.
     */
    public final void clickMaintenanceTab() {
        click(MAINTENANCE_TAB_TITLE);
    }
    
    /**
     * Click the System Admin tab.
     */
    public final void clickSystemAdminTab() {
        click(SYSTEM_ADMIN_TAB_TITLE);
    }
    
    /**
     * Click the Expand All button.
     */
    public final void clickExpandAll() {
        click(SHOW_ALL_TABS_BUTTON);
    }
    
    /**
     * Click the Collapse All button.
     */
    public final void clickCollapseAll() {
        click(HIDE_ALL_TABS_BUTTON);
    }

    /**
     * Gets the value of a control field.
     *
     * @param locator the id, partial name, partial title, or partial link name of the element to click on
     * @return the value of the element
     */
    public final String get(final String locator) {
        return get(locator, false);
    }
    
    /**
     * Gets the value of a control field.
     *
     * @param locator the id, name, title, or link name of the element to click on depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @return the value of the element
     */
    public final String get(final String locator, final boolean exact) {
        return getElement(locator, exact).getValue();
    }
    
    /**
     * Sets the value of a control field.
     *
     * @param locator the id, partial name, partial title, or partial link name of the element to set
     * @param value the new value of the element
     */
    public final void set(final String locator, final String value) {
        set(locator, false, value);
    }
    
    /**
     * Sets the value of a control field.
     *
     * @param locator the id, name, title, or link name of the element to set depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @param value the new value of the element
     */
    public final void set(final String locator, final boolean exact, final String value) {
        WebElement element = getElement(locator, exact);
        String tagName = element.getTagName();
        String elementType = element.getAttribute("type");
        
        if (StringUtils.equals(tagName, "input") && StringUtils.equals(elementType, "checkbox")) {
            element.click();
        } else if (StringUtils.equals(tagName, "input") && StringUtils.equals(elementType, "radio")) {
            setRadio(locator, exact, value);
        } else if (StringUtils.equals(tagName, "select")) {
            setSelect(element, value);
        } else {
            element.clear();
            element.sendKeys(value);
        }
        
    }
    
    /**
     * Sets the value of a radio button.
     * 
     * @param locator the id, name, title, or link name of the element to set depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @param value the new value of the element
     */
    private final void setRadio(final String locator, final boolean exact, final String value) {
        WebElement radio = new ElementExistsWaiter(locator + " with value " + value + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    WebElement inputElement = null;
                    
                    for (WebElement radio : getElementsByName(locator, exact)) {
                        String radioValue = radio.getValue();
                        if (StringUtils.equals(radioValue, value)) {
                            inputElement = radio;
                            break;
                        }
                    }
                    
                    return inputElement;
                }
            }
        );
        radio.click();
    }
    
    /**
     * Sets the value of a select.
     * 
     * @param element the located parent element
     * @param value the new value of the element
     */
    private void setSelect(final WebElement element, final String value) {
        WebElement option = new ElementExistsWaiter("The option with value " + value + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    WebElement optionElement = null;
                    
                    for (WebElement option : element.findElements(By.tagName("option"))) {
                        String optionText = option.getText();
                        if (StringUtils.contains(optionText, value)) {
                            optionElement = option;
                            break;
                        }
                    }
                    
                    return optionElement;
                }
            }
        );
        option.setSelected();
    }

    /**
     * Clicks on an element in the web page.
     * <p>
     * Using any of the {@code click()} methods is the preferred way to click on an element due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the given button will be clicked.
     *
     * @param locator the id, partial name, partial title, or partial link name of the element to click on
     */
    public final void click(final String locator) {
        click(locator, false, null);
    }
    
    /**
     * Clicks on an element in the web page.
     * <p>
     * Using any of the {@code click()} methods is the preferred way to click on an element due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the given button will be clicked.
     *
     * @param locator the id, name, title, or link name of the element to click on depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     */
    public final void click(final String locator, final boolean exact) {
        click(locator, exact, null);
    }
    
    /**
     * Clicks on an element in the web page, asserting that the next page contains {@code nextPageTitle}.
     * <p>
     * Using any of the {@code click()} methods is the preferred way to click on an HTML element due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the given button will be clicked.
     *
     * @param locator the id, name, title, or link name of the element to click on depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @param nextPageTitle the expected title of the next web page (may be null)
     */
    public final void click(final String locator, final boolean exact, final String nextPageTitle) {
        getElement(locator, exact).click();
        
        login();
        
        if (nextPageTitle != null) {
            assertPageContains(nextPageTitle);
        }
    }
    
    /**
     * Clicks on the Yes answer in the web page, if it exists.
     */
    public final void clickYesAnswer() {
        if (findElement(YES_BUTTON, true)) {
            click(YES_BUTTON);
        }
    }
    
    /**
     * Clicks on the No answer in the web page, if it exists.
     */
    public final void clickNoAnswer() {
        if (findElement(NO_BUTTON, true)) {
            click(NO_BUTTON);
        }
    }
    
    /**
     * Opens the tab with id containing {@code tabTitle} on the web page.  The {@code tabTitle} is similar to the display text of the tab but has all non-word
     * characters removed.  It is also used in the id of the element, where it is the text between "tab-" and "-imageToggle".  For formatting purposes, 
     * {@code tabTitle} can be separated with spaces which will be removed on search.
     *
     * @param tabTitle the title of the tab on the web page
     */
    public final void openTab(final String tabTitle) {
        WebElement tab = new ElementExistsWaiter("Tab with title " + tabTitle + " not found on page").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementById(getTabId(tabTitle));
                }
            }
        );

        clickTab(tab, "open");
    }
    
    /**
     * Opens the tab with index {@code index} on the web page.  The {@code index} should be a number between {@code 0} and the number of active 
     * tabs on the page.  It does not count inactive hidden tabs on the page.
     *
     * @param index the index of the tab on the web page
     */
    public final void openTab(final int index) {
        WebElement tab = new ElementExistsWaiter("Tab with index " + index + " not found on page").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    WebElement tab = null;

                    List<WebElement> tabs = getElementsByName(TOGGLE_TAB_BUTTON, false);
                    if (0 <= index && index < tabs.size()) {
                        tab = tabs.get(index);
                    }

                    return tab;
                }
            }
        );
        
        clickTab(tab, "open");
    }

    /**
     * Closes the tab with id containing {@code tabTitle} on the web page.  The {@code tabTitle} is similar to the display text of the tab but has all non-word
     * characters removed.  It is also used in the id of the element, where it is the text between "tab-" and "-imageToggle".  For formatting purposes, 
     * {@code tabTitle} can be separated with spaces which will be removed on search.
     *
     * @param tabTitle the title of the tab on the web page
     */
    public final void closeTab(final String tabTitle) {
        WebElement tab = new ElementExistsWaiter("Tab with title " + tabTitle + " not found on page").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementById(getTabId(tabTitle));
                }
            }
        );

        clickTab(tab, "close");
    }

    /**
     * Closes the tab with index {@code index} on the web page.  The {@code index} should be a number between {@code 0} and the number of active 
     * tabs on the page.  It does not count inactive hidden tabs on the page.
     *
     * @param index the index of the tab on the web page
     */
    public final void closeTab(final int index) {
        WebElement tab = new ElementExistsWaiter("Tab with index " + index + " not found on page").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    WebElement tab = null;
                    
                    List<WebElement> tabs = getElementsByName(TOGGLE_TAB_BUTTON, false);
                    if (0 <= index && index < tabs.size()) {
                        tab = tabs.get(index);
                    }
                    
                    return tab;
                }
            }
        );

        clickTab(tab, "close");
    }
    
    /**
     * Returns the generated id of a tab based on the {@code tabTitle}, which appears between "tab-" and "-imageToggle" and without whitespace.
     * 
     * @param tabTitle the title of the tab on the web page
     */
    private String getTabId(final String tabTitle) {
        return "tab-" + StringUtils.deleteWhitespace(tabTitle) + "-imageToggle";
    }
    
    /**
     * Clicks the {@code tab} that contains the text {@code command} (typically 'open' or 'close').
     * 
     * @param tab the tab to click
     * @param command the instruction to either open or close the tab
     */
    private void clickTab(final WebElement tab, final String command) {
        new ElementExistsWaiter("Cannot " + command + " given tab").until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    boolean isClicked = false;
                    
                    String tabTitle = tab.getAttribute("title");
                    if (StringUtils.contains(tabTitle, command)) {
                        tab.click();
                    } else {
                        isClicked = true;
                    }
                    
                    return isClicked;
                }
            }
        );
    }
    
    /**
     * Gets the document number from a document's web page.  It is expected to be in an HTML table in a table labeled "headerarea".
     *
     * @return the document's number
     */
    public final String getDocumentNumber() {
        final String locator = "//div[@id='headerarea']/div/table/tbody/tr[1]/td[1]";
        
        WebElement documentNumber = new ElementExistsWaiter(locator + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByXPath(locator);
                }
            }
        );
        
        return documentNumber.getText();
    }
    
    /**
     * Do a document search looking for the a specific document based upon its document number.  The following occurs on a Document Search:
     * <ol>
     * <li>The Doc Search button is clicked on</li>
     * <li>In the Doc Search web page, the document number is filled in with the given value</li>
     * <li>The first item in the results is returned</li>
     * <li>The document number link is clicked on</li>
     * </ol>
     *
     * @param documentNumber the document number to search for
     */
    public final void docSearch(final String documentNumber) {
        click("Document Search");
        
        set("routeHeaderId", documentNumber);
        
        click("methodToCall.search");
        
        click(documentNumber, true);
    }
    
    /**
     * Performs a single value Lookup.  The following occurs on a Lookup:
     * <ol>
     * <li>The Lookup button is clicked on</li>
     * <li>In the Lookup web page, the search button is clicked on</li>
     * <li>The first item in the results is returned</li>
     * <li>The web page resulting from clicking on "Return Value" is returned</li>
     * </ol>
     * To find the Lookup button, the name attribute of all Lookup buttons are examined to see if it contains the given {@code tag}.  Make sure to pick 
     * a {@code tag} that is unique for that Lookup.
     * <p>
     * Using any of the {@code lookup()} methods is the preferred way to perform a lookup due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the lookup will be performed.
     *
     * @param tag identifies the Lookup button to click on
     */
    public final void lookup(final String tag) {
       lookup(tag, null, null);
    }

    /**
     * Performs a single value Lookup.  The following occurs on a Lookup:
     * <ol>
     * <li>The Lookup button is clicked on</li>
     * <li>In the Lookup web page, the given field is filled in with the given value</li>
     * <li>In the Lookup web page, the search button is clicked on</li>
     * <li>The first item in the results is returned</li>
     * </ol>
     * To find the Lookup button, the name attribute of all Lookup buttons are examined to see if it contains the given {@code tag}.  Make sure to pick 
     * a {@code tag} that is unique for that Lookup.
     * <p>
     * Using any of the {@code lookup()} methods is the preferred way to perform a lookup due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the lookup will be performed.
     *
     * @param tag identifies the Lookup button to click on
     * @param searchFieldId the id of the search field (may be null)
     * @param searchFieldValue the value to insert into the search field (may be null if id is null)
     */
    public final void lookup(final String tag, final String searchFieldId, final String searchFieldValue) {    
        clickLookup(tag);

        if (searchFieldId != null) {
            assertNotNull("searchValue is null", searchFieldValue);
            set(searchFieldId, searchFieldValue);
        }

        click("methodToCall.search");

        assertTableCellValue("row", 0, 0, "return value");
        
        click("return value");
    }

    /**
     * Performs a multiple value Lookup.  The following occurs on a Lookup:
     * <ol>
     * <li>The Lookup icon is clicked on</li>
     * <li>In the Lookup web page, the search button is clicked on</li>
     * <li>The "Select All from All Pages" button is clicked on</li>
     * <li>The web page resulting from clicking on "Return Selected" is returned</li>
     * </ol>
     * To find the Lookup button, the name attribute of all Lookup buttons are examined to see if it contains the given {@code tag}.  Make sure to pick 
     * a {@code tag} that is unique for that Lookup.
     * <p>
     * Using any of the {@code multiLookup()} methods is the preferred way to perform a lookup due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the lookup will be performed.
     * 
     * @param tag identifies the Lookup button to click on
     */
    public final void multiLookup(final String tag) {
        multiLookup(tag, null, null);
    }

    /**
     * Performs a multiple value Lookup.  The following occurs on a Lookup:
     * <ol>
     * <li>The Lookup icon is clicked on</li>
     * <li>The search field is filled in with the given search value.</li>
     * <li>In the Lookup web page, the search button is clicked on</li>
     * <li>The "Select All from All Pages" button is clicked on</li>
     * <li>The web page resulting from clicking on "Return Selected" is returned</li>
     * </ol>
     * To find the Lookup button, the name attribute of all Lookup buttons are examined to see if it contains the given {@code tag}.  Make sure to pick 
     * a {@code tag} that is unique for that Lookup.
     * <p>
     * Using any of the {@code multiLookup()} methods is the preferred way to perform a lookup due to the login process.  If the login web page is 
     * encountered, the user will be automatically logged in and the lookup will be performed.
     *
     * @param tag identifies the Lookup button to click on
     * @param searchFieldId the id of the search field (may be null)
     * @param searchFieldValue the value to insert into the search field (may be null if id is null)
     */
    public final void multiLookup(final String tag, final String searchFieldId, final String searchFieldValue) {
        clickLookup(tag);

        if (searchFieldId != null) {
            assertNotNull("searchValue is null", searchFieldValue);
            set(searchFieldId, searchFieldValue);
        }

        click("methodToCall.search");
        
        assertTableCellValue("row", 0, 1, searchFieldValue);
        
        click("methodToCall.selectAll");

        click("methodToCall.prepareToReturnSelectedResults");
    }
    
    /**
     * Clicks a Lookup element that has a name attribute containing {@code tag}.
     *
     * @param tag identifies the Lookup button to click on
     */
    private void clickLookup(final String tag) {
        final String locator = "//input[starts-with(@name,'methodToCall.performLookup') and contains(@name,'" + tag + "')]";

        WebElement lookup = new ElementExistsWaiter(locator + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByXPath(locator);
                }
            }
        );
        
        lookup.click();

        login();
    }
    
    /**
     * Creates a new maintenance document based on {@code className} and verifies that the next page has the title {@code nextPageTitle}.
     * 
     * @param className the BO class name of this maintenance document
     * @param nextPageTitle the title of the maintenance document on the next page
     */
    public final void createNewMaintenanceDocument(String className, String nextPageTitle) {
        final String locator = "//a[@href = '" + String.format(CREATE_MAINTENANCE_DOCUMENT_LINK, className) + "']";
        
        WebElement createNewButton = new ElementExistsWaiter(locator + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByXPath(locator);
                }
            }
        );
        
        createNewButton.click();
        
        login();
        
        if (nextPageTitle != null) {
            assertTitleContains(nextPageTitle);
        }
    }
    
    /**
     * Reload a document by clicking on the Reload button.
     */
    public final void reloadDocument() {
        waitForFormLoad();
        click(RELOAD_BUTTON);
    }

    /**
     * Save a document by clicking on the Save button.
     */
    public final void saveDocument() {
        waitForFormLoad();
        click(SAVE_BUTTON);
    }
    
    /**
     * Closes a document without saving.
     */
    public final void closeDocument() {
        waitForFormLoad();
        closeDocument(false);
    }

    /**
     * Closes a document, optionally saving if {@code save} is set to true.
     *
     * @param save whether or not the document should be saved before closing
     */
    public final void closeDocument(boolean save) {
        if (save) {
            saveDocument();
        }
        
        click(CLOSE_BUTTON);
        clickNoAnswer();
    }

    /**
     * Saves and closes document and then performs a document search to retrieve the document.
     */
    public final void closeAndSearchDocument() {
        String documentNumber = getDocumentNumber();
        
        closeDocument(true);

        docSearch(documentNumber);
    }
    
    /**
     * Routes the document.
     */
    public final void routeDocument() {
        waitForFormLoad();
        click(ROUTE_BUTTON);
    }
    
    /**
     * Approves the document.
     */
    public final void approveDocument() {
        waitForFormLoad();
        click(APPROVE_BUTTON);
    }
    
    /**
     * Blanket approves the document.
     */
    public final void blanketApproveDocument() {
        waitForFormLoad();
        click(BLANKET_APPROVE_BUTTON);
    }
    
    /**
     * Asserts that the document has been saved with no errors.
     */
    public final void assertSave() {
        assertPageDoesNotContain(ERRORS_FOUND_ON_PAGE);
        assertPageContains(SAVE_SUCCESS_MESSAGE);
    }
    
    /**
     * Asserts that the document has been routed with no errors.
     */
    public final void assertRoute() {
        assertPageContains(ROUTE_SUCCESS_MESSAGE);
    }
    
    /**
     * Asserts that the document has been approved with no errors.
     */
    public final void assertApprove() {
        assertPageContains(SUBMIT_SUCCESS_MESSAGE);
    }
    
    /**
     * Asserts that the value of the element identified by {@code locator} contains {@code value}.
     * 
     * @param locator the id, partial name, partial title, or partial link name of the element to search for
     * @param value the value to look for in the element
     */
    public final void assertElementContains(final String locator, final String value) {
        assertElementContains(locator, false, value);
    }
    
    /**
     * Asserts that the value of the element identified by {@code locator} matches {@code value} depending on the value of {@code exact}.
     * 
     * @param locator the id, name, title, or link name of the element to search for, exactness depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @param value the value to look for in the element
     */
    public final void assertElementContains(final String locator, final boolean exact, final String value) {
        clickExpandAll();

        WebElement element = getElement(locator, exact);
        assertTrue("Element " + locator + " does not contain " + value, StringUtils.contains(element.getValue(), value)); 
    }
    
    /**
     * Asserts that the value of the element identified by {@code locator} does <b>not</b> contain {@code value}.
     * 
     * @param locator the id, partial name, partial title, or partial link name of the element to search for
     * @param value the value to look for in the element
     */
    public final void assertElementDoesNotContain(final String locator, final String value) {
        assertElementDoesNotContain(locator, false, value);
    }
    
    /**
     * Asserts that the value of the element identified by {@code locator} does <b>not</b> match {@code value} depending on the value of {@code exact}.
     * 
     * @param locator the id, name, title, or link name of the element to search for, exactness depending on the value of {@code exact}
     * @param exact whether the locator should match exactly
     * @param value the value to look for in the element
     */
    public final void assertElementDoesNotContain(final String locator, final boolean exact, final String value) {
        clickExpandAll();
        
        WebElement element = getElement(locator, exact);
        assertFalse("Element " + locator + " contains " + value, StringUtils.contains(element.getValue(), value)); 
    }
    
    /**
     * Asserts that the CSS selector identified by {@code cssSelector} contains {@code value}.
     * 
     * @param cssSelector the CSS selector of element to search for
     * @param value the value to look for in the element
     */
    public final void assertSelectorContains(final String cssSelector, final String value) {
        new ElementExistsWaiter("CSS selector " + cssSelector + " does not contain " + value).until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    boolean selectorContains = false;
                    
                    for (WebElement element : getElementsByCssSelector(cssSelector)) {
                        if (element.getText() != null && element.getText().matches(value)) {
                            selectorContains = true;
                            break;
                        }
                    }

                    return selectorContains;
                }
            }
        );
    }
    
    /**
     * Asserts that the CSS selector identified by {@code cssSelector} does not contain {@code value}.
     * 
     * @param cssSelector the CSS selector of element to search for
     * @param value the value to look for in the element
     */
    public final void assertSelectorDoesNotContain(final String cssSelector, final String value) {
        new ElementDoesNotExistWaiter("CSS selector " + cssSelector + " contains " + value).until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    boolean selectorDoesNotContain = true;
                    
                    for (WebElement element : getElementsByCssSelector(cssSelector)) {
                        if (element.getText() != null && element.getText().matches(value)) {
                            selectorDoesNotContain = false;
                            break;
                        }
                    }

                    return selectorDoesNotContain;
                }
            }
        );
    }

    /**
     * Asserts that the web page contains {@code text}.
     * 
     * @param text the string to look for in the web page.
     */
    public final void assertPageContains(final String text) {
        clickExpandAll();
        
        new ElementExistsWaiter("Page does not contain " + text).until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByText(text);
                }
            }
        ); 
    }
    
    /**
     * Asserts that the web page does <b>not</b> contain {@code text}.
     * 
     * @param text the string to look for in the web page.
     */
    public final void assertPageDoesNotContain(final String text) {
        clickExpandAll();
        
        new ElementDoesNotExistWaiter("Page contains " + text).until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByText(text);
                }
            }
         );
    }
    
    /**
     * Asserts that the web page title contains {@code title}.
     * 
     * @param title the title to look for in the web page.
     */
    public final void assertTitleContains(final String title) {
        String pageSource = driver.getPageSource();
        
        if (!StringUtils.contains(pageSource, title)) {
            if (switchToIFramePortlet()) {
                pageSource = driver.getPageSource();
            }
        }

        assertTrue("Page does not contain " + title, StringUtils.contains(pageSource, title));
    }
    
    /**
     * Asserts that the web page title does <b>not</b> contain {@code title}.
     * 
     * @param title the title to look for in the web page.
     */
    public final void assertTitleDoesNotContain(final String title) {
        String pageSource = driver.getPageSource();
        
        if (StringUtils.contains(pageSource, title)) {
            if (switchToIFramePortlet()) {
                pageSource = driver.getPageSource();
            }
        }

        assertTrue("Page contains" + title, !StringUtils.contains(pageSource, title));
    }
    
    /**
     * Assert that the list of options identified by {@code locator} contains {@code text}.
     *
     * @param locator the id, partial name, partial title, or partial link name of the element to search for
     * @param text the string to look for in the select options
     */
    public final void assertSelectOptionsContains(final String locator, final String text) {
        assertSelectOptionsContains(locator, false, text);
    }
    
    /**
     * Assert that the list of options identified by {@code locator} matches {@code text} depending on the value of {@code exact}.
     *
     * @param locator the id, name, title, or link name of the element to search for, exactness depending on the value of {@code exact}.
     * @param exact whether the locator should match exactly
     * @param text the string to look for in the select options
     */
    public final void assertSelectOptionsContains(final String locator, final boolean exact, final String text) {
        Select select = new Select(getElement(locator, exact));
        
        List<String> selectedValues = new ArrayList<String>();
        for (WebElement option : select.getAllSelectedOptions()) {
            selectedValues.add(option.getText());
        }
        
        assertTrue("Selected options for " + locator + " do not contain " + text, selectedValues.contains(text));
    }
    
    /**
     * Asserts that the Expanded Text Area is providing a popup window in which to change its value.  Verifies that the that this is working properly by 
     * performing the following:
     * <ol>
     * <li>The text area is set to the {@code originalText} value</li>
     * <li>The pencil button is clicked on, opening in a popup window</li>
     * <li>The text in the popup window is examined to verify that it is equal to {@code originalText}</li>
     * <li>The popup window text area is changed to {@code expandedAreaText}</li>
     * <li>The "Continue" button is clicked on, closing the popup window</li>
     * <li>The resulting web page is examined to verify that the text area has changed to the value of {@code expandedAreaText}</li>
     * </ol>
     *
     * @param textAreaId identifies the text area
     * @param originalText the string to set the original text area to
     * @param expandedAreaText the string to set in the popup window text area
     */
    public final void assertExpandedTextArea(final String textAreaId, final String originalText, final String expandedAreaText) {
        set(textAreaId, originalText);
        
        final String locator = "//input[starts-with(@name,'methodToCall.updateTextArea') and contains(@name, '" + textAreaId + "')]";
        
        WebElement textAreaButton = new ElementExistsWaiter("Expand button for " + textAreaId + " not found").until(
            new Function<WebDriver, WebElement>() {
                public WebElement apply(WebDriver driver) {
                    return getElementByXPath(locator);
                }
            }
        );

        textAreaButton.click();
        
        driver.switchTo().window("null");
        
        assertEquals(originalText, get(textAreaId));

        set(textAreaId, expandedAreaText);
        
        click("methodToCall.postTextAreaToParent");

        assertEquals(expandedAreaText, get(textAreaId));
    }
    
    /**
     * Asserts that all of the Help links on a web page (identified by the {@code helpWindow} target) are bringing up a page with the appropriate
     * Help Page title.
     */
    public final void assertHelpLinks() {
        List<WebElement> helpLinks = getElementsByXPath("//node()[@target='helpWindow']");
        for (WebElement helpLink : helpLinks) {
            helpLink.click();
            assertTitleContains(HELP_PAGE_TITLE);
        }
    }
    
    /**
     * Asserts that the row count of the table identified by {@code id} matches {@code expectedRowCount}.
     *
     * @param id identifies the table to search
     * @param expectedRowCount the row count to verify
     */
    public final void assertTableRowCount(final String id, final int expectedRowCount) {
        final String locator = "//table[@id='" + id + "']/tbody/tr";
        
        new ElementExistsWaiter("Actual row count did not match the expected row count of " + expectedRowCount).until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    List<WebElement> rows = getElementsByXPath(locator);
                    return NumberUtils.equals(expectedRowCount, rows.size());
                }
            }
        );
    }
    
    /**
     * Asserts that the text in the table identified by {@code id} at row {@code row} and column {@code column} matches the given 
     * {@code text}.
     *
     * @param id identifies the table to search
     * @param row the 0-valued row number to search
     * @param column the 0-valued column number to search
     * @param text the text to verify
     */
    public final void assertTableCellValue(final String id, final int row, final int column, final String text) {
        String rowString = String.valueOf(row + 1);
        String columnString = String.valueOf(column + 1);

        final String locator = "//table[@id='" + id + "']/tbody/tr[" + rowString + "]/td[" + columnString + "]";
        
        new ElementExistsWaiter(text + " not found for table " + id + " at row " + rowString + " and column " + columnString).until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    WebElement cell = getElementByXPath(locator);
                    return cell != null && StringUtils.equals(text, cell.getText());
                }
            }
        );
    }
    
    /**
     * Asserts that the page contains one or more errors.
     */
    public final void assertPageErrors() {
        clickExpandAll();
        
        new ElementExistsWaiter("Page does not contain errors").until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    return getElementByText(ERRORS_FOUND_ON_PAGE) != null 
                        || getElementByText("Errors Found in Document") != null 
                        || getElementByText("Kuali :: Incident Report") != null;
                }
            }
        );
    }
    
    /**
     * Asserts that the page contains no errors.
     */
    public final void assertNoPageErrors() {
        clickExpandAll();
        
        new ElementDoesNotExistWaiter("Page contains errors").until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    return getElementByText(ERRORS_FOUND_ON_PAGE) != null 
                        || getElementByText("Errors Found in Document") != null 
                        || getElementByText("Kuali :: Incident Report") != null;
                }
            }
        );
    }
    
    /**
     * Asserts that one or more of the errors contained in {@code panelId} contains {@code expectedText}.
     *
     * @param panelId the id attribute of the panel
     * @param text the string to look for in the errors
     */
    public final void assertError(final String panelId, final String expectedText) {
        clickExpandAll();
        
        List<String> errorValues = new ArrayList<String>();
        for (WebElement error : getErrors(panelId)) {
            errorValues.add(error.getValue());
        }
        
        assertTrue("Errors in " + panelId + " do not contain " + expectedText, errorValues.contains(expectedText));
    }

    /**
     * Asserts that there are {@code expectedErrorCount} errors contained in {@code panelId}.
     *
     * @param panelId the id attribute of the panel
     * @param expectedErrorCount the number of errors expected on the page
     */
    public final void assertErrorCount(final String panelId, final int expectedErrorCount) {
        clickExpandAll();
        
        List<WebElement> errors = getErrors(panelId);
        assertEquals("Error count of " + errors.size() + " did not match the expected error count of " + expectedErrorCount, expectedErrorCount, errors.size());
    }
    
    /**
     * Waits for the form to load by checking for the existence of "formComplete."
     */
    private void waitForFormLoad() {
        new ElementExistsWaiter("Page did not load").until(
            new Function<WebDriver, Boolean>() {
                public Boolean apply(WebDriver driver) {
                    boolean isFormComplete = false;
                    
                    WebElement element = driver.findElement(By.id("formComplete"));
                    if (element != null) {
                        isFormComplete = true;
                    }
                    
                    return isFormComplete;
                }
            }
        );
    }
    
    /**
     * Finds an element in the web page and returns whether or not it exists.  To find the element, the following algorithm is used:
     * <ol>
     * <li>Search for an active element with an {@code id} attribute that matches {@code locator}</li>
     * <li>If not found, search for the first active element with a {@code name} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active element with a {@code title} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active link element that matches {@code locator} depending on the value of {@code exact}</li>
     * </ol>
     *
     * @param locator the id, name, title, or link name of the element to search for
     * @param exact whether the name, title, or link name should match exactly
     * @return true if it exists, false otherwise
     */
    private boolean findElement(final String locator, final boolean exact) {
        return new ElementExistenceFinderWaiter().until(locateElementByAll(locator, exact));
    }
    
    /**
     * Gets an element in the web page.  To find the element, the following algorithm is used:
     * <ol>
     * <li>Search for an active element with an {@code id} attribute that matches {@code locator}</li>
     * <li>If not found, search for the first active element with a {@code name} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active element with a {@code title} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active link element that matches {@code locator} depending on the value of {@code exact}</li>
     * </ol>
     *
     * @param locator the id, name, title, or link name of the element to search for
     * @param exact whether the name, title, or link name should match exactly
     * @return the first matching element
     */
    private WebElement getElement(final String locator, final boolean exact) {
        return new ElementExistsWaiter(locator + " not found").until(locateElementByAll(locator, exact));
    }
    
    /**
     * Returns a function that locates an element.  To find the element, the following algorithm is used:
     * <ol>
     * <li>Search for an active element with an {@code id} attribute that matches {@code locator}</li>
     * <li>If not found, search for the first active element with a {@code name} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active element with a {@code title} attribute that matches {@code locator} depending on the value of {@code exact}</li>
     * <li>If not found, search for the first active link element that matches {@code locator} depending on the value of {@code exact}</li>
     * </ol>
     *
     * @param locator the id, name, title, or link name of the element to search for
     * @param exact whether the name, title, or link name should match exactly
     * @return a function that locates the first matching element
     */
    private Function<WebDriver, WebElement> locateElementByAll(final String locator, final boolean exact) {
        return new Function<WebDriver, WebElement>() {
            public WebElement apply(WebDriver driver) {
                WebElement element = getElementById(locator);
                
                if (element == null) {
                    element = getElementByName(locator, exact);
                    if (element == null) {
                        element = getElementByTitle(locator, exact);
                        if (element == null) {
                            element = getElementByLinkText(locator, exact);
                        }
                    }
                }
                
                return element;
            }
        };
    }
    
    /**
     * Gets the first active element in the web page with an {@code id} attribute that matches {@code id}.
     * 
     * @param id the id of the element to search for
     * @return the first matching element
     */
    private WebElement getElementById(final String id) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsById(id);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }

    /**
     * Gets the first active element in the web page with a {@code name} attribute that matches {@code name} depending on the value of {@code exact}.
     * 
     * @param name the name of the element to search for
     * @param exact whether the title should match exactly
     * @return the first matching element
     */
    private WebElement getElementByName(final String name, final boolean exact) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByName(name, exact);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets the first active element in the web page with a {@code title} attribute that matches {@code title} depending on the value of {@code exact}.
     * 
     * @param title the title of the element to search for
     * @param exact whether the title should match exactly
     * @return the first matching element
     */
    private WebElement getElementByTitle(final String title, final boolean exact) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByTitle(title, exact);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets the first active element in the web page with link text that matches {@code linkText} depending on the value of {@code exact}.
     * 
     * @param linkText the link text of the element to search for
     * @param exact whether the title should match exactly
     * @return the first matching element
     */
    private WebElement getElementByLinkText(final String linkText, final boolean exact) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByLinkText(linkText, exact);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets the first active element in the web page that matches the XPath in {@code xPath}.
     * 
     * @param xPath an XPath expression for the element to search for
     * @return the first matching element
     */
    private WebElement getElementByXPath(final String xPath) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByXPath(xPath);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets the first active element in the web page that matches the CSS selector in {@code cssSelector}.
     * 
     * @param cssSelector a CSS selector expression for the element to search for
     * @return the first matching element
     */
    private WebElement getElementByCssSelector(final String cssSelector) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByCssSelector(cssSelector);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets the first active element in the web page with text that contains {@code text}.
     * 
     * @param text the text in the element to search for
     * @return the first matching element
     */
    private WebElement getElementByText(final String text) {
        WebElement element = null;
        
        List<WebElement> elements = getElementsByText(text);
        if (!elements.isEmpty()) {
            element = elements.get(0);
        }
        
        return element;
    }
    
    /**
     * Gets all active elements in the web page with an {@code id} attribute that matches {@code id}.
     * 
     * @param id the id of the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getElementsById(final String id) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsById(id);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsById(id));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame with an {@code id} attribute that matches {@code id}.
     * 
     * @param id the id of the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsById(final String id) {
        List<WebElement> elements = new ArrayList<WebElement>();

        for (WebElement element : driver.findElements(By.id(id))) {
            if (((RenderedWebElement) element).isDisplayed()) {
                elements.add(element);
            }
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the web page with a {@code name} attribute that matches {@code name} depending on the value of {@code exact}.
     * 
     * @param name the partial name of the element to search for
     * @param exact whether the title should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByName(final String name, final boolean exact) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByName(name, exact);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByName(name, exact));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame with a {@code name} attribute that matches {@code name} depending on the value of {@code exact}.
     * 
     * @param name the name of the element to search for
     * @param exact whether the name should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByName(final String name, final boolean exact) {
        List<WebElement> activeElements = new ArrayList<WebElement>();
        
        List<WebElement> elements = new ArrayList<WebElement>();
        if (exact) {
            elements.addAll(driver.findElements(By.name(name)));
        } else {
            elements.addAll(driver.findElements(By.xpath(getAttributeContainsXPath("name", name))));
        }

        for (WebElement element : elements) {
            if (((RenderedWebElement) element).isDisplayed()) {
                activeElements.add(element);
            }
        }
        
        return activeElements;
    }
    
    /**
     * Gets all active elements in the web page with a {@code title} attribute that matches {@code title} depending on the value of {@code exact}.
     * 
     * @param title the title of the element to search for
     * @param exact whether the title should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByTitle(final String title, final boolean exact) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByTitle(title, exact);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByTitle(title, exact));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame with a {@code title} attribute matches {@code title} depending on the value of {@code exact}.
     * 
     * @param title the title of the element to search for
     * @param exact whether the title should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByTitle(final String title, final boolean exact) {
        List<WebElement> activeElements = new ArrayList<WebElement>();
        
        List<WebElement> elements = new ArrayList<WebElement>();
        if (exact) {
            elements.addAll(driver.findElements(By.xpath("//*[@title = '" + title + "']")));
        } else {
            elements.addAll(driver.findElements(By.xpath(getAttributeContainsXPath("title", title))));
        }

        for (WebElement element : elements) {
            if (((RenderedWebElement) element).isDisplayed()) {
                activeElements.add(element);
            }
        }
        
        return activeElements;
    }
    
    /**
     * Gets all active elements in the web page with link text that matches {@code linkText} depending on the value of {@code exact}.
     * 
     * @param linkText the link text of the element to search for
     * @param exact whether the link text should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByLinkText(final String linkText, final boolean exact) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByLinkText(linkText, exact);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByLinkText(linkText, exact));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame with link text that matches {@code linkText} depending on the value of {@code exact}.
     * 
     * @param linkText the link text of the element to search for
     * @param exact whether the link text should match exactly
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByLinkText(final String linkText, final boolean exact) {
        List<WebElement> activeElements = new ArrayList<WebElement>();
        
        List<WebElement> elements = new ArrayList<WebElement>();
        if (exact) {
            elements.addAll(driver.findElements(By.linkText(linkText)));
        } else {
            elements.addAll(driver.findElements(By.partialLinkText(linkText)));
        }

        for (WebElement element : elements) {
            if (((RenderedWebElement) element).isDisplayed()) {
                activeElements.add(element);
            }
        }
        
        return activeElements;
    }
    
    /**
     * Gets all active elements in the web page that match the XPath in {@code xPath}.
     * 
     * @param xPath an XPath expression for the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByXPath(final String xPath) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByXPath(xPath);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByXPath(xPath));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame that match the XPath in {@code xPath}.
     * 
     * @param xPath an XPath expression for the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByXPath(final String xPath) {
        List<WebElement> elements = new ArrayList<WebElement>();

        for (WebElement element : driver.findElements(By.xpath(xPath))) {
            if (((RenderedWebElement) element).isDisplayed()) {
                elements.add(element);
            }
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the web page that match the CSS selector in {@code cssSelector}.
     * 
     * @param cssSelector a CSS selector for the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByCssSelector(final String cssSelector) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByCssSelector(cssSelector);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByCssSelector(cssSelector));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame that match the CSS selector in {@code cssSelector}.
     * 
     * @param cssSelector a CSS selector for the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByCssSelector(final String cssSelector) {
        List<WebElement> elements = new ArrayList<WebElement>();
        
        for (WebElement element : driver.findElements(By.cssSelector(cssSelector))) {
            if (((RenderedWebElement) element).isDisplayed()) {
                elements.add(element);
            }
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the web page with text that contains {@code text}.
     * 
     * @param text the text in the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getElementsByText(final String text) {
        driver.switchTo().defaultContent();
        
        List<WebElement> elements = getActiveElementsByText(text);
        
        if (switchToIFramePortlet()) {
            elements.addAll(getActiveElementsByText(text));
        }
        
        return elements;
    }
    
    /**
     * Gets all active elements in the current frame with text that contains {@code text}.
     * 
     * @param text the text in the element to search for
     * @return a list of matching elements
     */
    private List<WebElement> getActiveElementsByText(final String text) {
        List<WebElement> elements = new ArrayList<WebElement>();

        for (WebElement element : driver.findElements(By.xpath("//*[contains(text(), '" + text + "')]"))) {
            if (((RenderedWebElement) element).isDisplayed()) {
                elements.add(element);
            }
        }
        
        return elements;
    }
    
    /**
     * Attempts to switch to KC's inner frame, named 'iframeportlet'.
     *
     * @return true if the driver successfully switched to the inner frame, false otherwise
     */
    private boolean switchToIFramePortlet() {
        boolean switchToIFramePortletSuccessful = true;
        
        try {
            driver.switchTo().frame("iframeportlet");
        } catch (Exception e) {
            switchToIFramePortletSuccessful = false;
        }
        
        return switchToIFramePortletSuccessful;
    }
    
   /**
    * Returns the XPath string that searches for elements that have an {@code attribute} that contains {@code text}.
    * 
    * @param attribute the name of the attribute
    * @param text the text to search for in the attribute
    * @return an XPath expression for elements that have an {@code attribute} that contains {@code text}
    */
    private String getAttributeContainsXPath(final String attribute, final String text) {
        return "//*[contains(@" + attribute + ", '" + text + "')]";
    }
    
    /**
     * Returns the list of elements that contain errors in the element identified by {@code panelId}.
     * 
     * @param panelId the id attribute of the panel
     * @return a list of errors contained in {@code panelId}
     */
    private List<WebElement> getErrors(final String panelId) {
        return getElementsByXPath("//div[@id='" + panelId + "']//div[@style='display: list-item; margin-left: 20px;']");
    }
    
    /**
     * Implements a {@code Wait<WebDriver>} class for waiting for elements (especially Ajax elements) to appear on the page within a specified timeout.  
     * Modified from {@code WebDriverWait} in order to integrate custom JUnit4 assertion messages. 
     * 
     * @see org.openqa.selenium.support.ui.Wait
     * @see org.openqa.selenium.support.ui.WebDriverWait
     */
    private class ElementExistsWaiter implements Wait<WebDriver> {
        
        private final Clock clock = new SystemClock();
        private final long testTimeOut = 10000;
        private final long sleepTimeOut = 500;
        
        private String message;
        
        protected ElementExistsWaiter(String message) {
            this.message = message;
        }
        
        /**
         * {@inheritDoc}
         * @see org.openqa.selenium.support.ui.Wait#until(com.google.common.base.Function)
         */
        public <T> T until(Function<WebDriver, T> exists) {
            long end = clock.laterBy(testTimeOut);
            while (clock.isNowBefore(end)) {
                T value = exists.apply(driver);
                
                if (value != null) {
                    if (Boolean.class.equals(value.getClass())) {
                        if (Boolean.TRUE.equals(value)) {
                            return value;
                        }
                    } else {
                        return value;
                    }
                }
                
                sleep();
            }
            
            throw new AssertionError(message);
        }
        
        private void sleep() {
            try {
                Thread.sleep(sleepTimeOut);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
    
    /**
     * Implements a {@code Wait<WebDriver>} class for waiting for elements (especially Ajax elements) to not appear on the page within a specified timeout.  
     * Modified from {@code WebDriverWait} in order to integrate custom JUnit4 assertion messages and add the not condition. 
     * 
     * @see org.openqa.selenium.support.ui.Wait
     * @see org.openqa.selenium.support.ui.WebDriverWait
     */
    private class ElementDoesNotExistWaiter implements Wait<WebDriver> {
        
        private final Clock clock = new SystemClock();
        private final long testTimeOut = 1000;
        private final long sleepTimeOut = 500;
        
        private String message;
        
        protected ElementDoesNotExistWaiter(String message) {
            this.message = message;
        }
        
        /**
         * {@inheritDoc}
         * @see org.openqa.selenium.support.ui.Wait#until(com.google.common.base.Function)
         */
        public <T> T until(Function<WebDriver, T> exists) {
            long end = clock.laterBy(testTimeOut);
            while (clock.isNowBefore(end)) {
                T value = exists.apply(driver);
                
                if (value != null) {
                    if (Boolean.class.equals(value.getClass())) {
                        if (Boolean.TRUE.equals(value)) {
                            throw new AssertionError(message);
                        }
                    } else {
                        throw new AssertionError(message);
                    }
                }
                
                sleep();
            }
            
            return null;
        }
        
        private void sleep() {
            try {
                Thread.sleep(sleepTimeOut);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }
    
    /**
     * Mimics an {@code ElementExistsWaiter} to determine whether an element exists on the page or not.
     *
     * @see org.openqa.selenium.support.ui.WebDriverWait
     */
    private class ElementExistenceFinderWaiter {
        
        private final Clock clock = new SystemClock();
        private final long testTimeOut = 1000;
        private final long sleepTimeOut = 500;
        
        /**
         * Mimics the {@code ElementExistsWaiter.until(..)} method and waits until the function evaluates to a value that is non-null. If the function becomes
         * non-null within a certain time, then this method will return true, otherwise, it will return false.
         *
         * @param exists the function to evaluate
         * 
         * @see org.openqa.selenium.support.ui.Wait#until(com.google.common.base.Function)
         */
        public <T> boolean until(Function<WebDriver, T> exists) {
            boolean isFound = false;
            
            long end = clock.laterBy(testTimeOut);
            while (clock.isNowBefore(end)) {
                T value = exists.apply(driver);
                
                if (value != null) {
                    isFound = true;
                }
                
                sleep();
            }
            
            return isFound;
        }
        
        private void sleep() {
            try {
                Thread.sleep(sleepTimeOut);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

}
.. code:: robotframework
*** Settings ***
| Resource | ../resources/workshop_res.txt
Test Teardown    Close All Browsers
Test Setup       Open Prontomarketing website
Documentation    First tc


*** Test Cases ***
User view prontoTools website home
    Capture Page Screenshot
    Title Should Be    Pronto Tools
    Page Should Contain Image    https://d2oc0ihd6a5bt.cloudfront.net/wp-content/uploads/sites/1621/2016/04/banner_magicwand.png
    Page Should Contain Link    http://www.prontotools.io/category/projects/
    Page Should Contain Element    xpath=//div[@class="social-footer"]/a[@href="https://www.facebook.com/prontotools/"]

User visit about page
    Go To    http://www.prontotools.io/about/
    Element Should Contain    //div[@class="col-md-7 col-md-pull-5 sm-no-margin-top xs-no-margin-top"]    Our roots began in 2012 as Pronto Marketing

User visit about page via link
    Click Element    link=ABOUT
    Element Should Contain    //div[@class="col-md-7 col-md-pull-5 sm-no-margin-top xs-no-margin-top"]    Our roots began in 2012 as Pronto Marketing

User search pheonix blog
    Search keyword blog with word Phoenix

*** Keywords ***
Search keyword blog with word Phoenix
    Click Element    link=BLOG
#    Wait Until Element is Visible    //form[@id='searchform']    10
    Input Text    xpath=//input[@class='search-query']    Phoenix
    Click Button    searchsubmit
    Page Should Contain    Search Results for: Phoenix


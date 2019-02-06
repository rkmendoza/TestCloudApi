package com.riskiq.api.v2.stepdefinitions.monitor;


import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.*;
import static org.hamcrest.core.Is.is;

public class AlertsSteps extends FlowData  {

    @Given("^a valid user belonging to the organization of the project to be searched$")
    public void aValidUserBelongingToTheOrganizationOfTheProjectToBeSearched() {
        rs.set(given().auth().preemptive().basic(Hooks.userName1, Hooks.userPw1));
    }

    @Given("^a valid user not belonging to the organization of the project to be searched$")
    public void aValidUserNotBelongingToTheOrganizationOfTheProjectToBeSearched() {
        rs.set(given().auth().preemptive().basic(Hooks.userName1, Hooks.userPw1));
    }

    @When("^users want to get information of alerts without params$")
    public void usersWantToDeleteProjectWithoutValues() {
        response.set(rs.get().contentType(ContentType.JSON).get("/monitor"));
    }


    @And("^the number of alerts should be greater than (\\d+)$")
    public void theNumberOfProjectsShouldBeEqualTo(int numberOfProjects) throws Throwable {
        if (numberOfProjects == 1) {
            response.get().then().body("results", is(nullValue()));
        } else if (numberOfProjects > 1) {
            response.get().then().body("results.size()", equalTo(numberOfProjects));
        }
    }

    @When("^users want to get information of alerts with the values$")
    public void usersWantToGetInformationOnTheProjectWithId(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get("/monitor"));
System.out.println(response.get().getBody().prettyPrint());
    }

}

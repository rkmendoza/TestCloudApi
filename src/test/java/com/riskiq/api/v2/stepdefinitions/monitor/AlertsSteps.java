package com.riskiq.api.v2.stepdefinitions.monitor;


import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;

import static org.hamcrest.Matchers.*;

public class AlertsSteps extends FlowData  {

    @Given("^a valid user belonging to the organization of the project to be searched$")
    public void aValidUserBelongingToTheOrganizationOfTheProjectToBeSearched() {
        rs.set(setCredentials(userName5,userPw5));
    }

    @Given("^a valid user not belonging to the organization of the project to be searched$")
    public void aValidUserNotBelongingToTheOrganizationOfTheProjectToBeSearched() {
        rs.set(setCredentials(userName4,userPw4));
    }

    @When("^users want to get information of alerts without params$")
    public void usersWantToDeleteProjectWithoutValues() {
        response.set(rs.get().contentType(ContentType.JSON).get(setMethodAndEndPoint(GET,"monitor")));
    }


    @And("^the number of alerts should be greater than (\\d+)$")
    public void theNumberOfProjectsShouldBeEqualTo(int numberOfAlert) throws Throwable {
        response.get().then().body("totalRecords", greaterThan(numberOfAlert));
    }

    @When("^users want to get information of alerts with the values$")
    public void usersWantToGetInformationOnTheProjectWithId(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"monitor")));
    }

}

package com.riskiq.api.v2.stepdefinitions.project;



import com.riskiq.api.v2.stepdefinitions.Hooks;
import cucumber.api.java.en.Given;
import io.restassured.RestAssured;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;


import java.util.Collections;

import static com.riskiq.api.v2.misc.Utils.PUT;
import static com.riskiq.api.v2.misc.Utils.setCredentials;
import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.greaterThan;
import static org.hamcrest.Matchers.nullValue;
import static org.hamcrest.core.Is.is;

public class CreateSteps extends FlowData  {

    @Given("^user whit valid credentials and quota to create project is exceeded$")
    public void aValidUserFromRiskIQPlatform() {
        rs.set(setCredentials(Hooks.userName3,Hooks.userPw3));

    }

    @When("^users want to get information of the all project$")
    public void users_want_to_get_information_of_the_all_project() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        response.set(rs.get().get("/project"));
    }

    @When("^users want to create project with the values$")
    public void usersWantToCreateProjectWithTheValues(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
        owner.set(response.get().path("owner"));
        projectId.set(response.get().path("guid"));
        creator.set(response.get().path("creator"));
        visibility.set(response.get().path("visibility"));
        organization.set(response.get().path("organization"));
        featured.set(response.get().path("featured"));
    }

    @And("^a created project with values$")
    public void aCreatedProjectWithValues(DataTable dataTable) throws Throwable {
        rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName2, Hooks.userPw2));
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
        owner.set(response.get().path("owner"));
        projectId.set(response.get().path("guid"));
        creator.set(response.get().path("creator"));
        visibility.set(response.get().path("visibility"));
        organization.set(response.get().path("organization"));
        featured.set(response.get().path("featured"));
    }


    @When("^a created project with values with invalid credentials$")
    public void aCreatedProjectWithInvalidCredentials(DataTable dataTable) throws Throwable {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));

    }


    @And("^a created project with values by user of organization B$")
    public void aCreatedProjectWithValuesByUserB(DataTable dataTable) throws Throwable {
        rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName4, Hooks.userPw4));
        projectId.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")).then().extract().path("guid"));

    }

    @And("^a created project with values by user of organization A$")
    public void aCreatedProjectWithValuesByUserA(DataTable dataTable) throws Throwable {
        rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName1, Hooks.userPw1));
        projectId.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")).then().extract().path("guid"));

    }

    @When("^users want to get information of the project by id$")
    public void usersWantToGetInformationOnTheProject() throws Throwable {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(Collections.singletonList(BodyElement.builder().key("project").value(projectId.get()).build()))).get(setMethodAndEndPoint(PUT,"project")));
    }

    @And("^the number of projects should be greater than (\\d+)$")
    public void theNumberOfProjectsShouldBeGreaterThan(int numberOfProjects) throws Throwable {
        response.get().then().body("results.size()", greaterThan(numberOfProjects));
    }

    @And("^the number of projects should be equal to (\\d+)$")
    public void theNumberOfProjectsShouldBeEqualTo(int numberOfProjects) throws Throwable {
        if (numberOfProjects == 1) {
            response.get().then().body("results", is(nullValue()));
        } else if (numberOfProjects > 1) {
            response.get().then().body("results.size()", equalTo(numberOfProjects));
        }
    }





}

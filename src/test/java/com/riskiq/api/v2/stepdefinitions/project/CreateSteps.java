package com.riskiq.api.v2.stepdefinitions.project;


import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.java.en.Given;
import io.restassured.RestAssured;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;


import java.util.Collections;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;

import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.greaterThan;
import static org.hamcrest.Matchers.nullValue;
import static org.hamcrest.core.Is.is;

public class CreateSteps extends FlowData  {

    @Given("^user whit valid credentials and quota to create project is exceeded$")
    public void aValidUserFromRiskIQPlatform() {
        rs.set(setCredentials(userName3,userPw3));

    }

    @When("^users want to get information of the all project$")
    public void users_want_to_get_information_of_the_all_project() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        response.set(rs.get().get(setMethodAndEndPoint(GET,"project")));
    }

    @When("^users want to create project with the values$")
    public void usersWantToCreateProjectWithTheValues(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
        setProject(Project.with()
                .guid(response.get().path("guid").toString())
                .owner(response.get().path("owner"))
                .creator(response.get().path("creator"))
                .visibility(response.get().path("visibility"))
                .organization(response.get().path("organization"))
                .featured(response.get().path("featured"))
                .isCreated(true)
                .create());
    }

    @And("^a created project with values$")
    public void aCreatedProjectWithValues(DataTable dataTable) {
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
        setProject(Project.with()
                .guid(response.get().path("guid"))
                .owner(response.get().path("owner"))
                .creator(response.get().path("creator"))
                .visibility(response.get().path("visibility"))
                .organization(response.get().path("organization"))
                .isCreated(true)
                .create());
    }


    @When("^a created project with values with invalid credentials$")
    public void aCreatedProjectWithInvalidCredentials(DataTable dataTable) throws Throwable {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));

    }


    @And("^a created project with values by user of organization B$")
    public void aCreatedProjectWithValuesByUserB(DataTable dataTable) throws Throwable {
        rs.set(RestAssured.given().auth().preemptive().basic(userName4, userPw4));
        setProject(Project.with()
        .guid(rs.get().contentType(ContentType.JSON)
              .body(dataTableToJson(dataTable.asList(BodyElement.class)))
              .put(setMethodAndEndPoint(PUT,"project"))
              .then().extract().path("guid"))
        .isCreated(true)
        .create());
    }

    @And("^a created project with values by user of organization A$")
    public void aCreatedProjectWithValuesByUserA(DataTable dataTable) throws Throwable {
        rs.set(RestAssured.given().auth().preemptive().basic(userName1, userPw1));
        setProject(Project.with()
        .guid(rs.get().contentType(ContentType.JSON)
              .body(dataTableToJson(dataTable.asList(BodyElement.class)))
              .put(setMethodAndEndPoint(PUT,"project"))
              .then().extract().path("guid"))
        .isCreated(true)
        .create());

    }

    @When("^users want to get information of the project by id$")
    public void usersWantToGetInformationOnTheProject() throws Throwable {
        response.set(rs.get()
        .contentType(ContentType.JSON)
        .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
                              .key("project").value(getProject().getGuid())
                              .build())))
        .get(setMethodAndEndPoint(GET,"project")));
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

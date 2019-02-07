package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;


import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;


public class FindSteps extends FlowData  {


    @Given("^a project that already exists with values$")
    public void a_project_that_already_exists_with_values(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
    }

    @When("^users want to get information on the project with the values$")
    public void usersWantToGetInformationOnTheProjectWithId(DataTable dataTable) {
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"project")));
    }


    @When("^users in the same organization want to get information on the project with the values$")
    public void users_in_the_same_organization_want_to_get_information_on_the_project_with_the_values(DataTable dataTable) {
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"project")));
    }

    @When("^users not in the same organization want to get information on the project with the values$")
    public void users_not_in_the_same_organization_want_to_get_information_on_the_project_with_the_values(DataTable dataTable) {
        rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"project")));

    }

    @When("^The user who created the project wants to obtain information about the project with the values\\.$")
    public void the_user_who_created_the_project_wants_to_obtain_information_about_the_project_with_the_values(DataTable dataTable) {
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"project")));
    }


}

package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;


public class UpdateSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project"));
    owner.set(response.get().path("owner"));
    projectId.set(response.get().path("guid"));
    creator.set(response.get().path("creator"));
    visibility.set(response.get().path("visibility"));
    organization.set(response.get().path("organization"));
    featured.set(response.get().path("featured"));
  }

  @When("^users want to update the project with the values$")
  public void users_want_to_update_the_project_with_the_values(DataTable dataTable) {
    response(dataTable);
    /*response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project"));
    owner.set(response.get().path("owner"));
    projectId.set(response.get().path("guid"));
    creator.set(response.get().path("creator"));
    visibility.set(response.get().path("visibility"));
    organization.set(response.get().path("organization"));
    featured.set(response.get().path("featured"));*/
  }


  @When("^users in the same organization want to update the project with the values$")
  public void users_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName1, Hooks.userPw1));
    response(dataTable);

    /*response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project"));
    owner.set(response.get().path("owner"));
    projectId.set(response.get().path("guid"));
    creator.set(response.get().path("creator"));
    visibility.set(response.get().path("visibility"));
    organization.set(response.get().path("organization"));
    featured.set(response.get().path("featured"));*/
  }


  @When("^users not in the same organization want to update the project with the values$")
  public void users_not_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName3, Hooks.userPw3));
    response(dataTable);

   /* response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project"));
    owner.set(response.get().path("owner"));
    projectId.set(response.get().path("guid"));
    creator.set(response.get().path("creator"));
    visibility.set(response.get().path("visibility"));
    organization.set(response.get().path("organization"));
    featured.set(response.get().path("featured"));*/
  }

  @When("^Users of the same organization that created the project want to update the project with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_to_update_the_project_with_the_values(DataTable dataTable) {
    response(dataTable);

//    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project"));
//    owner.set(response.get().path("owner"));
//    projectId.set(response.get().path("guid"));
//    creator.set(response.get().path("creator"));
//    visibility.set(response.get().path("visibility"));
//    organization.set(response.get().path("organization"));
//    featured.set(response.get().path("featured"));

  }


}

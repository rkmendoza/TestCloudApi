package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;


public class SetTagsSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put("/project/tag"));
    owner.set(response.get().path("owner"));
    projectId.set(response.get().path("guid"));
    creator.set(response.get().path("creator"));
    visibility.set(response.get().path("visibility"));
    organization.set(response.get().path("organization"));
    featured.set(response.get().path("featured"));
  }

  @When("^users want to Set project tags with the values$")
  public void users_want_to_Set_project_tags_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users in the same organization want Set project tags with the values$")
  public void users_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName1, Hooks.userPw1));
    response(dataTable);
  }

  @When("^Users of the same organization that created the project want Set project tags with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Set_project_tags_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users not in the same organization want Set project tags with the values$")
  public void users_not_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(Hooks.userName3, Hooks.userPw3));
    response(dataTable);
  }

}

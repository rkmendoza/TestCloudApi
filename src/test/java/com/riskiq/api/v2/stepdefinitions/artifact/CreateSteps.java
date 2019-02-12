package com.riskiq.api.v2.stepdefinitions.artifact;


import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.PUT;


public class CreateSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"artifact")));
    setProject(Project.with()
      .guid(response.get().path("guid"))
      .isCreated(true)
      .create());
  }

  @When("^users want to Create artifact with the values$")
  public void users_want_to_Create_artifact_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users in the same organization want Create artifact with the values$")
  public void users_in_the_same_organization_want_Create_artifact_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName2, userName2));
    response(dataTable);
  }

  @When("^Users of the same organization that created the project want Create artifact with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Create_artifact_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users not in the same organization want Create artifact with the values$")
  public void users_not_in_the_same_organization_want_Create_artifact_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    response(dataTable);
  }

}
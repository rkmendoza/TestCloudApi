package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;

import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import static com.riskiq.api.v2.misc.Utils.*;

import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.*;


public class UpdateSteps extends FlowData  {

  @When("^users want to update the project with the values$")
  public void users_want_to_update_the_project_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);
  }


  @When("^users in the same organization want to update the project with the values$")
  public void users_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName1, userPw1));
    updateProject(dataTable);
  }


  @When("^users not in the same organization want to update the project with the values$")
  public void users_not_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    updateProject(dataTable);
  }

  @When("^Users of the same organization that created the project want to update the project with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_to_update_the_project_with_the_values(DataTable dataTable) {
    updateProject(dataTable);
  }


}

package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import static com.riskiq.api.v2.misc.Utils.*;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.setProjectTac;
import static org.mortbay.jetty.HttpMethods.POST;


public class UpdateSteps extends FlowData  {

  @When("^users want to update the project with the values$")
  public void users_want_to_update_the_project_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);
  }


  @When("^users in the same organization want to update the project with the values$")
  public void users_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName1, userPw1));
    setProjectTac(dataTable);
  }


  @When("^users not in the same organization want to update the project with the values$")
  public void users_not_in_the_same_organization_want_to_update_the_project_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    setProjectTac(dataTable);
  }

  @When("^Users of the same organization that created the project want to update the project with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_to_update_the_project_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);


  }


}

package com.riskiq.api.v2.stepdefinitions.project.tag;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.addProjectTac;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.setProjectTac;


public class AddSteps extends FlowData  {

  @When("^users want to Add project tags with the values$")
  public void users_want_to_Add_project_tags_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);
  }

  @When("^users in the same organization want Add project tags with the values$")
  public void users_in_the_same_organization_want_Add_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName1, userPw1));
    addProjectTac(dataTable);
  }

  @When("^Users of the same organization that created the project want Add project tags with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Add_project_tags_with_the_values(DataTable dataTable) {
    addProjectTac(dataTable);
  }

  @When("^users not in the same organization want Add project tags with the values$")
  public void users_not_in_the_same_organization_want_Add_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    addProjectTac(dataTable);
  }

}

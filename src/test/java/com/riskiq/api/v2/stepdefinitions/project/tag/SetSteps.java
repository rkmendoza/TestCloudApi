package com.riskiq.api.v2.stepdefinitions.project.tag;


import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import io.restassured.RestAssured;
import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;
import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.setProjectTac;
import static org.mortbay.jetty.HttpMethods.PUT;


public class SetSteps extends FlowData  {

  @When("^users want to Set project tags with the values$")
  public void users_want_to_Set_project_tags_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);
  }

  @When("^users in the same organization want Set project tags with the values$")
  public void users_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName1, userName1));
    setProjectTac(dataTable);
  }

  @When("^Users of the same organization that created the project want Set project tags with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Set_project_tags_with_the_values(DataTable dataTable) {
    setProjectTac(dataTable);
  }

  @When("^users not in the same organization want Set project tags with the values$")
  public void users_not_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    setProjectTac(dataTable);
  }

}

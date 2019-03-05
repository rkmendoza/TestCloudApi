package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;
import static org.mortbay.jetty.HttpMethods.GET;


public class FindSteps extends FlowData  {

  @Given("^a created artifact with values$")
  public void a_created_artifact_with_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    createArtifact(dataTable);
  }

  @When("^users in the same organization want Find artifacts$")
  public void users_in_the_same_organization_want_Find_artifacts() {
    response.set(rs.get().get(setMethodAndEndPoint(GET,"artifact")));
  }

  @When("^users in the same organization want Find artifacts with the values$")
  public void users_in_the_same_organization_want_Find_artifacts_with_the_values(DataTable dataTable) {
    findArtifact(dataTable);
  }

  @When("^user not in the same organization want Find artifacts with the values$")
  public void user_not_in_the_same_organization_want_Find_artifacts_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    findArtifact(dataTable);
  }

  @When("^users in the same organization, which created the project want Find artifacts with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Find_artifacts_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    findArtifact(dataTable);
  }



}

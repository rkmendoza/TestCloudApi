package com.riskiq.api.v2.stepdefinitions.artifact;


import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.updateArtifact;
import static org.mortbay.jetty.HttpMethods.POST;
import static org.mortbay.jetty.HttpMethods.PUT;


public class UpdateSteps extends FlowData  {

  @When("^users want to Update artifact with the values$")
  public void users_want_to_Update_artifact_with_the_values(DataTable dataTable) throws Throwable {
    updateArtifact(dataTable);
  }

  @When("^users in the same organization want Update artifact with the values$")
  public void users_in_the_same_organization_want_Update_artifact_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName1, userPw1));
    updateArtifact(dataTable);
  }

  @When("^Users of the same organization, which created the project want Update artifact with the values$")
  public void users_of_the_same_organization_which_created_the_project_want_Update_artifact_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName2, userPw2));
    updateArtifact(dataTable);
  }

  @When("^users in the same organization, which not created the project want Update artifact with the values$")
  public void users_in_the_same_organization_which_not_created_the_project_want_Update_artifact_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName1, userPw1));
    updateArtifact(dataTable);
  }

  @When("^users not in the same organization want Update artifact with the values$")
  public void users_not_in_the_same_organization_want_Update_artifact_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName3, userPw3));
    updateArtifact(dataTable);
  }

}

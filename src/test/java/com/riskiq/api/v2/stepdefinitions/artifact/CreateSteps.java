package com.riskiq.api.v2.stepdefinitions.artifact;


import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;


public class CreateSteps extends FlowData  {


  @When("^users want to Create artifact with the values$")
  public void users_want_to_Create_artifact_with_the_values(DataTable dataTable) {
    createArtifact(dataTable);;
  }

  @When("^users in the same organization want Create artifact with the values$")
  public void users_in_the_same_organization_want_Create_artifact_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    createArtifact(dataTable);
  }

  @When("^Users of the same organization that created the project want Create artifact with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Create_artifact_with_the_values(DataTable dataTable) {
    createArtifact(dataTable);
  }

  @When("^users not in the same organization want Create artifact with the values$")
  public void users_not_in_the_same_organization_want_Create_artifact_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    createArtifact(dataTable);
  }

}

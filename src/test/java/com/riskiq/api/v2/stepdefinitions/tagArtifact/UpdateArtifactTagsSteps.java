package com.riskiq.api.v2.stepdefinitions.tagArtifact;


import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.tagArtifact.impl.TagArtifact.UpdateArtifactTags;


public class UpdateArtifactTagsSteps extends FlowData  {

  @When("^users want to Update artifact tags with the values$")
  public void users_want_to_Update_artifact_tags_with_the_values(DataTable dataTable) throws Throwable {
    UpdateArtifactTags(dataTable);
  }

  @When("^users in the same organization want Update artifact tags with the values$")
  public void users_in_the_same_organization_want_Update_artifact_tags_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName1, userPw1));
    UpdateArtifactTags(dataTable);
  }

  @When("^Users of the same organization, which created the project want Update artifact tags with the values$")
  public void users_of_the_same_organization_which_created_the_project_want_Update_artifact_tags_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName2, userPw2));
    UpdateArtifactTags(dataTable);
  }

  @When("^users in the same organization, which not created the project want Update artifact tags with the values$")
  public void users_in_the_same_organization_which_not_created_the_project_want_Update_artifact_tags_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName1, userPw1));
    UpdateArtifactTags(dataTable);
  }

  @When("^users not in the same organization want Update artifact tags with the values$")
  public void users_not_in_the_same_organization_want_Update_artifact_tags_with_the_values(DataTable dataTable) throws Throwable {
    rs.set(setCredentials(userName3, userPw3));
    UpdateArtifactTags(dataTable);
  }

}

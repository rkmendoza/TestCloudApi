package com.riskiq.api.v2.stepdefinitions.tagArtifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.AddTags;
import static com.riskiq.api.v2.stepdefinitions.tagArtifact.impl.TagArtifact.RemoveArtifactTags;


public class RemoveArtifactTagsSteps extends FlowData  {

  /*@Given("^Added Tags with the values$")
  public void added_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    AddTags(dataTable);
  }*/

  @When("^users with wrong credentials want Remove Artifact Tags with the values$")
  public void users_with_wrong_credentials_want_Remove_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    RemoveArtifactTags(dataTable);
  }

  @When("^users in the same organization want Remove Artifact Tags with the values$")
  public void users_in_the_same_organization_want_Remove_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName1, userPw1));
    RemoveArtifactTags(dataTable);
  }

  @When("^user not in the same organization want Remove Artifact Tags with the values$")
  public void user_not_in_the_same_organization_want_Remove_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    RemoveArtifactTags(dataTable);
  }

  @When("^users in the same organization, which created the project want Remove Artifact Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Remove_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    RemoveArtifactTags(dataTable);
  }

}

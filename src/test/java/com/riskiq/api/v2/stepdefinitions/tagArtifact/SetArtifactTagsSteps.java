package com.riskiq.api.v2.stepdefinitions.tagArtifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.tagArtifact.impl.TagArtifact.SetArtifactTags;


public class SetArtifactTagsSteps extends FlowData  {

  @When("^users with wrong credentials want Set Artifact Tags with the values$")
  public void users_with_wrong_credentials_want_Set_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    SetArtifactTags(dataTable);
  }

  @When("^users in the same organization want Set Artifact Tags with the values$")
  public void users_in_the_same_organization_want_Set_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetArtifactTags(dataTable);
  }

  @When("^user not in the same organization want Set Artifact Tags with the values$")
  public void user_not_in_the_same_organization_want_Set_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    SetArtifactTags(dataTable);
  }

  @When("^users in the same organization, which created the project want Set Artifact Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Set_Artifact_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetArtifactTags(dataTable);
  }

}

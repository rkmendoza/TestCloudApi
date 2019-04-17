package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetTags;


public class SetTagsSteps extends FlowData  {

  @When("^users with wrong credentials want Set Tags with the values$")
  public void users_with_wrong_credentials_want_Set_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    SetTags(dataTable);
  }

  @When("^users in the same organization want Set Tags with the values$")
  public void users_in_the_same_organization_want_Set_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetTags(dataTable);
  }

  @When("^user not in the same organization want Set Tags with the values$")
  public void user_not_in_the_same_organization_want_Set_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    SetTags(dataTable);
  }

  @When("^users in the same organization, which created the project want Set Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Set_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetTags(dataTable);
  }

}

package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SearchTags;


public class SearchTagsSteps extends FlowData  {

  @When("^users with wrong credentials want Search Tags with the values$")
  public void users_with_wrong_credentials_want_Search_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    SearchTags(dataTable);
  }

  @When("^users in the same organization want Search Tags with the values$")
  public void users_in_the_same_organization_want_Search_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName1, userPw1));
    SearchTags(dataTable);
  }

  @When("^user not in the same organization want Search Tags with the values$")
  public void user_not_in_the_same_organization_want_Search_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    SearchTags(dataTable);
  }

  @When("^users in the same organization, which created the project want Search Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Search_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SearchTags(dataTable);
  }

}

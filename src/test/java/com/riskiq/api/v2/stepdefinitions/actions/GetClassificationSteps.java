package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.AddTags;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.GetClassification;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetClassification;


public class GetClassificationSteps extends FlowData  {

  @Given("^a settled down the classification status for a given domain with the values$")
  public void a_settled_down_the_classification_status_for_a_given_domain_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetClassification(dataTable);
  }


  @When("^users with wrong credentials want Get Classification Status with the values$")
  public void users_with_wrong_credentials_want_Get_Classification_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetClassification(dataTable);
  }

  @When("^users in the same organization want Get Classification Status with the values$")
  public void users_in_the_same_organization_want_Get_Classification_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName1, userPw1));
    GetClassification(dataTable);
  }

  @When("^user not in the same organization want Get Classification Status with the values$")
  public void user_not_in_the_same_organization_want_Get_Classification_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetClassification(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Classification Status with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Classification_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetClassification(dataTable);
  }

}

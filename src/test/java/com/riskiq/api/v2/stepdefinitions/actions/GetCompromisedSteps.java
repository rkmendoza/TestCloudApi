package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.GetCompromised;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetCompromised;


public class GetCompromisedSteps extends FlowData  {

  @When("^users with wrong credentials want Get Compromised Status with the values$")
  public void users_with_wrong_credentials_want_Get_Compromised_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetCompromised(dataTable);
  }

  @When("^users in the same organization want Get Compromised Status with the values$")
  public void users_in_the_same_organization_want_Get_Compromised_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetCompromised(dataTable);
  }

  @When("^user not in the same organization want Get Compromised Status with the values$")
  public void user_not_in_the_same_organization_want_Get_Compromised_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetCompromised(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Compromised Status with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Compromised_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetCompromised(dataTable);
  }

  @Given("^created Compromised Status with the values$")
  public void created_Compromised_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetCompromised(dataTable);
  }


}

package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.GetSinkhole;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetSinkhole;


public class GetSinkholeSteps extends FlowData  {

  @When("^users with wrong credentials want Get Sinkhole Status with the values$")
  public void users_with_wrong_credentials_want_Get_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetSinkhole(dataTable);
  }

  @When("^users in the same organization want Get Sinkhole Status with the values$")
  public void users_in_the_same_organization_want_Get_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSinkhole(dataTable);
  }

  @When("^user not in the same organization want Get Sinkhole Status with the values$")
  public void user_not_in_the_same_organization_want_Get_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetSinkhole(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Sinkhole Status with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSinkhole(dataTable);
  }

  @Given("^created Sinkhole Status with the values$")
  public void created_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetSinkhole(dataTable);
  }


}

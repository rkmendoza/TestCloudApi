package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetSinkhole;


public class SetSinkholeSteps extends FlowData  {

  @When("^users with wrong credentials want Set Sinkhole Status with the values$")
  public void users_with_wrong_credentials_want_Set_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    SetSinkhole(dataTable);
  }

  @When("^users in the same organization want Set Sinkhole Status with the values$")
  public void users_in_the_same_organization_want_Set_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetSinkhole(dataTable);
  }

  @When("^user not in the same organization want Set Sinkhole Status with the values$")
  public void user_not_in_the_same_organization_want_Set_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    SetSinkhole(dataTable);
  }

  @When("^users in the same organization, which created the project want Set Sinkhole Status with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Set_Sinkhole_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetSinkhole(dataTable);
  }

}

package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetCompromised;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.SetDynamicDns;


public class SetDynamicDnsSteps extends FlowData  {

  @When("^users with wrong credentials want Set Dynamic Dns Status with the values$")
  public void users_with_wrong_credentials_want_Set_Dynamic_Dns_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    SetDynamicDns(dataTable);
  }

  @When("^users in the same organization want Set Dynamic Dns Status with the values$")
  public void users_in_the_same_organization_want_Set_Dynamic_Dns_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetDynamicDns(dataTable);
  }

  @When("^user not in the same organization want Set Dynamic Dns Status with the values$")
  public void user_not_in_the_same_organization_want_Set_Dynamic_Dns_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    SetDynamicDns(dataTable);
  }

  @When("^users in the same organization, which created the project want Set Dynamic Dns Status with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Set_Dynamic_Dns_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetDynamicDns(dataTable);
  }

}

package com.riskiq.api.v2.stepdefinitions.passiveDNS;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.passiveDNS.impl.passiveDNS.GetUniquePassiveDNS;


public class GetUniquePassiveDNSSteps extends FlowData  {


  @When("^users with wrong credentials want Get Unique Passive DNS with the values$")
  public void users_with_wrong_credentials_want_Get_Unique_Passive_DNS_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetUniquePassiveDNS(dataTable);
  }

  @When("^users in the same organization want Get Unique Passive DNS with the values$")
  public void users_in_the_same_organization_want_Get_Unique_Passive_DNS_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetUniquePassiveDNS(dataTable);
  }

  @When("^user not in the same organization want Get Unique Passive DNS with the values$")
  public void user_not_in_the_same_organization_want_Get_Unique_Passive_DNS_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetUniquePassiveDNS(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Unique Passive DNS with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Unique_Passive_DNS_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetUniquePassiveDNS(dataTable);
  }



}

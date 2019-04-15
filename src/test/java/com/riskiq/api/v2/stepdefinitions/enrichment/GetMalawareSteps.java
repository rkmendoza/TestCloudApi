package com.riskiq.api.v2.stepdefinitions.enrichment;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.enrichment.impl.Enrichment.GetMalware;


public class GetMalawareSteps extends FlowData  {


  @When("^users with wrong credentials want Get Malware with the values$")
  public void users_with_wrong_credentials_want_Get_Malware_Status_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetMalware(dataTable);
  }

  @When("^users in the same organization want Get Malware with the values$")
  public void users_in_the_same_organization_want_Get_Malware_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetMalware(dataTable);
  }

  @When("^user not in the same organization want Get Malware with the values$")
  public void user_not_in_the_same_organization_want_Get_Malware_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetMalware(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Malware with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Malware_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetMalware(dataTable);
  }



}

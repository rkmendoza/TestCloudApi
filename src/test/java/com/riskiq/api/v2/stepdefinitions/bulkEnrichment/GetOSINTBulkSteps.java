package com.riskiq.api.v2.stepdefinitions.bulkEnrichment;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.dataTableToJsonGetBulkClassification;
import static com.riskiq.api.v2.stepdefinitions.bulkEnrichment.impl.bulkEnrichment.GetOSINTBulk;
import static com.riskiq.api.v2.stepdefinitions.bulkEnrichment.impl.bulkEnrichment.GetOSINTBulk;


public class GetOSINTBulkSteps extends FlowData  {


  @When("^users with wrong credentials want Get OSINT Bulk with the values and the amount of (\\d+)$")
  public void users_with_wrong_credentials_want_Get_OSINT_Bulk_Status_with_the_values_and_the_amount_of(int cant) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetOSINTBulk(cant, dataTableToJsonGetBulkClassification());
  }

  @When("^users in the same organization want Get OSINT Bulk with the values and the amount of (\\d+)$")
  public void users_in_the_same_organization_want_Get_OSINT_Bulk_with_the_values_and_the_amount_of(int cant) {
    rs.set(setCredentials(userName2, userPw2));
    GetOSINTBulk(cant, dataTableToJsonGetBulkClassification());
  }

  @When("^user not in the same organization want Get OSINT Bulk with the values and the amount of (\\d+)$")
  public void user_not_in_the_same_organization_want_Get_OSINT_Bulk_with_the_values_and_the_amount_of(int cant) {
    rs.set(setCredentials(userName3, userPw3));
    GetOSINTBulk(cant, dataTableToJsonGetBulkClassification());
  }

  @When("^users in the same organization, which created the project want Get OSINT Bulk with the values and the amount of (\\d+)$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_OSINT_Bulk_with_the_values_and_the_amount_of(int cant) {
    rs.set(setCredentials(userName2, userPw2));
    GetOSINTBulk(cant, dataTableToJsonGetBulkClassification());
  }



}

package com.riskiq.api.v2.stepdefinitions.enrichment;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.*;
import static com.riskiq.api.v2.stepdefinitions.enrichment.impl.Enrichment.GetEnrichment;


public class GetEnrichmentSteps extends FlowData  {

  @Given("^Set Tags with the values$")
  public void set_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    SetTags(dataTable);
  }

  @When("^users in the same organization want Get Enrichment Data with the values$")
  public void users_in_the_same_organization_want_Get_Enrichment_Data_with_the_values(DataTable dataTable) {
    GetEnrichment(dataTable);
  }


  @When("^users with wrong credentials want Get Enrichment Data with the values$")
  public void users_with_wrong_credentials_want_Get_Enrichment_Data_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetEnrichment(dataTable);
  }

  @When("^user not in the same organization want Get Enrichment Data with the values$")
  public void user_not_in_the_same_organization_want_Get_Enrichment_Datas_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetEnrichment(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Enrichment Data with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Enrichment_Data_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetEnrichment(dataTable);
  }


}

package com.riskiq.api.v2.stepdefinitions.hostAttributes;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.hostAttributes.impl.hostAttributes.GetPairs;


public class GetPairsSteps extends FlowData  {


  @When("^users with wrong credentials want Get Pairs with the values$")
  public void users_with_wrong_credentials_want_Get_Pairs_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetPairs(dataTable);
  }

  @When("^users in the same organization want Get Pairs with the values$")
  public void users_in_the_same_organization_want_Get_Pairs_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetPairs(dataTable);
  }

  @When("^user not in the same organization want Get Pairs with the values$")
  public void user_not_in_the_same_organization_want_Get_Pairs_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetPairs(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Pairs with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Pairs_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetPairs(dataTable);
  }



}

package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetItems;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetItemsWithValues;


public class GetItemsSteps extends FlowData  {

  @When("^users want to get items$")
  public void users_want_to_get_items()  {
    GetItems();
  }

  @When("^users want to get items with the values$")
  public void users_want_to_get_items_with_the_values(DataTable dataTable)  {
    GetItemsWithValues(dataTable);
  }


}

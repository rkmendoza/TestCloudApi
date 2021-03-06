package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetSources;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetSourcesWithValues;
import static org.mortbay.jetty.HttpMethods.GET;


public class GetSourcesSteps extends FlowData  {

  @When("^users want to get sources$")
  public void users_want_to_get_sources() {
    GetSources();
  }

  @When("^users want to get sources with the values$")
  public void users_want_to_get_sources_with_the_values(DataTable dataTable)  {
    GetSourcesWithValues(dataTable);
  }

}

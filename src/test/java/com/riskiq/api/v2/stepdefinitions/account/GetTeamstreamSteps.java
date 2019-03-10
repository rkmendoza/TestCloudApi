package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetTeamStream;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetTeamStreamWithValues;
import static org.mortbay.jetty.HttpMethods.GET;


public class GetTeamstreamSteps extends FlowData  {

  @When("^users want to get teamstream$")
  public void users_want_to_get_teamstream() {
    GetTeamStream();
  }

  @When("^users want to get teamstream with the values$")
  public void users_want_to_get_teamstream_with_the_values(DataTable dataTable)  {
    GetTeamStreamWithValues(dataTable);
  }

}

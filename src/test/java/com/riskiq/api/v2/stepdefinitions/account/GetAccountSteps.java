package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static org.mortbay.jetty.HttpMethods.GET;


public class GetAccountSteps extends FlowData  {

  @When("^users want to get account$")
  public void users_want_to_get_account() {
    response.set(rs.get().get(setMethodAndEndPoint(GET,"account")));
  }
}

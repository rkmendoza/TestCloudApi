package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetMonitors;
import static org.mortbay.jetty.HttpMethods.GET;


public class GetMonitorsSteps extends FlowData  {

  @When("^users want to get monitors$")
  public void users_want_to_get_monitors() {
    GetMonitors();
  }

}

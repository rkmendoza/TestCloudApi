package com.riskiq.api.v2.stepdefinitions.account;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static com.riskiq.api.v2.stepdefinitions.account.impl.Account.GetOrganization;
import static org.mortbay.jetty.HttpMethods.GET;


public class GetOrganizationSteps extends FlowData  {

  @When("^users want to get organization$")
  public void users_want_to_get_organization() {
    GetOrganization();
  }

}

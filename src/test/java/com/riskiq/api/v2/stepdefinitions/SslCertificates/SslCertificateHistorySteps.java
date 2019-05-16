package com.riskiq.api.v2.stepdefinitions.SslCertificates;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.SslCertificates.impl.sslCertificates.GetSSLCertificateHistory;


public class SslCertificateHistorySteps extends FlowData  {


  @When("^users with wrong credentials want Get SSL Certificate History with the values$")
  public void users_with_wrong_credentials_want_Get_SSL_Certificate_History_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetSSLCertificateHistory(dataTable);
  }

  @When("^users in the same organization want Get SSL Certificate History with the values$")
  public void users_in_the_same_organization_want_Get_SSL_Certificate_History_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSSLCertificateHistory(dataTable);
  }

  @When("^user not in the same organization want Get SSL Certificate History with the values$")
  public void user_not_in_the_same_organization_want_Get_SSL_Certificate_History_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetSSLCertificateHistory(dataTable);
  }

  @When("^users in the same organization, which created the project want Get SSL Certificate History with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_SSL_Certificate_History_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSSLCertificateHistory(dataTable);
  }



}

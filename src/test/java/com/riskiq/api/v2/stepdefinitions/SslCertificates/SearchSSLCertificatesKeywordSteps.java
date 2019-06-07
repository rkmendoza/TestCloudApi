package com.riskiq.api.v2.stepdefinitions.SslCertificates;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.SslCertificates.impl.sslCertificates.GetSearchSSLCertificatesbyKeyword;


public class SearchSSLCertificatesKeywordSteps extends FlowData  {


  @When("^users with wrong credentials want Get Search SSL Certificates by Keyword with the values$")
  public void users_with_wrong_credentials_want_Get_Search_SSL_Certificates_by_Keyword_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    GetSearchSSLCertificatesbyKeyword(dataTable);
  }

  @When("^users in the same organization want Get Search SSL Certificates by Keyword with the values$")
  public void users_in_the_same_organization_want_Get_Search_SSL_Certificates_by_Keyword_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSearchSSLCertificatesbyKeyword(dataTable);
  }

  @When("^user not in the same organization want Get Search SSL Certificates by Keyword with the values$")
  public void user_not_in_the_same_organization_want_Get_Search_SSL_Certificates_by_Keyword_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    GetSearchSSLCertificatesbyKeyword(dataTable);
  }

  @When("^users in the same organization, which created the project want Get Search SSL Certificates by Keyword with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Get_Search_SSL_Certificates_by_Keyword_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    GetSearchSSLCertificatesbyKeyword(dataTable);
  }



}

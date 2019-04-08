package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.AddTags;
import static org.mortbay.jetty.HttpMethods.POST;
import static org.mortbay.jetty.HttpMethods.PUT;


public class AddTagsSteps extends FlowData  {

  @When("^users with wrong credentials want Add Tags with the values$")
  public void users_with_wrong_credentials_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    AddTags(dataTable);
  }

  @When("^users in the same organization want Add Tags with the values$")
  public void users_in_the_same_organization_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    AddTags(dataTable);
  }

  @When("^user not in the same organization want Add Tags with the values$")
  public void user_not_in_the_same_organization_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    AddTags(dataTable);
  }

  @When("^users in the same organization, which created the project want Add Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    AddTags(dataTable);
  }

}

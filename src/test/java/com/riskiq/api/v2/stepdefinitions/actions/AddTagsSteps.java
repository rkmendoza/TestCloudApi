package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.POST;
import static org.mortbay.jetty.HttpMethods.PUT;


public class AddTagsSteps extends FlowData  {


  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,"actions/tags")));
    setArtifact(Artifact.with()
      .query(response.get().path("query"))
      .tagsArtifact(response.get().path("tags"))
      .create());
  }

  public void responseCreate(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"artifact")));
    setArtifact(Artifact.with()
      .guidArtifact(response.get().path("guid"))
      .project(response.get().path("project"))
      .owner(response.get().path("owner"))
      .creator(response.get().path("creator"))
      .organization(response.get().path("organization"))
      .query(response.get().path("query"))
      .type(response.get().path("type"))
      .create());
  }

  @When("^users with wron credentials want Add Tags with the values$")
  public void users_with_wron_credentials_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userInvalidName, userInvalidPw));
    response(dataTable);
  }

  @When("^users in the same organization want Add Tags with the values$")
  public void users_in_the_same_organization_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    response(dataTable);
  }

  @When("^user not in the same organization want Add Tags with the values$")
  public void user_not_in_the_same_organization_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    response(dataTable);
  }

  @When("^users in the same organization, which created the project want Add Tags with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Add_Tags_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    response(dataTable);
  }




}

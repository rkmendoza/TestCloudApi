package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.GET;
import static org.mortbay.jetty.HttpMethods.PUT;


public class FindSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"artifact")));
  }

  public void responseCreate(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"artifact")));
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

  @Given("^a created artifact with values$")
  public void a_created_artifact_with_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    responseCreate(dataTable);
  }

  @When("^users in the same organization want Find artifacts$")
  public void users_in_the_same_organization_want_Find_artifacts() {
    response.set(rs.get().get(setMethodAndEndPoint(GET,"artifact")));
  }

  @When("^users in the same organization want Find artifacts with the values$")
  public void users_in_the_same_organization_want_Find_artifacts_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^user not in the same organization want Find artifacts with the values$")
  public void user_not_in_the_same_organization_want_Find_artifacts_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    response(dataTable);
  }

  @When("^users in the same organization, which created the project want Find artifacts with the values$")
  public void users_in_the_same_organization_which_created_the_project_want_Find_artifacts_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    response(dataTable);
  }



}

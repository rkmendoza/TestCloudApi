package com.riskiq.api.v2.stepdefinitions.artifact;


import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.java.en.And;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.PUT;


public class DeleteSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"artifact")));
    setArtifact(Artifact.with()
      .guidArtifact(response.get().path("guid"))
      .create());
  }

  public void responseCreate(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"artifact")));
    setArtifact(Artifact.with()
      .guidArtifact(response.get().path("guid"))
      .create());
  }

  @When("^users want to Delete artifact with the values$")
  public void users_want_to_Delete_artifact_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users in the same organization want Delete artifact with the values$")
  public void users_in_the_same_organization_want_Delete_artifact_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    response(dataTable);
  }

  @When("^Users of the same organization that created the project want Delete artifact with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Delete_artifact_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users not in the same organization want Delete artifact with the values$")
  public void users_not_in_the_same_organization_want_Delete_artifact_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName3, userPw3));
    response(dataTable);
  }

  @And("^a created artifact with the values$")
  public void a_created_artifact_with_the_values(DataTable dataTable) {
    rs.set(setCredentials(userName2, userPw2));
    responseCreate(dataTable);
  }

}

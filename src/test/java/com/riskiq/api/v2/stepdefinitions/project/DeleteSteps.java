package com.riskiq.api.v2.stepdefinitions.project;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;



public class DeleteSteps extends FlowData {

  @When("^users want to delete project with the values$")
  public void usersWantToDeleteProjectWithTheValues(DataTable dataTable) {
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));
  }

  @When("^other users of organization A want to delete project with the values$")
  public void  otherUsersOfOrganizationWantToDeleteProjectWithTheValues(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));

  }

  @When("^user A want to delete project created by user B$")
  public void userAWantToDeleteProjectCreatedByUserB(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));

  }

  @When("^user B want to delete project created by user A$")
  public void userBWantToDeleteProjectCreatedByUserA(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName4, userPw4));
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));

  }

    @When("^users want to delete project without values$")
    public void usersWantToDeleteProjectWithoutValues() {
        response.set(rs.get().contentType(ContentType.JSON).delete(setMethodAndEndPoint(DELETE,"project")));
    }

  @When("^users want to delete a project with guid not existent$")
  public void usersWantToDeleteAProjectWithGuidNotExistent(DataTable dataTable) {
    //we make sure that the guid does not exist
    rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project"));
    response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));
  }


}

package com.riskiq.api.v2.stepdefinitions.project;


import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import io.restassured.RestAssured;
import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;
import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static org.mortbay.jetty.HttpMethods.PUT;


public class SetTagsSteps extends FlowData  {

  public void response(DataTable dataTable){
    response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project/tag")));
    setProject(Project.with()
      .guid(response.get().path("guid").toString())
      .owner(response.get().path("owner"))
      .creator(response.get().path("creator"))
      .visibility(response.get().path("visibility"))
      .organization(response.get().path("organization"))
      .featured(response.get().path("featured"))
      .create());
  }

  @When("^users want to Set project tags with the values$")
  public void users_want_to_Set_project_tags_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users in the same organization want Set project tags with the values$")
  public void users_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName1, userName1));
    response(dataTable);
  }

  @When("^Users of the same organization that created the project want Set project tags with the values$")
  public void users_of_the_same_organization_that_created_the_project_want_Set_project_tags_with_the_values(DataTable dataTable) {
    response(dataTable);
  }

  @When("^users not in the same organization want Set project tags with the values$")
  public void users_not_in_the_same_organization_want_Set_project_tags_with_the_values(DataTable dataTable) {
    rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
    response(dataTable);
  }

}

package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.POST;
import static org.mortbay.jetty.HttpMethods.PUT;


public class BulkUpdateSteps extends FlowData {

    public void responseCreate(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).put(setMethodAndEndPoint(PUT,"artifact/bulk")));
        setArtifact(Artifact.with()
                .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                .cant(cant)
                .create());
    }

    public void response(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).post(setMethodAndEndPoint(POST,"artifact/bulk")));
        setArtifact(Artifact.with()
          .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
          .cant(cant)
          .create());
    }


    @Given("^a created artifacts with the values and the amount of (\\d+)$")
    public void a_created_artifacts_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName2, userPw2));
        responseCreate(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users in the same organization want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


    @When("^Users of the same organization, which created the project want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_which_created_the_project_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users in the same organization, which not created the project want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_not_created_the_project_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users not in the same organization want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName3, userPw3));
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users with wrong credentials want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


}

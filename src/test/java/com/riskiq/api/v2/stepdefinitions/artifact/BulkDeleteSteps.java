package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.POST;
import static org.mortbay.jetty.HttpMethods.PUT;


public class BulkDeleteSteps extends FlowData {

    public void responseCreate(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).put(setMethodAndEndPoint(PUT,"artifact/bulk")));
        setArtifact(Artifact.with()
                .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                .cant(cant)
                .create());
    }

    public void response(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).delete(setMethodAndEndPoint(DELETE,"artifact/bulk")));
        setArtifact(Artifact.with()
          .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
          .cant(cant)
          .create());
    }


    @When("^users with wrong credentials want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        response(cant, dataDeleteBulkArtifact());
    }

    @When("^users in the same organization want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        response(cant, dataDeleteBulkArtifact());
    }

    @When("^Users of the same organization that created the project want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_that_created_the_project_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        response(cant, dataDeleteBulkArtifact());
    }

    @When("^users not in the same organization want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName3, userPw3));
        response(cant, dataDeleteBulkArtifact());
    }



}

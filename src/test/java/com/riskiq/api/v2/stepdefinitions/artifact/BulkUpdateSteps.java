package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;


public class BulkUpdateSteps extends FlowData {

    @Given("^a created artifacts with the values and the amount of (\\d+)$")
    public void a_created_artifacts_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName2, userPw2));
        createBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users in the same organization want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        updateBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


    @When("^Users of the same organization, which created the project want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_which_created_the_project_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        updateBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users in the same organization, which not created the project want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_not_created_the_project_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        updateBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users not in the same organization want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName3, userPw3));
        updateBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users with wrong credentials want Bulk Update artifact with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Bulk_Update_artifact_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        updateBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


}

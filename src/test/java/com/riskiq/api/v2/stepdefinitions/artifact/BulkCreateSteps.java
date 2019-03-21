package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;



public class BulkCreateSteps extends FlowData {

    @When("^users in the same organization want bulk Create artifacts with the values and the amount of (\\d+)$")
    public void usersInTheSameOrganizationWantBulkCreateArtifactsWithTheValues(int cant, DataTable dataTable) {
        createBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users want to bulk Create artifacts with the values and the amount of (\\d+)$")
    public void users_want_to_bulk_Create_artifacts_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        createBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^Users of the same organization that created the project want bulk Create artifacts with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_that_created_the_project_want_bulk_Create_artifacts_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        createBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users not in the same organization want bulk Create artifacts with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_bulk_Create_artifacts_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName3, userPw3));
        createBulkArtifact(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


}

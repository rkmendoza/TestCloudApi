package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;


public class BulkDeleteSteps extends FlowData {

    @When("^users with wrong credentials want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        deleteBulkArtifact(cant, dataDeleteBulkArtifact());
    }

    @When("^users in the same organization want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        deleteBulkArtifact(cant, dataDeleteBulkArtifact());
    }

    @When("^Users of the same organization that created the project want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_that_created_the_project_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        deleteBulkArtifact(cant, dataDeleteBulkArtifact());
    }

    @When("^users not in the same organization want Bulk Delete artifact with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Bulk_Delete_artifact_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName3, userPw3));
        deleteBulkArtifact(cant, dataDeleteBulkArtifact());
    }

}

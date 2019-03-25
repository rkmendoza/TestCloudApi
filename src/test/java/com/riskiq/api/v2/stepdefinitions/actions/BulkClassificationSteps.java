package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.*;


public class BulkClassificationSteps extends FlowData {

    @When("^users in the same organization want Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        setBulkClassification(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


    @When("^Users of the same organization, which created the project want Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_of_the_same_organization_which_created_the_project_want_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        setBulkClassification(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users in the same organization, which not created the project want Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_not_created_the_project_want_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        setBulkClassification(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users not in the same organization want Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName3, userPw3));
        setBulkClassification(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

    @When("^users with wrong credentials want Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        setBulkClassification(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }


}
package com.riskiq.api.v2.stepdefinitions.bulkEnrichment;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.When;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.dataTableToJsonGetBulkClassification;
import static com.riskiq.api.v2.stepdefinitions.bulkEnrichment.impl.bulkEnrichment.GetEnrichmentDataBulk;


public class GetEnrichmentDataBulkSteps extends FlowData {

    @When("^users in the same organization want Get Enrichment Data Bulk with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Get_Enrichment_Data_Bulk_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        GetEnrichmentDataBulk(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users in the same organization, which created the project want Get Enrichment Data Bulk with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_created_the_project_want_Get_Enrichment_Data_Bulk_with_the_values_and_the_amount_of(int cant) {
        GetEnrichmentDataBulk(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users in the same organization, which not created the project want Get Enrichment Data Bulk with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_not_created_the_project_want_Get_Enrichment_Data_Bulk_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        GetEnrichmentDataBulk(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users not in the same organization want Get Enrichment Data Bulk with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Get_Enrichment_Data_Bulk_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName3, userPw3));
        GetEnrichmentDataBulk(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users with wrong credentials want Get Enrichment Data Bulk with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Get_Enrichment_Data_Bulk_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        GetEnrichmentDataBulk(cant, dataTableToJsonGetBulkClassification());
    }
}

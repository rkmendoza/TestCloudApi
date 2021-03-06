package com.riskiq.api.v2.stepdefinitions.actions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import gherkin.lexer.Da;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.getBulkClassification;
import static com.riskiq.api.v2.stepdefinitions.actions.impl.Actions.setBulkClassification;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.dataTableToJsonBulkClassification;
import static com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact.dataTableToJsonGetBulkClassification;


public class GetBulkClassificationSteps extends FlowData {

    @Given("^created Bulk Classification Status with the values and the amount of (\\d+)$")
    public void created_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant, DataTable dataTable) {
        rs.set(setCredentials(userName1, userPw1));
        setBulkClassification(cant, dataTableToJsonBulkClassification(cant, dataTable));
    }

    @When("^users in the same organization want Get Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_want_Get_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        getBulkClassification(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users in the same organization, which created the project want Get Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_created_the_project_want_Get_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant) {
        getBulkClassification(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users in the same organization, which not created the project want Get Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_in_the_same_organization_which_not_created_the_project_want_Get_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName1, userPw1));
        getBulkClassification(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users not in the same organization want Get Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_not_in_the_same_organization_want_Get_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userName3, userPw3));
        getBulkClassification(cant, dataTableToJsonGetBulkClassification());
    }

    @When("^users with wrong credentials want Get Bulk Classification Status with the values and the amount of (\\d+)$")
    public void users_with_wrong_credentials_want_Get_Bulk_Classification_Status_with_the_values_and_the_amount_of(int cant) {
        rs.set(setCredentials(userInvalidName, userInvalidPw));
        getBulkClassification(cant, dataTableToJsonGetBulkClassification());
    }


}

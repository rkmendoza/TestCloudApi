package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import io.restassured.http.ContentType;

import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static org.mortbay.jetty.HttpMethods.PUT;

public class BulkCreateSteps extends FlowData {

    public void response(String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).put(setMethodAndEndPoint(PUT,"artifact/bulk")));
    }

    @When("^users in the same organization want bulk Create artifacts with the values and the amount of (\\d+)$")
    public void usersInTheSameOrganizationWantBulkCreateArtifactsWithTheValues(int cant, DataTable dataTable) {
        response(dataTableToJsonBulkArtifact(cant, dataTable));
    }

}

package com.riskiq.api.v2.stepdefinitions.artifact;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import cucumber.api.java.en.When;
import gherkin.deps.com.google.gson.JsonParser;
import io.restassured.http.ContentType;

import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.riskiq.api.v2.misc.Utils.getGuidBulk;
import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static org.mortbay.jetty.HttpMethods.PUT;


public class BulkCreateSteps extends FlowData {

    public void response(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).put(setMethodAndEndPoint(PUT,"artifact/bulk")));
        setArtifact(Artifact.with()
                .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                .cant(cant)
                .create());
    }

    @When("^users in the same organization want bulk Create artifacts with the values and the amount of (\\d+)$")
    public void usersInTheSameOrganizationWantBulkCreateArtifactsWithTheValues(int cant, DataTable dataTable) {
        response(cant, dataTableToJsonBulkArtifact(cant, dataTable));
    }

}

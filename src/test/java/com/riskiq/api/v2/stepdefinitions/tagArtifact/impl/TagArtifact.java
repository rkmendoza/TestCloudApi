package com.riskiq.api.v2.stepdefinitions.tagArtifact.impl;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class TagArtifact {

    //Generic Methods

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
    }


    //Class Methods

   public static void GetTags(DataTable dataTable){
        GetWithDataTable(artifactTag, dataTable);
    }


}


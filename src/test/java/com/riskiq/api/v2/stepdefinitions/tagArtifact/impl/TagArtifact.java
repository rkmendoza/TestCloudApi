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

    public static void PostWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .tagsArtifact(response.get().path("tags"))
          .create());
    }

    public static void PutSetTagsWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,Api)));
    }

    public static void PostClassificationWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
    }

    public static void DeleteWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,Api)));
    }

    public static void setBulkClassification(int cant, String bodyJsonArtifact){
       response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).post(setMethodAndEndPoint(POST,actionsBulkClassification)));
    }

    public static void getBulkClassification(int cant, String bodyJsonArtifact){
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).get(setMethodAndEndPoint(GET,actionsBulkClassification)));
    }

    //Class Methods

    public static void AddTags(DataTable dataTable){
        PostWithDataTable(actionsTags, dataTable);
    }

    public static void SetTags(DataTable dataTable){
        PutSetTagsWithDataTable(actionsTags, dataTable);
    }

    public static void DeleteTags(DataTable dataTable){
        DeleteWithDataTable(actionsTags, dataTable);
    }

    public static void GetTags(DataTable dataTable){
        GetWithDataTable(artifactTag, dataTable);
    }


}


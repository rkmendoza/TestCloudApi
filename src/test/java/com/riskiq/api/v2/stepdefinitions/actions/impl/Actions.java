package com.riskiq.api.v2.stepdefinitions.actions.impl;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.GET;
import static org.mortbay.jetty.HttpMethods.POST;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Actions {

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

    public static void PostClassificationWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .classification(response.get().path("classification"))
          .create());
    }

    public static void PostCompromisedWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .status(response.get().path("status"))
          .create());
    }

    public static void DeleteWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,Api)));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .tagsArtifact(response.get().path("tags"))
          .create());
    }

    public static void setBulkClassification(int cant, String bodyJsonArtifact){
      //  Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).post(setMethodAndEndPoint(POST,actionsSetClassification)));
       // if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
              .queryArtifacts(getQueryBulkClassification(cant, response.get().getBody().asString()))
              .classification(response.get().path("classification"))
              .cant(cant)
              .create());
      //  }
    }


    //Class Methods

    public static void AddTags(DataTable dataTable){
        PostWithDataTable(actionsTags, dataTable);
    }

    public static void DeleteTags(DataTable dataTable){
        DeleteWithDataTable(actionsTags, dataTable);
    }

    public static void SetClassification(DataTable dataTable){
        PostClassificationWithDataTable(actionsClassification, dataTable);
    }

    public static void GetClassification(DataTable dataTable){
        GetWithDataTable(actionsClassification, dataTable);
    }

    public static void SetCompromised(DataTable dataTable){
        PostCompromisedWithDataTable(actionsCompromised, dataTable);
    }

    public static void GetCompromised(DataTable dataTable){
        GetWithDataTable(actionsCompromised, dataTable);
    }


}


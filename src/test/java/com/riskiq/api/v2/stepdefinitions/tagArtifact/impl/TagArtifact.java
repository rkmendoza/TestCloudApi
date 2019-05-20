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


    public static void PutSetTagsWithDataTable(String Api, DataTable dataTable){
      response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,Api)));
      System.out.println(response.get().prettyPrint());
    }

    /*public static void PostWithDataTable(String Api, DataTable dataTable){
      response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
      setArtifact(Artifact.with()
        .query(response.get().path("query"))
        .tagsArtifact(response.get().path("tags"))
        .create());
    }

    public static void DeleteWithDataTable(String Api, DataTable dataTable){
      response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,Api)));
      setArtifact(Artifact.with()
        .query(response.get().path("query"))
        .tagsArtifact(response.get().path("tags"))
        .create());
    }*/

    //Class Methods

   public static void GetTags(DataTable dataTable){
        GetWithDataTable(artifactTag, dataTable);
    }

  public static void SetArtifactTags(DataTable dataTable){
    PutSetTagsWithDataTable(artifactTag, dataTable);
  }


}


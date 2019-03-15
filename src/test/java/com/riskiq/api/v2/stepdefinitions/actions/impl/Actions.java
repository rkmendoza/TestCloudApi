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
    /*
    public static void Get(String Api){
        response.set(rs.get().get(setMethodAndEndPoint(GET,Api)));
    }

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
    }
    */

    public static void PostWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,"actions/tags")));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .tagsArtifact(response.get().path("tags"))
          .create());
    }

    public static void DeleteWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"actions/tags")));
        setArtifact(Artifact.with()
          .query(response.get().path("query"))
          .tagsArtifact(response.get().path("tags"))
          .create());
    }


    //Class Methods

    public static void AddTags(DataTable dataTable){
        PostWithDataTable(actionsTags, dataTable);
    }

    public static void DeleteTags(DataTable dataTable){
        DeleteWithDataTable(actionsTags, dataTable);
    }


    /*
    public static void GetItems(){
        Get(accountClassification);
    }

    public static void GetItemsWithValues(DataTable dataTable){
        GetWithDataTable(accountClassification, dataTable);
    }

    public static void GetMonitors(){
        Get(accountMonitors);
    }

    public static void GetOrganization(){
        Get(accountOrganization);
    }

    public static void GetQuota(){
        Get(accountQuota);
    }

    public static void GetSources(){
        Get(accountSources);
    }

    public static void GetSourcesWithValues(DataTable dataTable){
        GetWithDataTable(accountSources, dataTable);
    }

    public static void GetTeamStream(){
        Get(accountTeamStream);
    }

    public static void GetTeamStreamWithValues(DataTable dataTable){
        GetWithDataTable(accountTeamStream, dataTable);
    }
    */


}

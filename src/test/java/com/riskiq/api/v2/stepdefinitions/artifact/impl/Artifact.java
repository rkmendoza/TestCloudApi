package com.riskiq.api.v2.stepdefinitions.artifact.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;

import java.util.List;

import static com.riskiq.api.v2.FlowData.*;
import static com.riskiq.api.v2.misc.Utils.getGuidBulk;
import static com.riskiq.api.v2.misc.Utils.getQueryBulkClassification;
import static com.riskiq.api.v2.misc.Utils.setMethodAndEndPoint;
import static org.mortbay.jetty.HttpMethods.*;

@Data
@Builder(builderMethodName = "with", buildMethodName = "create")
public class Artifact {

    private  String  guidArtifact;
    private  String  project;
    private  String  creator;
    private  String  organization;
    private  String  query;
    private  String  type;
    private  String  classification;
    private  String  status;
    private  String  owner;
    private  List<String> tagsArtifact;
    private  List<String> Artifacts;
    private  List<String> queryArtifacts;
    private  String  queryArtifactsJson;
    private  Integer cant;

    public static void createArtifact(DataTable dataTable) {
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"artifact")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .guidArtifact(response.get().path("guid"))
                    .project(response.get().path("project"))
                    .owner(response.get().path("owner"))
                    .creator(response.get().path("creator"))
                    .organization(response.get().path("organization"))
                    .query(response.get().path("query"))
                    .type(response.get().path("type"))
                    .create());
        }
    }

    public static void deleteArtifact(DataTable dataTable){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"artifact")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .guidArtifact(response.get().path("guid"))
                    .create());
        }
    }

    public static void findArtifact(DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"artifact")));
    }

    public static void updateArtifact(DataTable dataTable){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,"artifact")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .guidArtifact(response.get().path("guid"))
                    .tagsArtifact(response.get().path("tags"))
                    .create());
        }
    }

    public static void createBulkArtifact(int cant, String bodyJsonArtifact){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).put(setMethodAndEndPoint(PUT,"artifact/bulk")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                    .queryArtifacts(getQueryBulkClassification(cant, response.get().getBody().asString()))
                    .cant(cant)
                    .create());
        }
    }

    public static void deleteBulkArtifact(int cant, String bodyJsonArtifact){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).delete(setMethodAndEndPoint(DELETE,"artifact/bulk")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                    .cant(cant)
                    .create());
        }
    }

    public static void updateBulkArtifact(int cant, String bodyJsonArtifact){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).post(setMethodAndEndPoint(POST,"artifact/bulk")));
        if (status.equals(response.get().statusCode())) {
            setArtifact(Artifact.with()
                    .Artifacts(getGuidBulk(cant, response.get().getBody().asString()))
                    .cant(cant)
                    .create());
        }
    }



    public static String dataDeleteBulkArtifact (){
        final String[] bodyArtifact = {""};
        getArtifact().getArtifacts().forEach((artifact)-> {
            bodyArtifact[0] += "\""+artifact+"\",";
        });
        bodyJson.set(String.format("\"artifacts\": [ %s ]", StringUtils.removeEnd(bodyArtifact[0],",")));
        return String.format("{ %s }", bodyJson.get());
    }

    public static String dataTableToJsonBulkArtifact(int cant, DataTable dataTable) {
        Integer x = 1;
        String  bodyArtifact = "";
        while (x<=cant){
            bodyArtifact += dataTableToJson(dataTable.asList(BodyElement.class))+",";
            x++;
        }
        bodyJson.set(String.format("\"artifacts\": [ %s ]", StringUtils.removeEnd(bodyArtifact,",")));
        return String.format("{ %s }", bodyJson.get());
    }

    public static String dataTableToJsonBulkClassification(int cant, DataTable dataTable) {
        final String[] bodyArtifact = {""};
        getArtifact().getQueryArtifacts().forEach((query)-> {
            bodyArtifact[0] += "\""+query+"\",";
        });
        bodyJson.set(String.format("\"queries\": [ %s ]", StringUtils.removeEnd(bodyArtifact[0],",")));
        String jsonQuery  = bodyJson.get();
        String jsonBulk   = jsonQuery +","+dataTableToJson(dataTable.asList(BodyElement.class)).replace("{","").replace("}","");
        bodyJson.set(jsonBulk);

        return String.format("{ %s }", bodyJson.get());
    }
}

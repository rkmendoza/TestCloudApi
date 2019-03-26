package com.riskiq.api.v2.stepdefinitions.project.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.Hooks.getConfigVars;
import static org.mortbay.jetty.HttpMethods.*;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Project {

    private  String  guid;
    private  String  owner;
    private  String  creator;
    private  String  visibility;
    private  String  organization;
    private  Boolean featured;
    private  String  tags;
    private  String  query;
    private  String  type;
    private  Boolean isCreated;
    private  String  projectArtifact;
    private  String  creatorArtifact;
    private  String  organizationArtifact;
    private  String  queryArtifact;
    private  String  typeArtifact;
    private  String  ownerArtifact;

    public static String wrongGuid =   "279abfa2-9e97-0cc9-d2bb995bbbb7c5";
    public static String noExistGuid = "279bzzb2-9e97-0cc9-d2xx-995bca7c5909";
    public static String wrongOwner = "OtherOwner";
    public static String wrongCreator = "OtherCreator@nothing.com";
    public static String wrongOrganization = "testcloud22";
    public static String deleteOrganization1 = "testcloud";
    public static String deleteOrganization2 = "testcloud2";
    public static String wrongVisibility = "OtherVisibility";
    public static String wrongUiArtifact = "838439d8ee51-4e20-dec8-05c8f7f7ba57";
    public static String wrongProjectArtifact = "f083816f-976b16cb-46b0-4b389dc3ae67";
    public static String wrongQuery = "example1";
    public static String wrongType = "otherType.org";
    public static int integerTag = 100;
    public static List<String> guidProjectAlert = new ArrayList<String>(Arrays.asList("09f882f8-aa40-592e-67ad-ff8d796311c1", "eb40d9c7-688a-97e5-d161-cb7c6c6d7229"));



    public static List<String> findAllGuidProject(){
        getConfigVars();
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get()
                .contentType(ContentType.JSON)
                .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
                        .key("organization").value(deleteOrganization1)
                        .build())))
                .get(setMethodAndEndPoint(GET,"project")));

        return response.get().jsonPath().getList("results.guid");

    }

    public static List<String> findAllGuidProjectTestCloud2(){
        getConfigVars();
        rs.set(RestAssured.given().auth().preemptive().basic(userName3, userPw3));
        response.set(rs.get()
                .contentType(ContentType.JSON)
                .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
                        .key("organization").value(deleteOrganization2)
                        .build())))
                .get(setMethodAndEndPoint(GET,"project")));

        return response.get().jsonPath().getList("results.guid");

    }

    public static Boolean deleteProjectByGuid(String guid){
        Boolean value  = false;
        Integer status = 200;

        response.set(rs.get()
                .contentType(ContentType.JSON)
                .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
                .key("project").value(guid)
                .build())))
                .delete(setMethodAndEndPoint(DELETE,"project")));

        if (status.equals(response.get().statusCode())) {
            value = true;
        }

        return value;
    }

    public static void createProject(DataTable dataTable){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project")));
        if (status.equals(response.get().statusCode())) {
            setProject(Project.with()
                    .guid(response.get().path("guid"))
                    .owner(response.get().path("owner"))
                    .creator(response.get().path("creator"))
                    .visibility(response.get().path("visibility"))
                    .organization(response.get().path("organization"))
                    .featured(response.get().path("featured"))
                    .isCreated(true)
                    .create());
        }

    }

    public static void updateProject(DataTable dataTable){
        Integer status = 200;
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,"project")));
        if (status.equals(response.get().statusCode())) {
            setProject(Project.with()
                    .guid(response.get().path("guid"))
                    .owner(response.get().path("owner"))
                    .creator(response.get().path("creator"))
                    .visibility(response.get().path("visibility"))
                    .organization(response.get().path("organization"))
                    .featured(response.get().path("featured"))
                    .isCreated(true)
                    .create());
        }
    }

    public static void findProject(DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,"project")));
    }

    public static void deleteProject(DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project")));
    }

    public static void setProjectTac(DataTable dataTable){
        Integer status = 200;
        //TODO change method by endpoint
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).put(setMethodAndEndPoint(PUT,"project/tag")));
        if (status.equals(response.get().statusCode())) {
            setProject(Project.with()
                    .guid(response.get().path("guid"))
                    .owner(response.get().path("owner"))
                    .creator(response.get().path("creator"))
                    .visibility(response.get().path("visibility"))
                    .organization(response.get().path("organization"))
                    .featured(response.get().path("featured"))
                    .isCreated(true)
                    .create());
        }
    }

    public static void addProjectTac(DataTable dataTable){
        Integer status = 200;
        //TODO change method by endpoint
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,"project/tag")));
        if (status.equals(response.get().statusCode())) {
            setProject(Project.with()
                    .guid(response.get().path("guid"))
                    .owner(response.get().path("owner"))
                    .creator(response.get().path("creator"))
                    .visibility(response.get().path("visibility"))
                    .organization(response.get().path("organization"))
                    .featured(response.get().path("featured"))
                    .isCreated(true)
                    .create());
        }
    }

    public static void removeProjectTac(DataTable dataTable){
        //TODO change method by endpoint
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).delete(setMethodAndEndPoint(DELETE,"project/tag")));
        setProject(Project.with()
          .guid(response.get().path("guid"))
          .owner(response.get().path("owner"))
          .creator(response.get().path("creator"))
          .visibility(response.get().path("visibility"))
          .organization(response.get().path("organization"))
          .featured(response.get().path("featured"))
          .isCreated(true)
          .create());
    }


    public static void deleteProjectTestCloud(){
        List<String> allGuid = findAllGuidProject();
        for(String guid : allGuid)
        {
            if(!guidProjectAlert.contains(guid)){
                deleteProjectByGuid(guid);
            }
        }
    }

    public static void deleteProjectTestCloud2(){
        List<String> allGuid = findAllGuidProjectTestCloud2();
        for(String guid : allGuid)
        {
            if(!guidProjectAlert.contains(guid)){
                deleteProjectByGuid(guid);
            }
        }
    }

    public static void deleteAllProject(){
        deleteProjectTestCloud();
        deleteProjectTestCloud2();
    }

}

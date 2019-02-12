package com.riskiq.api.v2.stepdefinitions.project.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;
import lombok.Setter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import static com.riskiq.api.v2.misc.Utils.*;
import static com.riskiq.api.v2.stepdefinitions.Hooks.getConfigVars;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.GET;

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
    private  Boolean isCreated = false;
    public static String wrongGuid =   "279abfa2-9e97-0cb9-d2bb995bca7c5";
    public static String noExistGuid = "279bbcb2-9e97-0cc9-d2cc-995bca7c5909";
    public static String wrongOwner = "OtherOwner";
    public static String wrongCreator = "OtherCreator";
    public static String wrongOrganization = "testcloud22";
    public static String deleteOrganization = "testcloud";
    public static String wrongVisibility = "OtherVisibility";
    public static int integerTag = 100;
    public static List<String> guidProjectAlert = new ArrayList<String>(Arrays.asList("09f882f8-aa40-592e-67ad-ff8d796311c1", "eb40d9c7-688a-97e5-d161-cb7c6c6d7229"));



    public static List<String> findAllGuidProject(){
        getConfigVars();
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get()
                .contentType(ContentType.JSON)
                .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
                        .key("organization").value(deleteOrganization)
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
            System.out.println("Project Delete: "+guid);
            value = true;
        }

        return value;
    }

    public static void setProjectTac(DataTable dataTable){
        //TODO change method by endpoint
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post("/project/tag"));
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

    public static void deleteAllProject() throws Throwable{
        List<String> allGuid = findAllGuidProject();
        for(String guid : allGuid)
        {
            if(!guidProjectAlert.contains(guid)){
                deleteProjectByGuid(guid);
            }
        }

    }

}

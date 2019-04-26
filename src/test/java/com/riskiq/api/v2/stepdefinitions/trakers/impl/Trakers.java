package com.riskiq.api.v2.stepdefinitions.trakers.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.GET;
import static org.mortbay.jetty.HttpMethods.POST;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Trakers {


    //Generic Methods

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
    }

    public static void PostWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.TEXT).body(dataTableToJson(dataTable.asList(BodyElement.class))).post(setMethodAndEndPoint(POST,Api)));
    }


    //Class Methods

    public static void GetUserTrakers(DataTable dataTable){
    GetWithDataTable(trackersUserTrackers, dataTable);
  }




}


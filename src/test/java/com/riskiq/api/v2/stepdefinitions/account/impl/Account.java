package com.riskiq.api.v2.stepdefinitions.account.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;
import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Account {

    //Generic Methods
    public static void Get(String Api){
        response.set(rs.get().get(setMethodAndEndPoint(GET,Api)));
    }

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
    }


    //Class Methods
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



}

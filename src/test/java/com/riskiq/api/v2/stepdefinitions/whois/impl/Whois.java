package com.riskiq.api.v2.stepdefinitions.whois.impl;

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
public class Whois {


    //Generic Methods

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
        //System.out.println(response.get().prettyPrint());
    }

    //Class Methods

    public static void GetWHOIS(DataTable dataTable){
        GetWithDataTable(whoisGet, dataTable);
    }

    public static void GetSearchWhois(DataTable dataTable){
        GetWithDataTable(whoisSearchKeyword, dataTable);
    }


}


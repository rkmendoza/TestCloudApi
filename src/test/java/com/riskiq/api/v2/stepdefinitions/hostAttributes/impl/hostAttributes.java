package com.riskiq.api.v2.stepdefinitions.hostAttributes.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.GET;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class hostAttributes {


    //Generic Methods

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
    }

    //Class Methods

    public static void GetComponents(DataTable dataTable){
        GetWithDataTable(hostAttributesComponents, dataTable);
    }

    public static void GetTrakers(DataTable dataTable){
        GetWithDataTable(hostAttributesTrackers, dataTable);
    }

    public static void GetPairs(DataTable dataTable){
        GetWithDataTable(hostAttributesPairs, dataTable);
    }

}


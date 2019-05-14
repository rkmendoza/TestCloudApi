package com.riskiq.api.v2.stepdefinitions.SslCertificates.impl;

import com.riskiq.api.v2.impl.BodyElement;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.GET;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class sslCertificates {


    //Generic Methods

    public static void GetWithDataTable(String Api, DataTable dataTable){
        response.set(rs.get().contentType(ContentType.JSON).body(dataTableToJson(dataTable.asList(BodyElement.class))).get(setMethodAndEndPoint(GET,Api)));
        System.out.println(response.get().prettyPrint());
    }

    //Class Methods

    public static void GetSSLCertificateHistory(DataTable dataTable){
        GetWithDataTable(sslCertificateHistory, dataTable);
    }

    public static void GetSSLCertificate(DataTable dataTable){
        GetWithDataTable(sslCertificate, dataTable);
    }


}


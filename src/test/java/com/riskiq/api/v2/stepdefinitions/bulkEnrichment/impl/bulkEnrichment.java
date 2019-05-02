package com.riskiq.api.v2.stepdefinitions.bulkEnrichment.impl;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import cucumber.api.DataTable;
import io.restassured.http.ContentType;
import lombok.Builder;
import lombok.Data;

import static com.riskiq.api.v2.misc.Utils.*;
import static org.mortbay.jetty.HttpMethods.*;
import static org.mortbay.jetty.HttpMethods.DELETE;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class bulkEnrichment {

  //Class Methods

  public static void GetMalwareBulk(int cant, String bodyJsonArtifact){
    response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).get(setMethodAndEndPoint(GET,enrichmentMalwareBulk)));
  }

  public static void GetOSINTBulk(int cant, String bodyJsonArtifact){
    response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).get(setMethodAndEndPoint(GET,enrichmentBulkOsint)));
    System.out.println(response.get().prettyPrint());
  }

  public static void GetEnrichmentDataBulk(int cant, String bodyJsonArtifact){
    response.set(rs.get().contentType(ContentType.TEXT).body(bodyJsonArtifact).get(setMethodAndEndPoint(GET,enrichmentBulk)));
  }

}


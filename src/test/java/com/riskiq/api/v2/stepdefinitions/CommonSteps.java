package com.riskiq.api.v2.stepdefinitions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import io.restassured.RestAssured;

import io.restassured.filter.log.RequestLoggingFilter;
import lombok.extern.log4j.Log4j;
import org.apache.commons.lang3.StringUtils;

import java.util.AbstractMap;
import java.util.Map;

import static com.riskiq.api.v2.misc.Utils.matchJsonValue;
import static com.riskiq.api.v2.misc.Utils.setCredentials;
import static io.restassured.RestAssured.given;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchemaInClasspath;



@Log4j
public class CommonSteps extends FlowData {

    @Given("^a valid user and key from riskIQ platform$")
    public void aValidUserFromRiskIQPlatform() {
      rs.set(setCredentials(Hooks.userName1,Hooks.userPw1));
    }

    @Given("^a invalid user and invalid key from riskIQ platform$")
    public void aInvalidUserFromRiskIQPlatform() {
        rs.set(setCredentials(Hooks.userInvalidName,Hooks.userInvalidPw));
    }


    @Then("^the api should response with code (\\d+)$")
    public void theApiShouldResponseWithCode(Integer statusCode) {
        json =   response.get().then().statusCode(statusCode);
    }


    @And("Response includes the following$")
    public void response_equals(Map<String,String> responseFields){
        for (Map.Entry<String, String> field : responseFields.entrySet()) {

            if(StringUtils.containsIgnoreCase(field.getValue(), "##")){
                Map.Entry<String,String> entry =
                        new AbstractMap.SimpleEntry<String, String>(field.getKey(), field.getValue());
                entry = validateSpecificValue(entry);
                matchJsonValue(entry, json);
            }else{
                matchJsonValue(field, json);
            }

        }
    }


    @And("Check JSON schema \"([^\"}]*)\"$")
    public void response_equals(String schemeUrl){
        json.body(matchesJsonSchemaInClasspath("schemas/"+schemeUrl));
    }

}

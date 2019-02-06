package com.riskiq.api.v2.misc;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSenderOptions;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.StringUtils;

import java.security.PublicKey;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import static io.restassured.RestAssured.get;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.collection.IsEmptyCollection.empty;
import static org.hamcrest.core.Is.is;

public class Utils extends FlowData{

    public static String POST = "POST";
    public static String PUT = "PUT";
    public static String DELETE = "DELETE";
    public static String GET = "GET";


    public synchronized static ValidatableResponse matchJsonValue(Map.Entry<String, String> field, ValidatableResponse json) {

        if (StringUtils.isNumeric(field.getValue())) {
            //value numeric
            return json.body(field.getKey(), equalTo(Integer.parseInt(field.getValue())));
        } else if (json.extract().path(field.getKey()) instanceof Boolean) {
            //value Boolean
            return json.body(field.getKey(), equalTo(Boolean.parseBoolean(field.getValue())));
        } else if (json.extract().path(field.getKey()) instanceof ArrayList) {
            //value ArrayList
            List<String> arrayList = new ArrayList<String>(Arrays.asList(field.getValue().split(",")));
            if (((ArrayList) json.extract().path(field.getKey())).size() == 0) {
                return json.body(field.getKey(), is(empty()));
            } else {
                return json.body(field.getKey(), equalTo(arrayList));
            }
        } else {
            //value String

            return json.body(field.getKey(), equalTo(field.getValue()));
        }
    }


    // TODO refactoring this method with the purpose of separating the conditionals into smaller functions in a way that is maintainable over time
    public synchronized static AtomicReference<String> createJson(BodyElement bodyElement, Boolean isLast, AtomicReference<String> bodyJson) {
        //type of boolean
        if ((bodyElement.getValue().equals("true") || bodyElement.getValue().equals("false"))) {
            if(isLast) {
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s", bodyElement.getKey(), bodyElement.getValue())));
            }else{
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s,\n", bodyElement.getKey(), bodyElement.getValue())));
            }
            //it is query or tag
        } else if ((bodyElement.getKey().equals("tags"))) {
            if(isLast){
                if (bodyElement.getValue() != null && !bodyElement.getValue().isEmpty() && !bodyElement.getValue().equals("[]")) {
                    bodyElement.setValue(String.format("[\"%s\"]", bodyElement.getValue().replace(",", "\",\"")));
                }
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s\n", bodyElement.getKey(), bodyElement.getValue())));
            }else{
                if (bodyElement.getValue() != null && !bodyElement.getValue().isEmpty() && !bodyElement.getValue().equals("[]")) {
                    bodyElement.setValue(String.format("[\"%s\"]", bodyElement.getValue().replace(",", "\",\"")));
                }
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s,\n", bodyElement.getKey(), bodyElement.getValue())));
            }
        }//type of int
        else if (bodyElement.getValue().matches("\\d+")) {
            int value = Integer.valueOf(bodyElement.getValue());
            if(isLast){
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s", bodyElement.getKey(), value)));
            }else{

                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s, \n", bodyElement.getKey(), value)));
            }
        }
            //type of string
         else if ((!bodyElement.getValue().equals("true") && !bodyElement.getValue().equals("false")) ) {
            //   json.set(String.join("", json.get(), String.format("\"%s\": \"%s\"", bodyElement.getKey(), project.get().getGuid())));
            if(isLast){
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": \"%s\"", bodyElement.getKey(), bodyElement.getValue())));
            }else{
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": \"%s\",\n", bodyElement.getKey(), bodyElement.getValue())));
            }
        }

        return bodyJson;

    }


    public static String generateRandomString() {
        String letters = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789";

        String random = "";
        for (int i = 0; i < 8; i++) {
            int index = (int) (new SecureRandom().nextDouble() * letters.length());
            random += letters.substring(index, index + 1);
        }
        return random;
    }


    public static  String generateCurl(String url, String method, String body, String username, String password){
        String curl = "$ curl -u "+username+":"+password+" \n" +
                      "'"+url+"' \n" +
                      "-X"+method+" -H \"Content-Type: application/json\" \n" +
                      "--data '{"+body+"}' \n";
        return curl;
    }

    public static RequestSpecification setCredentials(String userDef, String passwordDef){

        userCurl.set(userDef);
        passCurl.set(passwordDef);

        return given().auth().preemptive().basic(userCurl.get(), passCurl.get());
    }

    public static String setMethodAndEndPoint(String methodDef, String value){
        endPoint.set(value);
        method.set(methodDef);
        return "/"+endPoint.get();
    }

}


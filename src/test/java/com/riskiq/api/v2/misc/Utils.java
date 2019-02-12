package com.riskiq.api.v2.misc;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.impl.EndPoint;
import com.riskiq.api.v2.impl.UserCredentials;
import com.riskiq.api.v2.stepdefinitions.Hooks;
import gherkin.ast.DataTable;
import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSenderOptions;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.StringUtils;
import org.json.simple.JSONObject;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;

import static com.riskiq.api.v2.stepdefinitions.Hooks.getConfigVars;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.collection.IsEmptyCollection.empty;
import static org.hamcrest.core.Is.is;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.GET;

public class Utils extends FlowData{

    private static String sfile = "src/test/resources/config.properties";
    public static String userName1 = "";
    public static String userPw1 = "";
    public static String userName2 = "";
    public static String userPw2 = "";
    public static String userName3 = "";
    public static String userPw3 = "";
    public static String userName4 = "";
    public static String userPw4 = "";
    public static String userInvalidName = "";
    public static String userInvalidPw = "";


    public static void setParameterProperties(){

        try {
            System.out.println("Obteniendo configuracion from file ...");

            File file = new File(sfile);
            FileInputStream fileInput = new FileInputStream(file);
            Properties properties = new Properties();
            properties.load(fileInput);
            fileInput.close();
            setParameters(properties);
        }catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }catch (IOException ex) {
            ex.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void setParameters(Properties properties) {
        userName1 = properties.getProperty("userName1");
        userPw1 = properties.getProperty("userPw1");
        userName2 = properties.getProperty("userName2");
        userPw2 = properties.getProperty("userPw2");
        userName3 = properties.getProperty("userName3");
        userPw3 = properties.getProperty("userPw3");
        userName4 = properties.getProperty("userName4");
        userPw4 = properties.getProperty("userPw4");
        userInvalidName = properties.getProperty("userInvalidName");
        userInvalidPw = properties.getProperty("userInvalidPw");
        RestAssured.baseURI = properties.getProperty("baseURI");
    }


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
        String curl = String.format("$ curl -u %s:%s '%s' -X%s -H 'Content-Type: application/json' --data '{%s}'", username,
                password,
                url,
                method,
                body);

        return curl;
    }

    public static RequestSpecification setCredentials(String userDef, String passwordDef){

        setUserCredentials(UserCredentials.with()
                .username(userDef)
                .password(passwordDef)
                .create());

        return given().auth().preemptive().basic(getUserCredentials().getUsername(), getUserCredentials().getPassword());
    }

    public static String setMethodAndEndPoint(String methodDef, String value){
        setEndPoint(EndPoint.with()
                .endpoint(value)
                .method(methodDef)
                .create()
        );
        return "/"+getEndPoint().getEndpoint();
    }

    @Test
    public void deleteAllProyect() throws Throwable{


        //hacer busqueda de todos los proyectos por organization
        getConfigVars();
        rs.set(RestAssured.given().auth().preemptive().basic(userName2, userPw2));
        response.set(rs.get()
          .contentType(ContentType.JSON)
          .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
            .key("organization").value(getProject().deleteOrganization)
            .build())))
          .get(setMethodAndEndPoint(GET,"project")));



        int statusCode = response.get().statusCode();
        System.out.println("The status code recieved: " + statusCode);
        //System.out.println("Response body: " + response.get().body().prettyPrint());
        System.out.println("Response body guid: " + response.get().body().print());

        //Llenar lista de Guid

        //hacer un bucle para borrar cada proyecto

        //Inicio del bucle de lista Guid --> WHILE, FOR, ETC
        response.set(rs.get()
          .contentType(ContentType.JSON)
          .body(dataTableToJson(Collections.singletonList(BodyElement.builder()
            .key("project").value("AQUI VA EL GUID")
            .build())))
          .delete(setMethodAndEndPoint(DELETE,"project")));
        //Fin del bucle


    }





}


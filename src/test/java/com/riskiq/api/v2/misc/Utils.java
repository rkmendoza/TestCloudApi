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
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.deleteProjectByGuid;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.findAllGuidProject;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.guidProjectAlert;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.collection.IsEmptyCollection.empty;
import static org.hamcrest.core.Is.is;
import static org.mortbay.jetty.HttpMethods.DELETE;
import static org.mortbay.jetty.HttpMethods.GET;

public class Utils extends FlowData{

    public static Properties properties = new Properties();
    private static String sfile = "src/test/resources/config.properties";
    public static String userName1 = "";
    public static String userPw1 = "";
    public static String userName2 = "";
    public static String userPw2 = "";
    public static String userName3 = "";
    public static String userPw3 = "";
    public static String userName4 = "";
    public static String userPw4 = "";
    public static String userName5 = "";
    public static String userPw5 = "";
    public static String userInvalidName = "";
    public static String userInvalidPw = "";


    public static void setParameterProperties(){

        try {
            System.out.println("Obteniendo configuracion from file ...");

            File file = new File(sfile);
            FileInputStream fileInput = new FileInputStream(file);
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
        userName5 = properties.getProperty("userName5");
        userPw5 = properties.getProperty("userPw5");
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

    public static BodyElement validateRandomValue(BodyElement bodyElement){

        if(!bodyElement.getKey().equalsIgnoreCase("tags") && !bodyElement.getKey().equalsIgnoreCase("query")) {
            String[] value = bodyElement.getValue().split("@@");
            String random = value[1];
            random += "_" + generateRandomString();
            bodyElement.setValue(random);
        }else if(bodyElement.getKey().equalsIgnoreCase("query")){
            String[] value = bodyElement.getValue().split("@@");
            String random = value[1];
            random += "_" + generateRandomString()+".org";
            bodyElement.setValue(random);
        }else{

            String[] value = bodyElement.getValue().split("@@randomTags");
            int numberTags = Integer.valueOf(value[1]);
            String random =  "";
            for(int i=0; i<numberTags; i++ ){
                if(numberTags > 1 && i != numberTags-1){
                    random += "Tag."+generateRandomString() + " , ";
                }else{
                    random += "Tag."+generateRandomString();
                }

            }
            bodyElement.setValue(random);
        }
        return bodyElement;
    }

    public static BodyElement validateSpecificValue(BodyElement bodyElement){

        String[] value = bodyElement.getValue().split("##");
        String key =  value[1];

        switch (key) {
            case "guid":
                bodyElement.setValue(String.valueOf(getProject().getGuid()));
                break;
            case "owner":
                bodyElement.setValue(String.valueOf(getProject().getOwner()));
                break;
            case "creator":
                bodyElement.setValue(String.valueOf(getProject().getCreator()));
                break;
            case "visibility":
                bodyElement.setValue(String.valueOf(getProject().getVisibility()));
                break;
            case "organization":
                bodyElement.setValue(String.valueOf(getProject().getOrganization()));
                break;
            case "featured":
                bodyElement.setValue(String.valueOf(getProject().getFeatured()));
                break;
            case "wrongGuid":
                bodyElement.setValue(String.valueOf(getProject().wrongGuid));
                break;
            case "noExistGuid":
                bodyElement.setValue(String.valueOf(getProject().noExistGuid));
                break;
            case "wrongOwner":
                bodyElement.setValue(String.valueOf(getProject().wrongOwner));
                break;
            case "wrongCreator":
                bodyElement.setValue(String.valueOf(getProject().wrongCreator));
                break;
            case "wrongOrganization":
                bodyElement.setValue(String.valueOf(getProject().wrongOrganization));
                break;
            case "wrongVisibility":
                bodyElement.setValue(String.valueOf(getProject().wrongVisibility));
                break;
            default:
                bodyElement.setValue("");
                break;
        }

        return bodyElement;
    }

    public static Map.Entry<String, String>  validateSpecificValue(Map.Entry<String, String> field){

        String[] value = field.getValue().split("##");
        String key =  value[1];
        System.out.println("========FIELD========");
        System.out.println(key);
        switch (key) {
            case "guid":
                field.setValue(getProject().getGuid());
                break;
            case "owner":
                field.setValue(String.valueOf(getProject().wrongOwner));
                break;
            case "creator":
                field.setValue(String.valueOf(getProject().getCreator()));
                break;
            default:
                field.setValue("");
                break;
        }

        System.out.println("========FIELD========");
        System.out.println(field);
        return field;
    }

    public static BodyElement getValueProperties(BodyElement bodyElement){
        String[] value = bodyElement.getValue().split("%%");
        String key =  value[1];
        bodyElement.setValue(String.valueOf(properties.getProperty(key)));

        return bodyElement;
    }

}


package com.riskiq.api.v2.stepdefinitions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;
import io.restassured.config.RestAssuredConfig;
import io.restassured.specification.RequestSpecification;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import static io.restassured.RestAssured.given;

public class Hooks {

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
    public static String bodyJson = "";

    /* Need to capture the scenario object in the instance to access it * in the step definition methods. */
    @Before
    public void before(Scenario scenario){

        FlowData.scenario.set(scenario);
    }

    @Before
    public static void getConfigVars() {

        try {

            System.out.println("Obteniendo configuracion from file ...");

            File file = new File(sfile);
            FileInputStream fileInput = new FileInputStream(file);
            Properties properties = new Properties();
            properties.load(fileInput);
            fileInput.close();
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

        } catch (FileNotFoundException ex) {

            ex.printStackTrace();

        } catch (IOException ex) {

            ex.printStackTrace();

        } catch (Exception e) {

            e.printStackTrace();

        }

    }

    @After(order=0)
    public static void afterScenarioFinish(){
        bodyJson = "";
    }

    @After(order=1)
    public static void afterScenario(Scenario scenario){
        String url_string = given().log().all().toString();
        //String body  = given().log().body().get().toString();

        String curl       = "$ curl -u $USERNAME:$KEY " +
                            "'"+url_string+"' -XDELETE -H " +
                            "'Content-Type: application/json' " +
                            "--data '{"+bodyJson+"}'";
        scenario.write(curl);
    }
}





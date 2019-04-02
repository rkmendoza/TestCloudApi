package com.riskiq.api.v2.stepdefinitions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;
import org.apache.log4j.Logger;


import static com.riskiq.api.v2.misc.Utils.generateCurl;
import static com.riskiq.api.v2.misc.Utils.setParameterProperties;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.*;


public class Hooks extends FlowData{

    static Logger log = Logger.getLogger(Hooks.class);
    /* Need to capture the scenario object in the instance to access it * in the step definition methods. */
    @Before
    public void before(Scenario scenario){
        FlowData.scenario.set(scenario);
    }

    @Before
    public static void getConfigVars() {
        setParameterProperties();
    }

    @After
    public static void afterScenario(Scenario scenario){
    // if(scenario.isFailed()) {
            String url = String.join("/", RestAssured.baseURI, getEndPoint().getEndpoint());
            scenario.write(generateCurl(url, getEndPoint().getMethod(), bodyJson.get(), getUserCredentials().getUsername(), getUserCredentials().getPassword()));
   //  }
       deleteAllProject();
    }
}





package com.riskiq.api.v2.stepdefinitions;

import com.riskiq.api.v2.FlowData;
import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import io.restassured.RestAssured;


import static com.riskiq.api.v2.misc.Utils.generateCurl;
import static com.riskiq.api.v2.misc.Utils.setParameterProperties;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.deleteProjectByGuid;


public class Hooks extends FlowData{

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
        String url = String.join("/", RestAssured.baseURI, getEndPoint().getEndpoint());
        scenario.write(generateCurl(url, getEndPoint().getMethod(), bodyJson.toString(), getUserCredentials().getUsername(), getUserCredentials().getPassword()));
        if(getProject().getIsCreated() == true){
            deleteProjectByGuid(getProject().getGuid());
        }
    }
}





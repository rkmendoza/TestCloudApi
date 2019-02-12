package com.riskiq.api.v2;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.impl.EndPoint;
import com.riskiq.api.v2.impl.UserCredentials;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.Scenario;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.StringUtils;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import static com.riskiq.api.v2.misc.Utils.createJson;
import static com.riskiq.api.v2.misc.Utils.generateRandomString;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.integerTag;
import static com.riskiq.api.v2.misc.Utils.*;

public class FlowData  {

    protected static InheritableThreadLocal<Scenario> scenario = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<RequestSpecification> rs = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<Response> response = new InheritableThreadLocal<>();
    protected static ValidatableResponse json;
    protected static InheritableThreadLocal<Project> projectInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<UserCredentials> userCredentialsInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<EndPoint> endPointInfo = new InheritableThreadLocal<>();


    /* crear para todas las clases set y get*/
    public static Project getProject(){
        return projectInfo.get();
    }
    public static void setProject(Project project) {
        projectInfo.set(project);
    }
    public static UserCredentials getUserCredentials(){return userCredentialsInfo.get();}
    public static void setUserCredentials(UserCredentials userCredentials) {
        userCredentialsInfo.set(userCredentials);
    }
    public static EndPoint getEndPoint(){return endPointInfo.get();}
    public static void setEndPoint(EndPoint endPoint) {
        endPointInfo.set(endPoint);
    }


    protected static AtomicReference<String> bodyJson = new AtomicReference<>("");
    protected static InheritableThreadLocal<String> query = new InheritableThreadLocal<>();

    public  String dataTableToJson(List<BodyElement> bodyElements) {
        this.bodyJson = new AtomicReference<>("");
        bodyElements.forEach(bodyElement -> {
            Boolean isLast = (bodyElements.size() == bodyElements.indexOf(bodyElement) + 1);
            //validate to random (Create)
            if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "@@")){
                this.bodyJson = createJson(validateRandomValue(bodyElement) , isLast, this.bodyJson);
            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "##")) {
                //create json whit variable (find)
                this.bodyJson = createJson(validateSpecificValue(bodyElement), isLast, this.bodyJson);
            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "%%")){
                // create json whit .properties
                this.bodyJson = createJson(getValueProperties(bodyElement), isLast, this.bodyJson);
            }else{
                //create json
                this.bodyJson =   createJson(bodyElement , isLast, this.bodyJson);
            }
        });
        return String.format("{ %s }", bodyJson.get() );
    }

    public  String dataTableToJsonBulkArtifact(List<BodyElement> bodyElements) {
        this.bodyJson = new AtomicReference<>("");
        bodyElements.forEach(bodyElement -> {
            Boolean isLast = (bodyElements.size() == bodyElements.indexOf(bodyElement) + 1);

            //validate to random (Create)
            if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "@@")){
                this.bodyJson =   createJson(validateRandomValue(bodyElement) , isLast, this.bodyJson);

            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "##")){
                //create json whit variable (find)
                this.bodyJson =   createJson(validateSpecificValue(bodyElement)  , isLast, this.bodyJson);
            }else{
                //create json
                this.bodyJson =   createJson(bodyElement , isLast, this.bodyJson);
            }


        });

        return String.format("{  \"artifacts\": [ { %s  }  ] }", bodyJson.get());

    }

    public static void writeInReport(String value){
        scenario.get().write(value);
    }
}

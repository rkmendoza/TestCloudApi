package com.riskiq.api.v2;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.impl.EndPoint;
import com.riskiq.api.v2.impl.UserCredentials;
import com.riskiq.api.v2.stepdefinitions.artifact.impl.Artifact;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.DataTable;
import cucumber.api.Scenario;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.*;

import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import static com.riskiq.api.v2.misc.Utils.createJson;
import static com.riskiq.api.v2.misc.Utils.generateRandomString;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.integerTag;
import static com.riskiq.api.v2.misc.Utils.*;
import static org.apache.commons.lang.StringUtils.*;

public class FlowData  {

    protected static InheritableThreadLocal<Scenario> scenario = new InheritableThreadLocal<>();
    public static InheritableThreadLocal<RequestSpecification> rs = new InheritableThreadLocal<>();
    public static InheritableThreadLocal<Response> response = new InheritableThreadLocal<>();
    protected static ValidatableResponse json;
    protected static InheritableThreadLocal<Project> projectInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<UserCredentials> userCredentialsInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<EndPoint> endPointInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<Artifact> artifactInfo = new InheritableThreadLocal<>();


    /*create for all classes set and get*/
    public static Project getProject(){
        return projectInfo.get();
    }
    public static void setProject(Project project) {
        projectInfo.set(project);
    }
    public static Artifact getArtifact(){
        return artifactInfo.get();
    }
    public static void setArtifact(Artifact artifact) {
        artifactInfo.set(artifact);
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

    public  static String dataTableToJson(List<BodyElement> bodyElements) {
        bodyJson = new AtomicReference<>("");
        bodyElements.forEach(bodyElement -> {
            Boolean isLast = (bodyElements.size() == bodyElements.indexOf(bodyElement) + 1);
            //validate to random (Create)
            if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "@@")){
                bodyJson = createJson(validateRandomValue(bodyElement) , isLast, bodyJson);
            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "##")) {
                //create json whit variable (find)
                bodyJson = createJson(validateSpecificValue(bodyElement), isLast, bodyJson);
            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "%%")){
                // create json whit .properties
                bodyJson = createJson(getValueProperties(bodyElement), isLast, bodyJson);
            }else{
                //create json
                bodyJson =   createJson(bodyElement , isLast, bodyJson);
            }
        });
        return String.format("{ %s }", bodyJson.get() );
    }

    public  String dataTableToJsonBulkArtifact(int cant, DataTable dataTable) {
        Integer x = 1;
        String  bodyArtifact = "";
        while (x<=cant){
            bodyArtifact += dataTableToJson(dataTable.asList(BodyElement.class))+",";
            x++;
        }
        bodyJson.set(String.format("\"artifacts\": [ %s ]", StringUtils.removeEnd(bodyArtifact,",")));

        return String.format("{ %s }", bodyJson.get());
    }

    public String dataDeleteBulkArtifact (){
        final String[] bodyArtifact = {""};

        getArtifact().getArtifacts().forEach((artifact)-> {
            bodyArtifact[0] += "\""+artifact+"\",";
        });
        bodyJson.set(String.format("\"artifacts\": [ %s ]", StringUtils.removeEnd(bodyArtifact[0],",")));
        return String.format("{ %s }", bodyJson.get());
    }



    public static void writeInReport(String value){
        scenario.get().write(value);
    }
}

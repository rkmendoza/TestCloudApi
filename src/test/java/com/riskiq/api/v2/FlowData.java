package com.riskiq.api.v2;

import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.impl.EndPoint;
import com.riskiq.api.v2.impl.UserCredentials;
import com.riskiq.api.v2.stepdefinitions.project.impl.Project;
import cucumber.api.Scenario;
import io.restassured.config.RestAssuredConfig;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.StringUtils;

import java.io.PrintStream;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import static com.riskiq.api.v2.misc.Utils.createJson;
import static com.riskiq.api.v2.misc.Utils.generateRandomString;
import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.integerTag;

public class FlowData  {

    protected static InheritableThreadLocal<Scenario> scenario = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<RequestSpecification> rs = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<Response> response = new InheritableThreadLocal<>();
    protected static ValidatableResponse json;
    protected static InheritableThreadLocal<Project> projectInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<UserCredentials> userCredentialsInfo = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<EndPoint> endPointInfo = new InheritableThreadLocal<>();


    protected static InheritableThreadLocal<String> wrongGuid = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<String> noExistGuid = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<String> wrongOwner = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<String> wrongCreator = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<String> wrongOrganization = new InheritableThreadLocal<>();
    protected static InheritableThreadLocal<String> wrongVisibility = new InheritableThreadLocal<>();


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
                this.bodyJson =   createJson(validateRandomValue(bodyElement) , isLast, this.bodyJson);

            }else if(StringUtils.containsIgnoreCase(bodyElement.getValue(), "##")){
                //create json whit variable (find)
                this.bodyJson =   createJson(validateSpecificValue(bodyElement)  , isLast, this.bodyJson);
            }else{
                //create json
                this.bodyJson =   createJson(bodyElement , isLast, this.bodyJson);
            }


        });
       // return String.format("{  \"artifacts\": [ { %s  }  ] }", bodyJson.get());
        return String.format("{ %s }", bodyJson.get() );

    }

    public BodyElement validateRandomValue(BodyElement bodyElement){

        if(!bodyElement.getKey().equalsIgnoreCase("tags") ){
            String[] value = bodyElement.getValue().split("@@");
           String random =  value[1];
            random += "_"+generateRandomString();
            bodyElement.setValue(random);
        }else{

            String[] value = bodyElement.getValue().split("@@randomTags");
            int numberTags = Integer.valueOf(value[1]);
            String random =  "";
            for(int i=0; i<numberTags; i++ ){
                if(numberTags > 1 && i != numberTags-1){
                    random += "tag_"+generateRandomString() + " , ";
                }else{
                    random += "tag_"+generateRandomString();
                }

            }
            bodyElement.setValue(random);
        }
        return bodyElement;
    }

    public BodyElement validateSpecificValue(BodyElement bodyElement){

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
            case "tags":
                bodyElement.setValue(String.valueOf(getProject().getTags()));
                break;
            case "query":
                bodyElement.setValue(String.valueOf(getProject().getQuery()));
                break;
            case "type":
                bodyElement.setValue(String.valueOf(getProject().getType()));
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


    public  Map.Entry<String, String>  validateSpecificValue(Map.Entry<String, String> field){

        String[] value = field.getValue().split("##");
        String key =  value[1];
        System.out.println("========FIELD========");
        System.out.println(key);
        switch (key) {
            case "guid":
                field.setValue(getProject().getGuid());
                break;
            case "owner":
                field.setValue(String.valueOf(getProject().getOwner()));
                break;
            case "creator":
                field.setValue(String.valueOf(getProject().getCreator()));
                break;
            case "visibility":
                field.setValue(String.valueOf(getProject().getVisibility()));
                break;
            case "organization":
                field.setValue(String.valueOf(getProject().getOrganization()));
                break;
            case "featured":
                field.setValue(String.valueOf(getProject().getFeatured()));
                break;
            case "tags":
                field.setValue(String.valueOf(getProject().getTags()));
                break;
            case "query":
                field.setValue(String.valueOf(getProject().getQuery()));
                break;
            case "type":
                field.setValue(String.valueOf(getProject().getType()));
                break;
            default:
                field.setValue("");
                break;
        }

        System.out.println("========FIELD========");
        System.out.println(field);
        return field;
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

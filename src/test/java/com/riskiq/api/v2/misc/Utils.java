package com.riskiq.api.v2.misc;

import com.riskiq.api.v2.FlowData;
import com.riskiq.api.v2.impl.BodyElement;
import com.riskiq.api.v2.impl.EndPoint;
import com.riskiq.api.v2.impl.UserCredentials;
import io.restassured.RestAssured;
import io.restassured.response.ValidatableResponse;
import io.restassured.specification.RequestSpecification;
import org.apache.commons.lang3.StringUtils;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import static com.riskiq.api.v2.stepdefinitions.project.impl.Project.*;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.collection.IsEmptyCollection.empty;
import static org.hamcrest.core.Is.is;

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
    public static String accountClassification = "";
    public static String accountMonitors = "";
    public static String accountOrganization = "";
    public static String accountQuota = "";
    public static String accountSources = "";
    public static String accountTeamStream = "";
    public static String actionsTags = "";
    public static String actionsClassification = "";
    public static String actionsCompromised = "";
    public static String actionsDynamicDns = "";
    public static String actionsMonitor = "";
    public static String actionsBulkClassification = "";
    public static String actionsSinkhole = "";
    public static String enrichment = "";
    public static String enrichmentMalaware = "";
    public static String enrichmentOsint = "";
    public static String enrichmentSubdomains = "";
    public static String trackersUserTrackers = "";
    public static String whoisGet = "";
    public static String whoisSearchKeyword = "";
    public static String whoisSearch = "";
    public static String enrichmentMalwareBulk = "";
    public static String enrichmentDataBulk = "";
    public static String enrichmentBulkOsint = "";
    public static String hostAttributesComponents = "";
    public static String hostAttributesPairs = "";
    public static String hostAttributesTrackers = "";
    public static String dnsPassive = "";
    public static String dnsPassiveUnique = "";
    public static String enrichmentBulk = "";
    public static String dnsSearchKeyword = "";
    public static String sslCertificateHistory = "";
    public static String sslCertificate = "";
    public static String sslCertificateSearchKeyword = "";
    public static String sslCertificateSearch = "";
    public static String artifactTag = "";

  public static void setParameterProperties(){
        try {
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
        accountClassification = properties.getProperty("accountClassification");
        accountMonitors = properties.getProperty("accountMonitors");
        accountOrganization = properties.getProperty("accountOrganization");
        accountQuota = properties.getProperty("accountQuota");
        accountSources = properties.getProperty("accountSources");
        accountTeamStream = properties.getProperty("accountTeamStream");
        actionsTags = properties.getProperty("actionsTags");
        actionsClassification = properties.getProperty("actionsClassification");
        actionsCompromised = properties.getProperty("actionsCompromised");
        actionsDynamicDns = properties.getProperty("actionsDynamicDns");
        actionsMonitor = properties.getProperty("actionsMonitor");
        actionsBulkClassification = properties.getProperty("actionsBulkClassification");
        actionsSinkhole = properties.getProperty("actionsSinkhole");
        enrichment = properties.getProperty("enrichment");
        enrichmentMalaware = properties.getProperty("enrichmentMalaware");
        enrichmentOsint = properties.getProperty("enrichmentOsint");
        enrichmentSubdomains = properties.getProperty("enrichmentSubdomains");
        trackersUserTrackers = properties.getProperty("trackersUserTrackers");
        whoisGet = properties.getProperty("whoisGet");
        whoisSearchKeyword = properties.getProperty("whoisSearchKeyword");
        whoisSearch = properties.getProperty("whoisSearch");
        enrichmentMalwareBulk = properties.getProperty("enrichmentMalwareBulk");
        enrichmentDataBulk = properties.getProperty("enrichmentDataBulk");
        enrichmentBulkOsint = properties.getProperty("enrichmentBulkOsint");
        hostAttributesComponents = properties.getProperty("hostAttributesComponents");
        hostAttributesPairs = properties.getProperty("hostAttributesPairs");
        hostAttributesTrackers = properties.getProperty("hostAttributesTrackers");
        dnsPassive = properties.getProperty("dnsPassive");
        enrichmentBulk = properties.getProperty("enrichmentBulk");
        dnsPassiveUnique = properties.getProperty("dnsPassiveUnique");
        dnsSearchKeyword = properties.getProperty("dnsSearchKeyword");
        sslCertificateHistory = properties.getProperty("sslCertificateHistory");
        sslCertificate = properties.getProperty("sslCertificate");
        sslCertificateSearchKeyword = properties.getProperty("sslCertificateSearchKeyword");
        sslCertificateSearch = properties.getProperty("sslCertificateSearch");
        artifactTag = properties.getProperty("artifactTag");
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
        }else if ((bodyElement.getKey().equals("tagsint"))) {
            bodyElement.setKey("tags");
            if(isLast){
                if(bodyElement.getValue() != null && !bodyElement.getValue().isEmpty() && !bodyElement.getValue().equals("[]")){
                    bodyElement.setValue(String.format("[%s]", bodyElement.getValue()));
                }
                bodyJson.set(String.join("", bodyJson.get(), String.format("\"%s\": %s\n", bodyElement.getKey(), bodyElement.getValue())));
            }else{
                if (bodyElement.getValue() != null && !bodyElement.getValue().isEmpty() && !bodyElement.getValue().equals("[]")) {
                    bodyElement.setValue(String.format("[ %s ]", bodyElement.getValue().replace(",", " , ")));
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
        String letters = "abcdefghjkmnpqrstuvwxyz23456789";

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
            random += "." + generateRandomString();
            bodyElement.setValue(random);
        }else if(bodyElement.getKey().equalsIgnoreCase("query")){
            String[] value = bodyElement.getValue().split("@@");
            String random = value[1];
            random += "." + generateRandomString()+".org";
            bodyElement.setValue(random);
        }else{

            String[] value = bodyElement.getValue().split("@@randomTags");
            int numberTags = Integer.valueOf(value[1]);
            String random =  "";
            for(int i=0; i<numberTags; i++ ){
                if(numberTags > 1 && i != numberTags-1){
                    random += "tag."+generateRandomString() + ",";
                }else{
                    random += "tag."+generateRandomString();
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
            case "tags":
                bodyElement.setValue(String.valueOf(getProject().getTags()));
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
            case "wrongQuery":
                bodyElement.setValue(String.valueOf(getProject().wrongQuery));
                break;
            case "wrongType":
                bodyElement.setValue(String.valueOf(getProject().wrongType));
                break;
            case "guidArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getGuidArtifact()));
                break;
            case "wrongUiArtifact":
                bodyElement.setValue(String.valueOf(getProject().wrongUiArtifact));
                break;
            case "wrongProjectArtifact":
                bodyElement.setValue(String.valueOf(getProject().wrongProjectArtifact));
                break;
            case "ownerArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getOwner()));
                break;
            case "projectArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getProject()));
                break;
            case "creatorArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getCreator()));
                break;
            case "organizationArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getOrganization()));
                break;
            case "queryArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getQuery()));
                break;
            case "typeArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getType()));
                break;
            case "guidBulKArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getArtifacts().get(0)));
                getArtifact().getArtifacts().remove(0);
                break;
            case "BulkQueryArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getQueryArtifacts().get(0)));
                //getArtifact().getQueryArtifacts().remove(0);
                break;
            case "randomTags":
                bodyElement.setValue(String.valueOf(getArtifact().getTagsArtifact().get(0)));
                getArtifact().getTagsArtifact().remove(0);
                break;
            case "tagsArtifact":
                bodyElement.setValue(String.valueOf(getArtifact().getTagsArtifact().get(0)));
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
            case "guidArtifact":
                field.setValue(String.valueOf(getArtifact().getGuidArtifact()));
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

    public static List<String> getGuidBulk(int cant, String json) {
        List<String> artifactList = new ArrayList();
        Pattern p = Pattern.compile("\"guid\": \"(.+)\",");
        Matcher m = p.matcher(json);
        String parseJson = "";
        for (int i=1; i<=cant; i++){
            if(m.find()){
                parseJson = m.group(1);
                String[] values = parseJson.split("\",");
                if(values[0].length()>0)
                    artifactList.add(values[0]);
                m = p.matcher(parseJson);
            }
        }
        return artifactList;
    }

    public static List<String> getQueryBulkClassification(int cant, String json) {
        List<String> queryList = new ArrayList();
        Pattern p = Pattern.compile("\"query\": \"(.+)\",");
        Matcher m = p.matcher(json);
        String parseJson = "";
        for (int i=1; i<=cant; i++){
            if(m.find()){
                parseJson = m.group(1);
                String[] values = parseJson.split("\",");
                if(values[0].length()>0)
                    queryList.add(values[0]);
                m = p.matcher(parseJson);
            }
        }
        return queryList;
    }




    @Test
    public void deleteAllProjectTestCloud() throws Throwable{
      deleteAllProject();
    }

    
}


package com.riskiq.api.v2.stepdefinitions.project.impl;

import lombok.Builder;
import lombok.Data;
import lombok.Setter;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Project {

    private  String  guid;
    private  String  owner;
    private  String  creator;
    private  String  visibility;
    private  String  organization;
    private  Boolean featured;
    private  String tags;
    private  String query;
    private  String type;
    public static String wrongGuid =   "279abfa2-9e97-0cb9-d2bb995bca7c5";
    public static String noExistGuid = "279bbcb2-9e97-0cc9-d2cc-995bca7c5909";
    public static String wrongOwner = "OtherOwner";
    public static String wrongCreator = "OtherCreator";
    public static String wrongOrganization = "OtherOrganization";
    public static String wrongVisibility = "OtherVisibility";
    public static int integerTag = 100;


}

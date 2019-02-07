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
    public static String wrongGuid = "279abfa2-9e97-0cb9-d2bb995bca7c5";
    public static String noExistGuid = "279bbfb2-9e97-0cb9-d2bb-995bca7c5909";
    public static String wrongOwner = "OtherOwner";
    public static String wrongCreator = "OtherCreator";
    public static String wrongOrganization = "OtherOrganization";
    public static String wrongVisibility = "OtherVisibility";



}

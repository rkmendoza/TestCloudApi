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
    private @Builder.Default String wrongGuid = "279abfa2-9e97-0cb9-d2bb995bca7c5";
    private @Builder.Default String noExistGuid = "279bbfb2-9e97-0cb9-d2bb-995bca7c5909";
    private @Builder.Default String wrongOwner = "OtherOwner";
    private @Builder.Default String wrongCreator = "OtherCreator";
    private @Builder.Default String wrongOrganization = "OtherOrganization";
    private @Builder.Default String wrongVisibility = "OtherVisibility";



}

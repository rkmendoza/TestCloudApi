package com.riskiq.api.v2.stepdefinitions.project.impl;

import lombok.Builder;
import lombok.Data;
import lombok.Setter;

@Data
@Builder (builderMethodName = "with", buildMethodName = "create")
public class Project {

    private String guid;
    public @Setter String owner;
    public @Setter String creator;
    public @Setter String visibility;
    public @Setter String organization;
    public @Setter Boolean featured;
    public @Builder.Default String wrongGuid = "279abfa2-9e97-0cb9-d2bb995bca7c5";
    public @Builder.Default String noExistGuid = "279bbfb2-9e97-0cb9-d2bb-995bca7c5909";
    public @Builder.Default String wrongOwner = "OtherOwner";
    public @Builder.Default String wrongCreator = "OtherCreator";
    public @Builder.Default String wrongOrganization = "OtherOrganization";
    public @Builder.Default String wrongVisibility = "OtherVisibility";



}

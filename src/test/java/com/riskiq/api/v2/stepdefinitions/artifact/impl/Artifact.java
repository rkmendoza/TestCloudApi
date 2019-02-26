package com.riskiq.api.v2.stepdefinitions.artifact.impl;

import lombok.Builder;
import lombok.Data;

@Data
@Builder(builderMethodName = "with", buildMethodName = "create")
public class Artifact {

    private  String  guidArtifact;
    private  String  project;
    private  String  creator;
    private  String  organization;
    private  String  query;
    private  String  type;
    private  String  owner;
    private  String  tagsArtifact;
}

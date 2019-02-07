package com.riskiq.api.v2.impl;

import lombok.Builder;
import lombok.Data;

@Data
@Builder(builderMethodName = "with", buildMethodName = "create")
public class UserCredentials {
    private String username;
    private String password;
}

package com.riskiq.api.v2.impl;

import lombok.Builder;
import lombok.Data;
import lombok.Setter;

@Data
@Builder(builderMethodName = "with", buildMethodName = "create")
public class EndPoint {

    public @Setter String endpoint;
    public @Setter String method;

}

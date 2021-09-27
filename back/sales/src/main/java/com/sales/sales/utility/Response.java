package com.sales.sales.utility;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class Response {

    private int code;
    private Boolean status;
    private Object data;
    private String message;
}

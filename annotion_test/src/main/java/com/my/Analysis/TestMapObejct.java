package com.my.Analysis;

import java.util.HashMap;
import java.util.Map;

public class TestMapObejct {
    public static void main(String[] args) {
        Map<String, Object> map = new HashMap<>();
        Long authId = 1232321321L;
        map.put("authId", authId);

        System.out.println(String.valueOf((Long)map.get("authId")));
    }
}

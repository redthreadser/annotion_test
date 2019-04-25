package com.my.Analysis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TestMapObejct {
    public static void main(String[] args) {
//        Map<String, Object> map = new HashMap<>();
//        Long authId = 1232321321L;
//        map.put("authId", authId);
//
//        System.out.println(String.valueOf((Long)map.get("authId")));

        Map<Integer, List<String>> map = new HashMap<>();
        List<String> strList;
        for (int i = 0; i < 8; i++) {
            strList = new ArrayList<>();
            strList.add("1111");
            strList.add("eeee");
            map.put(i, strList);
        }
        System.out.println(map);
        Integer num;
        for (Map.Entry<Integer, List<String>> integerListEntry : map.entrySet()) {
            num = integerListEntry.getKey();
            if (num == 2) {
                integerListEntry.getValue().clear();
            }
            if (integerListEntry.getValue().size() == 0) {
                map.remove(num);
            }
        }
        System.out.println(map);
    }
}

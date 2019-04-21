package com.my.Analysis;

import com.my.annotion.TestAnnotation_3;

@TestAnnotation_3(value = "test_1", name="zhangsan", age = 12)
public class Analysis_1 {
    public static void main(String[] args) {
        Class<Analysis_1> test = Analysis_1.class;
        boolean hasAnnotion = test.isAnnotationPresent(TestAnnotation_3.class);
        if (hasAnnotion) {
            TestAnnotation_3 t = test.getAnnotation(TestAnnotation_3.class);
            System.out.println("value ---- " +t.value());
            System.out.println("name ---- " +t.name());
            System.out.println("age ---- " +t.age());

        }
    }
}

package com.my.Analysis;

import com.my.annotion.Eat;

public class DogAnalysisTest
{
    public static void main(String[] args) {
        try {
            Class<?> clazz = Class.forName("com.my.test.Dog");
            boolean hasAnnotion = clazz.isAnnotationPresent(Eat.class);
            if (hasAnnotion) {
                Eat eat = clazz.getAnnotation(Eat.class);
                System.out.println("eat---->" +eat.value());
                ;
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}

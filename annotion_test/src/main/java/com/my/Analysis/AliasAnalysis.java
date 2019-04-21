package com.my.Analysis;

import com.my.annotion.Alias;

@Alias(value = "demo_1", type = "type_class")
public class AliasAnalysis {
    @Alias(value = "name", type = "filed")
    private String studentName;

    @Alias(value = "getName", type = "method")
    public String getStudentName() {
        return "zhangSan";
    }

    public static void main(String[] args) {
        Class<?> aClass = AliasAnalysis.class;
        // 得到类上面的注解
        boolean hasAnnotation = aClass.isAnnotationPresent(Alias.class);
        if (hasAnnotation) {
            Alias a = aClass.getAnnotation(Alias.class);
            System.out.println(a.type() +" : " +a.value());
        }
        // 得到字段上面的注解
//        try {
//            Fields studentName = aClass.getDeclaredField("studentName");
//            studentName.setAccessible(true); // 防止字段的域访问不到
//            Alias a = studentName.getAnnotation(Alias.class);
//            if (a != null ) {
//                System.out.println(a.type() +" : " +a.value());
//            }
//        } catch (NoSuchFieldException e) {
//            e.printStackTrace();
//        }
        // 得到方法上面的注解
//        try {
//            Method getName = aClass.getDeclaredMethod("getStudentName");
//            getName.setAccessible(true); // 防止字段的域访问不到
//            Alias a = getName.getAnnotation(Alias.class);
//            if (a != null ) {
//                System.out.println(a.type() +" : " +a.value());
//            }
//        } catch (NoSuchMethodException e) {
//            e.printStackTrace();
//        }


    }
}

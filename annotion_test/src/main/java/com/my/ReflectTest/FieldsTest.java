package com.my.ReflectTest;

import com.my.test.Student;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

public class FieldsTest {

    public static void main(String[] args) throws IllegalAccessException, InvocationTargetException, InstantiationException {
        //1.获取Class对象
        Class stuClass = null;
        try {
            stuClass = Class.forName("com.my.test.Student");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //2.获取字段
        System.out.println("************获取所有公有的字段********************");
        Field[] fieldArray = stuClass.getFields();
        for(Field f : fieldArray){
            System.out.println(f);
        }
        System.out.println("************获取所有的字段(包括私有、受保护、默认的)********************");
        fieldArray = stuClass.getDeclaredFields();
        for(Field f : fieldArray){
            System.out.println(f);
        }

        System.out.println("*************获取公有字段**并调用***********************************");
        Field f = null;
        try {
            f = stuClass.getDeclaredField("name");
            f.setAccessible(true); // 暴力访问
            System.out.println(f);
            //获取一个对象
            Object obj = stuClass.getConstructor().newInstance();//产生Student对象--》Student stu = new Student();
            //为字段设置值
            // 第一个参数：要传入设置的对象，第二个参数：要传入实参
            f.set(obj, "刘德华");  //为Student对象中的name属性赋值--》stu.setName = "刘德华"
            Student stu = (Student)obj;
            System.out.println("验证姓名：" + stu.getName());
        } catch (NoSuchFieldException | NoSuchMethodException e) {
            e.printStackTrace();
        }

    }
}

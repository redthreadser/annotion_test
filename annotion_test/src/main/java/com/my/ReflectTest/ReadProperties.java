package com.my.ReflectTest;


import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Properties;

public class ReadProperties {

    public static void main(String[] args) {
        try {
            // 通过反射获取class文件
            Class clazz = Class.forName(getValue("className"));
            // 得到show方法
            Method method = clazz.getMethod(getValue("methodName"));
            method.setAccessible(true);
            // 调用show方法
            method.invoke(clazz.getConstructor().newInstance());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }


    public static String getValue(String key) throws IOException {
        Properties pro = new Properties();
        FileReader file = new FileReader("D:\\study\\pro.txt");
        pro.load(file);
        file.close();
        return pro.getProperty(key);
    }
}

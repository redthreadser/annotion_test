package com.my.ReflectTest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class TestMainReflect {
    public static void main(String[] args) {
        try {
            // 1. 获取字节码文件
            Class clazz = Class.forName("com.my.test.MainReflect");
            // 2. 获取main方法
            Method mainMehthod = clazz.getMethod("main", String[].class);
            //3、调用main方法
            // methodMain.invoke(null, new String[]{"a","b","c"});
            //第一个参数，对象类型，因为方法是static静态的，所以为null可以，第二个参数是String数组，这里要注意在jdk1.4时是数组，jdk1.5之后是可变参数
            //这里拆的时候将  new String[]{"a","b","c"} 拆成3个对象。。。所以需要将它强转。
            mainMehthod.invoke(null, (Object)new String[]{"a","b","c"});//方式一
            // methodMain.invoke(null, new Object[]{new String[]{"a","b","c"}});//方式二
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }
}

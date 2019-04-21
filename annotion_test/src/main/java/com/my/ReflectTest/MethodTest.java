package com.my.ReflectTest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 *   调用方法：
 *      Method --> public Object invoke(Object obj,Object... args):
 *                  参数说明：
 *                 obj : 要调用方法的对象，即通过反射的到的对象；
 *                  args:调用方式时所传递的实参；
 */
public class MethodTest {
    public static void main(String[] args) {
        try {
            Class stuClass = Class.forName("com.my.test.Student");
            System.out.println("***************获取公有的show1()方法*******************");
            Method m = stuClass.getMethod("show1", String.class);
            m.setAccessible(true); // 如果是私有方法，暴力破解
            System.out.println(m);
            //实例化一个Student对象
            Object obj = stuClass.getConstructor().newInstance();

            System.out.println("***************获取私有的show4()方法******************");
            m = stuClass.getDeclaredMethod("show4", int.class);
            System.out.println(m);
            m.setAccessible(true);//解除私有限定
            Object result = m.invoke(obj, 20);//需要两个参数，一个是要调用的对象（获取有反射），一个是实参
            System.out.println("返回值：" + result);
            m.invoke(obj, "刘德华");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
    }
}

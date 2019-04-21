package com.my.ReflectTest;

import com.my.test.Student;

/**
 * 获取Class对象的三种方式
 * 1.1 Object ——> getClass();  Object类中的getClass方法、因为所有类都继承Object类。从而调用Object类来获取
 * 1.2 任何数据类型（包括基本数据类型）都有一个“静态”的class属性
 * 1.3 通过Class类的静态方法：forName（String  className）(常用)
 */
public class GetClassTest {
    public static void main(String[] args) {
        //第一种方式获取Class对象
        Student stu1 = new Student();//这一new 产生一个Student对象，一个Class对象。
        Class stuClass = stu1.getClass();//获取Class对象
        System.out.println("2:  " +stuClass.getName());

        //第二种方式获取Class对象
        Class stuClass2 = Student.class;
        System.out.println("2:   " +(stuClass == stuClass2));//判断第一种方式获取的Class对象和第二种方式获取的是否是同一个

        //第三种方式获取Class对象
        try {
            Class stuClass3 = Class.forName("com.my.test.Student");//注意此字符串必须是真实路径，就是带包名的类路径，包名.类名
            System.out.println("3:  " +(stuClass3 == stuClass2));//判断三种方式是否获取的是同一个Class对象
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}

package com.my.test;

import com.my.annotion.CheckBug;

public class NoBug {

    @CheckBug
    public void number(){
        System.out.println("1234567890");
    }
    @CheckBug
    public void addNumber(){
        System.out.println("1+1="+1+1);
    }
    @CheckBug
    public void subNumber(){
        System.out.println("1-1="+(1-1));
    }
    @CheckBug
    public void muilNumber(){
        System.out.println("3 x 5="+ 3*5);
    }
    @CheckBug
    public void divisionNumber(){
        System.out.println("6 / 0="+ 6 / 0);
    }

    public void introduce(){
        System.out.println("我写的程序没有 bug!");
    }

}


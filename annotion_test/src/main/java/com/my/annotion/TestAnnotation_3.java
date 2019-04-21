package com.my.annotion;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.FIELD, ElementType.TYPE})
@Documented
public @interface TestAnnotation_3 {
    String value() default "";

    String name() default "";

    int age() default 0;

    String[] role() default {};
}

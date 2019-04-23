package com.my.annotion;

import java.lang.annotation.*;

@Retention(RetentionPolicy.RUNTIME)
// target 如果不写则注解可以写在任何地方
@Target({ElementType.FIELD, ElementType.ANNOTATION_TYPE, ElementType.TYPE})
@Documented
public @interface TestAnnotation_2 {

}

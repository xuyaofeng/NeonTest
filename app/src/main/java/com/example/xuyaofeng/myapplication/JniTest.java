package com.example.xuyaofeng.myapplication;

/**
 * Created by xuyaofeng on 17/8/1.
 */

public class JniTest {

    public native String getNativeString();

    static {
        System.loadLibrary("hello-jni");
    }
}

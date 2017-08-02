#include "com_example_xuyaofeng_myapplication_JniTest.h"
#include <stddef.h>
#include <android/log.h>
extern "C" {

extern int my_add(int i);

//static int my_thumb(int dummy)
//{
//    __asm__("movw r0, #1001 \t\n"
//            "movw r12, #2020 \t\n"
//            "add r0, r0, r12 \t\n"
//            "bx  lr");
//
//    return dummy;
//}

/*
 * Class:     com_example_xuyaofeng_myapplication_JniTest
 * Method:    getNativeString
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_example_xuyaofeng_myapplication_JniTest_getNativeString
  (JNIEnv * env, jobject obj) {
//  int x = my_thumb(0);
  int a = my_add(0);
    __android_log_print(ANDROID_LOG_DEBUG,"tag","result is %d", a);
  return env->NewStringUTF("hello world form c");
  }

}

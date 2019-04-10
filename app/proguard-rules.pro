-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-verbose

-dontoptimize
-dontpreverify

-keepattributes *Annotation*
-keep public class com.google.vending.licensing.ILicensingService
-keep public class com.android.vending.licensing.ILicensingService
-dontwarn java.lang.invoke.**

-keep public class android.net.http.**{*;}
-keep public class android.webkit.**{*;}
-dontwarn android.webkit.**
-dontwarn android.net.http.**
-keepclassmembers class * extends android.webkit.WebChromeClient {
    public void openFileChooser(...);
    public ** onShowFileChooser(...);
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers public class * extends android.view.View {
   void set*(***);
   *** get*();
}

-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keep class android.support.**{*;}
-dontwarn android.support.**

-keep class org.apache.**{*;}
-dontwarn org.apache.**

##---------------Begin: proguard configuration for Gson  ----------
-keepattributes Signature
-keep class sun.misc.** { *; }
-dontwarn sun.misc.**
-keep class com.google.gson.stream.** { *; }
-keep class com.google.gson.**{*;}

#-------h5 混淆----------------------------
-keepclassmembers class com.asiainfo.app.base.webview.NativeApiForH5{ *; }

-keep class com.asiainfo.app.jaf.nohttp.HttpResponse { *; }
-keep class com.asiainfo.app.mvp.model.bean.gsonbean.** { *; }
-keep class com.asiainfo.app.mvp.HshSdk { *; }

#---------------AndPermission-------------------------
-keepclassmembers class ** {
    @com.yanzhenjie.permission.PermissionYes <methods>;
}
-keepclassmembers class ** {
    @com.yanzhenjie.permission.PermissionNo <methods>;
}

# -----------------aes---------------------------------------------
-keep class com.tozny.crypto.android.AesCbcWithIntegrity$PrngFixes$* { *; }

# banner 的混淆代码
-keep class com.asiainfo.app.jaf.view.bannerview.BannerView { *; }
-keep class com.youth.banner.** { *; }

#--------------------------------EventBus 混淆--------------------------------------
-keepattributes *Annotation*
-keepclassmembers class * {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}
-keep class com.asiainfo.app.base.event.** { *; }

#---------------------------------高德定位---------------------------------------
-keep class com.amap.api.location.**{*;}
-keep class com.amap.api.fence.**{*;}
-keep class com.autonavi.aps.amapapi.model.**{*;}
-keep class com.loc.**{*;}

-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String,int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
    public static int e(...);
}
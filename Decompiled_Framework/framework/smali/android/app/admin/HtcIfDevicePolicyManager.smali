.class public interface abstract Landroid/app/admin/HtcIfDevicePolicyManager;
.super Ljava/lang/Object;
.source "HtcIfDevicePolicyManager.java"


# static fields
.field public static final EXTRA_ALLOW_STATUS:Ljava/lang/String; = "android.app.admin.extra.ALLOW_STATUS"

.field public static final INTENT_ALLOW_BROWSER_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_BROWSER_CHANGE"

.field public static final INTENT_ALLOW_BT_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_BT_CHANGE"

.field public static final INTENT_ALLOW_CAMERA_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_CAMERA_CHANGE"

.field public static final INTENT_ALLOW_GOOGLE_LBS_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_GOOGLE_LBS_CHANGE"

.field public static final INTENT_ALLOW_GPS_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_GPS_CHANGE"

.field public static final INTENT_ALLOW_INTERNET_SHARING_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_INTERNET_SHARING_CHANGE"

.field public static final INTENT_ALLOW_LTE_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_LTE_CHANGE"

.field public static final INTENT_ALLOW_STORAGE_CARD_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_STORAGE_CARD_CHANGE"

.field public static final INTENT_ALLOW_TEXT_MESSAGING_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_TEXT_MESSAGING_CHANGE"

.field public static final INTENT_ALLOW_VZW_LBS_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_VZW_LBS_CHANGE"

.field public static final INTENT_ALLOW_WIFI_CHANGE:Ljava/lang/String; = "android.app.admin.intent.ALLOW_WIFI_CHANGE"

.field public static final INTENT_DISK_ENCRUPTION_SETTING_CHANGE:Ljava/lang/String; = "android.app.admin.intent.DISK_ENCRUPTION_SETTING_CHANGE"

.field public static final INTENT_SD_CARD_ENCRUPTION_SETTING_CHANGE:Ljava/lang/String; = "android.app.admin.intent.SD_CARD_ENCRUPTION_SETTING_CHANGE"

.field public static final STATUS_ALLOW:I = 0x1

.field public static final STATUS_DISABLE:I = 0x0

.field public static final STATUS_HANDSFREE_ONLY:I = 0x2


# virtual methods
.method public abstract getAllowBTStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowBrowserStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowCameraStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowGPSStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowGoogleLBSStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowInternetSharingStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowLTEStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowStorageCardStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowTextMessagingStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowVzwLBSStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getAllowWifiStatus(Landroid/content/ComponentName;)I
.end method

.method public abstract getHTCPasswordExpiration(Landroid/content/ComponentName;)I
.end method

.method public abstract getPasswordAllowSimple(Landroid/content/ComponentName;)Z
.end method

.method public abstract getPasswordComplexity(Landroid/content/ComponentName;)I
.end method

.method public abstract getPasswordHistory(Landroid/content/ComponentName;)I
.end method

.method public abstract htcSetActivePasswordState(IIIIIIIIIZ)V
.end method

.method public abstract htcWrapSetActiveAdmin(Landroid/content/ComponentName;Z)V
.end method

.method public abstract htcWrapSetActivePasswordState(IIIIIIII)V
.end method

.method public abstract isDiskEncryptionEnable(Landroid/content/ComponentName;)Z
.end method

.method public abstract isSDEncryptionEnable(Landroid/content/ComponentName;)Z
.end method

.method public abstract setActivePasswordState2(IIIIIIIII)V
.end method

.method public abstract setAllowBT(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowBrowser(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowCamera(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowGPS(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowGoogleLBS(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowInternetSharing(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowLTE(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowStorageCard(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowTextMessaging(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowVzwLBS(Landroid/content/ComponentName;I)V
.end method

.method public abstract setAllowWifi(Landroid/content/ComponentName;I)V
.end method

.method public abstract setDiskEncryptionEnable(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setHTCPasswordExpiration(Landroid/content/ComponentName;I)V
.end method

.method public abstract setPasswordAllowSimple(Landroid/content/ComponentName;Z)V
.end method

.method public abstract setPasswordComplexity(Landroid/content/ComponentName;I)V
.end method

.method public abstract setPasswordHistory(Landroid/content/ComponentName;I)V
.end method

.method public abstract setSDEncryptionEnable(Landroid/content/ComponentName;Z)V
.end method

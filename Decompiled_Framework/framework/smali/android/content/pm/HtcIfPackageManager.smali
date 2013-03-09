.class public interface abstract Landroid/content/pm/HtcIfPackageManager;
.super Ljava/lang/Object;
.source "HtcIfPackageManager.java"


# static fields
.field public static final DIRTY_INSTALLER:Ljava/lang/String; = "DirtyInstaller"

.field public static final DONT_DELETE_DATA:I = 0x1

.field public static final FEATURE_TOUCHSCREEN_PEN:Ljava/lang/String; = "android.hardware.touchscreen.pen"

.field public static final HTC_INSTALLER:Ljava/lang/String; = "HTCInstaller"

.field public static final INSTALL_ALLOW_TEST:I = 0x4

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_CONFLICTING_PROVIDER:I = -0xd

.field public static final INSTALL_FAILED_CONTAINER_ERROR:I = -0x12

.field public static final INSTALL_FAILED_CPU_ABI_INCOMPATIBLE:I = -0x10

.field public static final INSTALL_FAILED_DEXOPT:I = -0xb

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_INSTALL_LOCATION:I = -0x13

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_MEDIA_UNAVAILABLE:I = -0x14

.field public static final INSTALL_FAILED_MISSING_FEATURE:I = -0x11

.field public static final INSTALL_FAILED_MISSING_SHARED_LIBRARY:I = -0x9

.field public static final INSTALL_FAILED_NEWER_SDK:I = -0xe

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_OLDER_SDK:I = -0xc

.field public static final INSTALL_FAILED_REPLACE_COULDNT_DELETE:I = -0xa

.field public static final INSTALL_FAILED_SHARED_USER_INCOMPATIBLE:I = -0x8

.field public static final INSTALL_FAILED_TEST_ONLY:I = -0xf

.field public static final INSTALL_FAILED_UPDATE_INCOMPATIBLE:I = -0x7

.field public static final INSTALL_FORWARD_LOCK:I = 0x1

.field public static final INSTALL_PARSE_FAILED_BAD_MANIFEST:I = -0x65

.field public static final INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME:I = -0x6a

.field public static final INSTALL_PARSE_FAILED_BAD_SHARED_USER_ID:I = -0x6b

.field public static final INSTALL_PARSE_FAILED_CERTIFICATE_ENCODING:I = -0x69

.field public static final INSTALL_PARSE_FAILED_INCONSISTENT_CERTIFICATES:I = -0x68

.field public static final INSTALL_PARSE_FAILED_MANIFEST_EMPTY:I = -0x6d

.field public static final INSTALL_PARSE_FAILED_MANIFEST_MALFORMED:I = -0x6c

.field public static final INSTALL_PARSE_FAILED_NOT_APK:I = -0x64

.field public static final INSTALL_PARSE_FAILED_NO_CERTIFICATES:I = -0x67

.field public static final INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION:I = -0x66

.field public static final INSTALL_REPLACE_EXISTING:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1


# virtual methods
.method public abstract clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
.end method

.method public abstract freeStorage(JLandroid/content/IntentSender;)V
.end method

.method public abstract freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
.end method

.method public abstract getDirectedSmsReceivers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getInstallLocation()I
.end method

.method public abstract getInstalledHTCPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
.end method

.method public abstract installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
.end method

.method public abstract nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setAppName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEnabledSettingEx([Ljava/lang/String;[Ljava/lang/String;)V
.end method

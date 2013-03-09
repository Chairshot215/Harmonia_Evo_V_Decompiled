.class public Lcom/googlecode/android/wifi/tether/system/NativeTask;
.super Ljava/lang/Object;
.source "NativeTask.java"


# static fields
.field public static final MSG_TAG:Ljava/lang/String; = "TETHER -> NativeTask"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    :try_start_0
    const-string v1, "TETHER -> NativeTask"

    const-string v2, "Trying to load libwtnativetask.so"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string v1, "wtnativetask"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 14
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 15
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "TETHER -> NativeTask"

    const-string v2, "Could not load libwtnativetask.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getProp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native runCommand(Ljava/lang/String;)I
.end method

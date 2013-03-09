.class public Lcom/android/defcontainer/MeasurementUtils;
.super Ljava/lang/Object;
.source "MeasurementUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "defcontainer_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static measureDirectory(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/defcontainer/MeasurementUtils;->native_measureDirectory(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static native native_measureDirectory(Ljava/lang/String;)J
.end method

.class public Lcom/invensense/android/hardware/sysapi/SysApi;
.super Ljava/lang/Object;
.source "SysApi.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "mpl_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native getBiases([F)I
.end method

.method public static final native getSensors([J)I
.end method

.method public static final native resetCal()I
.end method

.method public static final native selfTest()I
.end method

.method public static final native selfTest_HTC_USER()I
.end method

.method public static final native setBiasUpdateFunc(J)I
.end method

.method public static final native setBiases([F)I
.end method

.method public static final native setSensors(J)I
.end method

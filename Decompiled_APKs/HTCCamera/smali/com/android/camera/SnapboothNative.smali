.class public Lcom/android/camera/SnapboothNative;
.super Ljava/lang/Object;
.source "SnapboothNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SnapboothNative"

    const-string v1, "Load+"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "htcsnapbooth"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "SnapboothNative"

    const-string v1, "Load-"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AllocateBitmap(II)Ljava/lang/Object;
.end method

.method public static native AllocateBitmapFromFile(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end method

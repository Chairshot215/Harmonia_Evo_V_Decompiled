.class public Lcom/htc/android/qxdm2sd/Device$Log;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/qxdm2sd/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 103
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 119
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 127
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 95
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 87
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 111
    invoke-static {}, Lcom/htc/android/qxdm2sd/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void
.end method

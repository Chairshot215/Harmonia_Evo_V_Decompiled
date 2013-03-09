.class public Lcom/android/smith/Device$Log;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 97
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 113
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 121
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 89
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 81
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 105
    invoke-static {}, Lcom/android/smith/HtcNative;->isDebugOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    return-void
.end method

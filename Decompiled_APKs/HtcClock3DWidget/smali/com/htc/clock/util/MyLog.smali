.class public Lcom/htc/clock/util/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockWidget"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDebugLog()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 20
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 33
    const-string v0, "ClockWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 29
    const-string v0, "ClockWidget"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 14
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 26
    return-void
.end method

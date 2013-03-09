.class public Lcom/htc/net/wimax/WimaxNative;
.super Ljava/lang/Object;
.source "WimaxNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WimaxNative"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    :try_start_0
    const-string v1, "WimaxNative"

    const-string v2, "Load library: wimaxjni"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "wimaxjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WimaxNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load library failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AddRouteToGateway()Z
.end method

.method public static native ConfigInterface()Z
.end method

.method public static native DoWimaxDhcpRelease()Z
.end method

.method public static native DoWimaxDhcpRequest()Z
.end method

.method public static native DumpKmsg()Z
.end method

.method public static native DumpLastKmsg()Z
.end method

.method public static native DumpLogcat()Z
.end method

.method public static native GetWimaxDhcpError()Ljava/lang/String;
.end method

.method public static native LoadDriver()Z
.end method

.method public static native StartDaemon()Z
.end method

.method public static native StartDhcpWimax()Z
.end method

.method public static native StartDriver()Z
.end method

.method public static native StopDaemon()Z
.end method

.method public static native StopDhcpWimax()Z
.end method

.method public static native StopDriver()Z
.end method

.method public static native TerminateProcess(Ljava/lang/String;)Z
.end method

.method public static native ThpIoctl(IJ)Z
.end method

.method public static native UnloadDriver()Z
.end method

.method public static native getWimaxProp(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native setWimaxProp(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native testConnect()Z
.end method

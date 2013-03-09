.class public Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResourceUtil;
.super Ljava/lang/Object;
.source "HtcLaputaResourceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResourceUtil$RESXmlHandler;,
        Lcom/htc/laputa/HtcLaputaInstallerUtil/HtcLaputaResourceUtil$SDKXmlHandler;
    }
.end annotation


# static fields
.field private static final PACKAGE_LAPUTA:Ljava/lang/String; = "com.htc.laputa"

.field private static final TAG:Ljava/lang/String; = "HtcLaputaInstaller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static isResourceVerionCorrect(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    const-string v0, "HtcLaputaInstaller"

    const-string v1, "HtcLaputaResourceUtil.isResourceVerionCorrect() is deprecated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x1

    return v0
.end method

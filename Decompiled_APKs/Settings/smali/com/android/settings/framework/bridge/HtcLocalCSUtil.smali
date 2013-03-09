.class public Lcom/android/settings/framework/bridge/HtcLocalCSUtil;
.super Lcom/htc/cscore/util/CSUtil;
.source "HtcLocalCSUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/htc/cscore/util/CSUtil;-><init>()V

    return-void
.end method

.method public static hasLocationService(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->hasLocationService(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

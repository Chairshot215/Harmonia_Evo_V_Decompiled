.class public Lcom/htc/android/htcime/plugin/util/CSUtils;
.super Ljava/lang/Object;
.source "CSUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .locals 2
    .parameter "context"

    .prologue
    .line 10
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

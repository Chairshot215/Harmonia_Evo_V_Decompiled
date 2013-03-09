.class public Lcom/htc/messaging/utils/BuildUtil;
.super Ljava/lang/Object;
.source "BuildUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Messaging"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSenseVersion()D
    .locals 5

    .prologue
    .line 11
    const-wide/high16 v1, 0x3ff0

    .line 13
    .local v1, version:D
    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 18
    :goto_0
    return-wide v1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Messaging"

    const-string v4, "version parsing error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSortByDeviceTimeEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {}, Lcom/htc/messaging/utils/BuildUtil;->getSenseVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4010

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/htc/messaging/utils/BuildUtil;->getSenseVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x400c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    .line 37
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

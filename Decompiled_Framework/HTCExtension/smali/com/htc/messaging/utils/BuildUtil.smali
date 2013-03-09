.class public Lcom/htc/messaging/utils/BuildUtil;
.super Ljava/lang/Object;
.source "BuildUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Messaging"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSenseVersion()D
    .locals 5

    const-wide/high16 v1, 0x3ff0

    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :goto_0
    return-wide v1

    :catch_0
    move-exception v0

    const-string v3, "Messaging"

    const-string v4, "version parsing error."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSortByDeviceTimeEnabled()Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/messaging/utils/BuildUtil;->getSenseVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4010

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/messaging/utils/BuildUtil;->getSenseVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x400c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x8a

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

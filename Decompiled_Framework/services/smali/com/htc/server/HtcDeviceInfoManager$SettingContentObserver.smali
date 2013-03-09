.class final Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;
.super Landroid/database/ContentObserver;
.source "HtcDeviceInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDeviceInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/HtcDeviceInfoManager;


# direct methods
.method public constructor <init>(Lcom/htc/server/HtcDeviceInfoManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v2, p0, Lcom/htc/server/HtcDeviceInfoManager$SettingContentObserver;->this$0:Lcom/htc/server/HtcDeviceInfoManager;

    #getter for: Lcom/htc/server/HtcDeviceInfoManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/htc/server/HtcDeviceInfoManager;->access$2500(Lcom/htc/server/HtcDeviceInfoManager;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    sget-wide v4, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    :goto_0
    return-void

    :cond_0
    sget-wide v2, Lcom/htc/server/HtcDeviceInfoManager;->MAX_USER_ACTIVITY_DURATION:J

    sput-wide v2, Lcom/htc/server/HtcDeviceInfoManager;->SETTING_SCREEN_OFF_TIMEOUT:J

    goto :goto_0
.end method

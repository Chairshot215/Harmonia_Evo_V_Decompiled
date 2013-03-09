.class Lcom/android/updater/service/UpdaterInitService$CustomizeThread;
.super Ljava/lang/Thread;
.source "UpdaterInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/service/UpdaterInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomizeThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/updater/service/UpdaterInitService;


# direct methods
.method public constructor <init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private customizeFOTA()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 110
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, cr:Landroid/content/ContentResolver;
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    .line 112
    .local v5, enableFOTA:Z
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    .line 113
    .local v6, enableManualCheck:Z
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcFOTAFlag:Z

    .line 114
    .local v3, defaultScheduledCheck:Z
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    .line 115
    .local v4, enableBackup:Z
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcBACKUPFlag:Z

    .line 118
    .local v2, defaultDownloadWifi:Z
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->mContext:Landroid/content/Context;

    const-string v11, "FOTA"

    invoke-static {v10, v11}, Lcom/android/updater/util/UpdaterUtil;->loadCustomizeData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .local v1, customizationBundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 121
    const-string v10, "settings"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 122
    .local v7, settings:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 123
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    const-string v11, "Enable_FOTA_UI"

    #calls: Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v10, v7, v11}, Lcom/android/updater/service/UpdaterInitService;->access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    .line 124
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    const-string v11, "Enable_Manual_Check"

    #calls: Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v10, v7, v11}, Lcom/android/updater/service/UpdaterInitService;->access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v6

    .line 125
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    const-string v11, "Default_Scheduled_Ckeck"

    #calls: Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v10, v7, v11}, Lcom/android/updater/service/UpdaterInitService;->access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    .line 126
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    const-string v11, "Enable_Backup"

    #calls: Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v10, v7, v11}, Lcom/android/updater/service/UpdaterInitService;->access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    .line 127
    iget-object v10, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    const-string v11, "Default_Download_Wifi"

    #calls: Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    invoke-static {v10, v7, v11}, Lcom/android/updater/service/UpdaterInitService;->access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v2

    .line 130
    .end local v7           #settings:Landroid/os/Bundle;
    :cond_0
    if-nez v5, :cond_1

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v3, 0x0

    .line 156
    :cond_1
    invoke-static {v0, v9, v5}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 157
    invoke-static {v0, v8, v6}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 158
    const/4 v10, 0x2

    invoke-static {v0, v10, v3}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 159
    const/4 v10, 0x3

    invoke-static {v0, v10, v4}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 160
    const/16 v10, 0x13

    invoke-static {v0, v10, v2}, Lcom/android/updater/db/FOTASettings;->putBoolean(Landroid/content/ContentResolver;IZ)Z

    .line 161
    const-string v10, "FOTA_periodic_checkin"

    if-eqz v3, :cond_2

    :goto_0
    invoke-static {v0, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 162
    return-void

    :cond_2
    move v8, v9

    .line 161
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-static {}, Lcom/android/updater/service/UpdaterInitService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {v3}, Lcom/android/updater/service/UpdaterInitService;->access$002(Z)Z

    .line 100
    invoke-direct {p0}, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->customizeFOTA()V

    .line 102
    new-instance v0, Lcom/android/updater/service/UpdaterInitService$InitThread;

    iget-object v1, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->this$0:Lcom/android/updater/service/UpdaterInitService;

    iget-object v2, p0, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/updater/service/UpdaterInitService$InitThread;-><init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/updater/service/UpdaterInitService$InitThread;->start()V

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/updater/service/UpdaterInitService;->access$002(Z)Z

    goto :goto_0
.end method

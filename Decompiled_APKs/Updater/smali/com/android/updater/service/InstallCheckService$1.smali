.class Lcom/android/updater/service/InstallCheckService$1;
.super Landroid/content/BroadcastReceiver;
.source "InstallCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/service/InstallCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/service/InstallCheckService;


# direct methods
.method constructor <init>(Lcom/android/updater/service/InstallCheckService;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 35
    const-string v10, "level"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 36
    .local v3, batteryLevel:I
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->getBatteryBoundary(Landroid/content/Context;)I

    move-result v2

    .line 39
    .local v2, batteryBoundary:I
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #calls: Lcom/android/updater/service/InstallCheckService;->checkUpdateFile()Z
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$000(Lcom/android/updater/service/InstallCheckService;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/updater/db/FOTASettings;->getBoolean(Landroid/content/ContentResolver;IZ)Z

    move-result v4

    .line 44
    .local v4, downloadToSD:Z
    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/updater/util/UpdaterUtil;->checkStorageStatus(JI)I

    move-result v9

    .line 45
    .local v9, storageStatus:I
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.updater.FOTA_ALERT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, alertIntent:Landroid/content/Intent;
    if-eqz v4, :cond_1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 47
    const-string v10, "alert_type"

    const/16 v11, 0x15

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    :goto_0
    const/high16 v10, 0x1000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10, v1}, Lcom/android/updater/service/InstallCheckService;->startActivity(Landroid/content/Intent;)V

    .line 92
    .end local v1           #alertIntent:Landroid/content/Intent;
    .end local v4           #downloadToSD:Z
    .end local v9           #storageStatus:I
    :goto_1
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10}, Lcom/android/updater/service/InstallCheckService;->stopSelf()V

    .line 94
    .end local v2           #batteryBoundary:I
    .end local v3           #batteryLevel:I
    :cond_0
    return-void

    .line 48
    .restart local v1       #alertIntent:Landroid/content/Intent;
    .restart local v2       #batteryBoundary:I
    .restart local v3       #batteryLevel:I
    .restart local v4       #downloadToSD:Z
    .restart local v9       #storageStatus:I
    :cond_1
    if-eqz v4, :cond_2

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 49
    const-string v10, "alert_type"

    const/16 v11, 0x16

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 51
    :cond_2
    const-string v10, "alert_type"

    const/16 v11, 0x17

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-static {p1}, Lcom/android/updater/util/UpdaterUtil;->prepareDownloadExtras(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 56
    .end local v1           #alertIntent:Landroid/content/Intent;
    .end local v4           #downloadToSD:Z
    .end local v9           #storageStatus:I
    :cond_3
    if-ge v3, v2, :cond_4

    .line 58
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.updater.FOTA_ALERT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v1       #alertIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #getter for: Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 60
    const-string v10, "position"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 61
    const-string v10, "install_check_error"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v10, "alert_type"

    const/16 v11, 0x10

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const/high16 v10, 0x1000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10, v1}, Lcom/android/updater/service/InstallCheckService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 65
    .end local v1           #alertIntent:Landroid/content/Intent;
    :cond_4
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #calls: Lcom/android/updater/service/InstallCheckService;->checkInternalStorage()Z
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$200(Lcom/android/updater/service/InstallCheckService;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 66
    const-string v10, "UpdaterAPK | InstallCheckService"

    const-string v11, "Internal storage space is not enough to install update"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.updater.FOTA_ALERT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .restart local v1       #alertIntent:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #getter for: Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 69
    const-string v10, "position"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 70
    const-string v10, "install_check_error"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v10, "alert_type"

    const/16 v11, 0x14

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const/high16 v10, 0x1000

    invoke-virtual {v1, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10, v1}, Lcom/android/updater/service/InstallCheckService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 78
    .end local v1           #alertIntent:Landroid/content/Intent;
    :cond_5
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #getter for: Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "position"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 80
    .local v8, installOption:I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_6

    .line 82
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #getter for: Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "updateFile"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, filePath:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.server.checkin.FOTA_INSTALL"

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 84
    .local v6, install:Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10, v6}, Lcom/android/updater/service/InstallCheckService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 86
    .end local v5           #filePath:Ljava/lang/String;
    .end local v6           #install:Landroid/content/Intent;
    :cond_6
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    #getter for: Lcom/android/updater/service/InstallCheckService;->mIntent:Landroid/content/Intent;
    invoke-static {v10}, Lcom/android/updater/service/InstallCheckService;->access$100(Lcom/android/updater/service/InstallCheckService;)Landroid/content/Intent;

    move-result-object v7

    .line 87
    .local v7, installIntent:Landroid/content/Intent;
    const-class v10, Lcom/android/updater/ui/PesterActivity;

    invoke-virtual {v7, p1, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    const/high16 v10, 0x1000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v10, p0, Lcom/android/updater/service/InstallCheckService$1;->this$0:Lcom/android/updater/service/InstallCheckService;

    invoke-virtual {v10, v7}, Lcom/android/updater/service/InstallCheckService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.class Lcom/googlecode/android/wifi/tether/TetherService$2;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherService;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 349
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 350
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-D700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const-string v3, "TetherService"

    const-string v4, "Disabling 4G ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 354
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$10(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 362
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$9(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 363
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$14(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 364
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$11(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 365
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$12(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 366
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$13(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 368
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->releaseWakeLock()V

    .line 369
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/bin/tether stop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runRootCommand(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 372
    :cond_1
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->cancelAll()V

    .line 376
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "driverreloadpref"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 377
    .local v1, reloadDriver:Z
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "setuppref"

    const-string v5, "auto"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, setupMethod:Ljava/lang/String;
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "enable4gpref"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 379
    .local v0, active4G:Z
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getDeviceParameters()Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getAutoSetupMethod()Ljava/lang/String;

    move-result-object v2

    .line 383
    :cond_2
    const-string v3, "softap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "netd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    :cond_3
    if-nez v1, :cond_4

    .line 385
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->disableWifiAndBt(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$5(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 390
    :cond_4
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->enableWifiAndBt(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$15(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 393
    if-eqz v0, :cond_5

    .line 394
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-D700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 395
    const-string v3, "TetherService"

    const-string v4, "Enabling 4G ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 401
    :cond_5
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v3

    if-eq v3, v8, :cond_6

    .line 402
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v4, 0x2

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 404
    :cond_6
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 405
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->sendManageBroadcast(I)V

    .line 407
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-boolean v3, v3, Lcom/googlecode/android/wifi/tether/TetherService;->autoShutdown:Z

    if-eqz v3, :cond_7

    .line 408
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$2;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->shutdownHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 410
    :cond_7
    return-void

    .line 355
    .end local v0           #active4G:Z
    .end local v1           #reloadDriver:Z
    .end local v2           #setupMethod:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

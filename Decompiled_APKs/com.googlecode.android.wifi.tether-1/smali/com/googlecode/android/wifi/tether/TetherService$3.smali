.class Lcom/googlecode/android/wifi/tether/TetherService$3;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherService;->restart()V
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 419
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

    .line 422
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$10(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 423
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$9(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 424
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$14(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 425
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$11(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 426
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$12(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 427
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$13(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 429
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 430
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

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

    .line 431
    const-string v3, "TetherService"

    const-string v4, "Disabling 4G ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 434
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

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

    .line 441
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->disableWifiAndBt(Z)V
    invoke-static {v3, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$5(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 448
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "driverreloadpref"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 449
    .local v0, reloadDriver:Z
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "setuppref"

    const-string v5, "auto"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, setupMethod:Ljava/lang/String;
    const-string v3, "auto"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getDeviceParameters()Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getAutoSetupMethod()Ljava/lang/String;

    move-result-object v1

    .line 455
    :cond_2
    const-string v3, "softap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "netd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    :cond_3
    if-nez v0, :cond_4

    .line 457
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->enableAndDisconnectWifi()V
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$6(Lcom/googlecode/android/wifi/tether/TetherService;)V

    .line 462
    :cond_4
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateConfiguration()V

    .line 465
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v3

    if-eq v3, v7, :cond_5

    .line 467
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/bin/tether start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runRootCommand(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 468
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 476
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-virtual {v3}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SPH-D700"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 477
    const-string v3, "TetherService"

    const-string v4, "Enabling 4G ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 482
    :cond_6
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    const-string v4, "tether.status"

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 483
    .local v2, wifiStatus:Ljava/lang/String;
    const-string v3, "running"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 484
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v4, 0x6

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 508
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-object v4, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v4}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 509
    return-void

    .line 471
    .end local v2           #wifiStatus:Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v3, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    goto :goto_1

    .line 488
    .restart local v2       #wifiStatus:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$9(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 489
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$10(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 491
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "autoshutdownidle"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 492
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "autoshutdowntimer"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 493
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "autoshutdownquota"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 494
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "autoshutdownkeepalive"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 495
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "shutdownpref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 497
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$11(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 499
    :cond_a
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "shutdowntimerpref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 500
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$12(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 502
    :cond_b
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "quotashutdownpref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 503
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$13(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 505
    :cond_c
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v3

    iget-object v3, v3, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v4, "keepalivecheckpref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 506
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherService$3;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V
    invoke-static {v3, v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$14(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    goto/16 :goto_2

    .line 435
    .end local v0           #reloadDriver:Z
    .end local v1           #setupMethod:Ljava/lang/String;
    .end local v2           #wifiStatus:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

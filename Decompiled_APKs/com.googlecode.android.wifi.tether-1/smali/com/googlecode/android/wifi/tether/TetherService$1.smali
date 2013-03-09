.class Lcom/googlecode/android/wifi/tether/TetherService$1;
.super Ljava/lang/Object;
.source "TetherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/android/wifi/tether/TetherService;->start()V
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
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 251
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->binariesExists()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->filesetOutdated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    :cond_0
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->hasRootPermission()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->installFiles()V

    .line 257
    :cond_1
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$1(Lcom/googlecode/android/wifi/tether/TetherService;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->origWifiState:Z
    invoke-static {v5, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$2(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 258
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$3(Lcom/googlecode/android/wifi/tether/TetherService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->origBtState:Z
    invoke-static {v5, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$4(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 260
    const/4 v3, 0x0

    .line 263
    .local v3, waitForShutdown:Z
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateDeviceParameters()V

    .line 264
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SPH-D700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    const-string v5, "TetherService"

    const-string v6, "Disabling 4G ..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v5, v9}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 267
    const/4 v3, 0x1

    .line 271
    :cond_2
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->disableWifiAndBt(Z)V
    invoke-static {v5, v3}, Lcom/googlecode/android/wifi/tether/TetherService;->access$5(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 274
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "driverreloadpref"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 275
    .local v1, reloadDriver:Z
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "setuppref"

    const-string v7, "auto"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, setupMethod:Ljava/lang/String;
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "enable4gpref"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 277
    .local v0, active4G:Z
    const-string v5, "auto"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->getDeviceParameters()Lcom/googlecode/android/wifi/tether/system/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getAutoSetupMethod()Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_3
    const-string v5, "softap"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "netd"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 282
    :cond_4
    if-nez v1, :cond_5

    .line 283
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->enableAndDisconnectWifi()V
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$6(Lcom/googlecode/android/wifi/tether/TetherService;)V

    .line 288
    :cond_5
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->updateConfiguration()V

    .line 291
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v5

    if-eq v5, v8, :cond_6

    .line 293
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v7}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v7

    iget-object v7, v7, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    iget-object v7, v7, Lcom/googlecode/android/wifi/tether/system/CoreTask;->DATA_FILE_PATH:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/bin/tether start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->runRootCommand(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 295
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/TetherApplication;->acquireWakeLock()V

    .line 296
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 304
    :cond_6
    :goto_0
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->coretask:Lcom/googlecode/android/wifi/tether/system/CoreTask;

    const-string v6, "tether.status"

    invoke-virtual {v5, v6}, Lcom/googlecode/android/wifi/tether/system/CoreTask;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, wifiStatus:Ljava/lang/String;
    const-string v5, "running"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 306
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v6, 0x6

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v5, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    .line 331
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 332
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->configuration:Lcom/googlecode/android/wifi/tether/system/Configuration;

    invoke-virtual {v5}, Lcom/googlecode/android/wifi/tether/system/Configuration;->getDevice()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SPH-D700"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 333
    const-string v5, "TetherService"

    const-string v6, "Enabling 4G ..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/system/WimaxHelper;->samsungWimax(Landroid/content/Context;Z)V

    .line 337
    :cond_8
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    iget-object v6, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$7(Lcom/googlecode/android/wifi/tether/TetherService;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->sendStateBroadcast(I)V

    .line 338
    return-void

    .line 299
    .end local v4           #wifiStatus:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    const/4 v6, 0x7

    #setter for: Lcom/googlecode/android/wifi/tether/TetherService;->state:I
    invoke-static {v5, v6}, Lcom/googlecode/android/wifi/tether/TetherService;->access$8(Lcom/googlecode/android/wifi/tether/TetherService;I)V

    goto :goto_0

    .line 309
    .restart local v4       #wifiStatus:Ljava/lang/String;
    :cond_a
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->clientConnectEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$9(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 310
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->trafficCounterEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$10(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 312
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "autoshutdownidle"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 313
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "autoshutdowntimer"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "autoshutdownquota"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 315
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "autoshutdownkeepalive"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 316
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->preferenceEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "shutdownpref"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 318
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownIdleCheckerEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$11(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 320
    :cond_b
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "shutdowntimerpref"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 321
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownTimerCheckerEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$12(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 323
    :cond_c
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "quotashutdownpref"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 324
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->shutdownQuotaCheckerEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$13(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    .line 326
    :cond_d
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #getter for: Lcom/googlecode/android/wifi/tether/TetherService;->application:Lcom/googlecode/android/wifi/tether/TetherApplication;
    invoke-static {v5}, Lcom/googlecode/android/wifi/tether/TetherService;->access$0(Lcom/googlecode/android/wifi/tether/TetherService;)Lcom/googlecode/android/wifi/tether/TetherApplication;

    move-result-object v5

    iget-object v5, v5, Lcom/googlecode/android/wifi/tether/TetherApplication;->settings:Landroid/content/SharedPreferences;

    const-string v6, "keepalivecheckpref"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    iget-object v5, p0, Lcom/googlecode/android/wifi/tether/TetherService$1;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    #calls: Lcom/googlecode/android/wifi/tether/TetherService;->keepAliveCheckerEnable(Z)V
    invoke-static {v5, v8}, Lcom/googlecode/android/wifi/tether/TetherService;->access$14(Lcom/googlecode/android/wifi/tether/TetherService;Z)V

    goto/16 :goto_1
.end method

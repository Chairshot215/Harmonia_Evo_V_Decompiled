.class final Lcom/android/mms/transport/Connection$EventHandler;
.super Landroid/os/Handler;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transport/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transport/Connection;


# direct methods
.method public constructor <init>(Lcom/android/mms/transport/Connection;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    .line 356
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 361
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 363
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    invoke-virtual {v7}, Lcom/android/mms/transport/Connection;->startMmsConnectivity()I

    move-result v6

    .line 364
    .local v6, result:I
    if-nez v6, :cond_0

    .line 369
    invoke-virtual {p0, v10}, Lcom/android/mms/transport/Connection$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x7530

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/mms/transport/Connection$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 376
    .end local v6           #result:I
    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$000(Lcom/android/mms/transport/Connection;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 377
    .local v4, info:Landroid/net/NetworkInfo;
    iget v7, p1, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    .line 379
    const-string v7, "Connection"

    const-string v8, "EVENT_APN_ALREADY_ACTIVE gogo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$100(Lcom/android/mms/transport/Connection;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 383
    :cond_1
    const/4 v1, 0x0

    .line 384
    .local v1, WifiInfo:Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 385
    .local v0, WiMaxInfo:Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 386
    .local v3, bRunWifi:Z
    const/4 v2, 0x0

    .line 389
    .local v2, bRunWiMax:Z
    if-eqz v4, :cond_2

    .line 390
    const-string v7, "Jerry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info.getType() >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v7, v12, :cond_6

    .line 393
    :cond_3
    const-string v7, "Jerry"

    const-string v8, "not TYPE_MOBILE_MMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #calls: Lcom/android/mms/transport/Connection;->getWifiInfo()Landroid/net/NetworkInfo;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$200(Lcom/android/mms/transport/Connection;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 399
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #calls: Lcom/android/mms/transport/Connection;->getWiMaxInfo()Landroid/net/NetworkInfo;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$300(Lcom/android/mms/transport/Connection;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 400
    if-eqz v1, :cond_4

    .line 401
    const/4 v3, 0x1

    .line 402
    :cond_4
    if-eqz v0, :cond_5

    .line 403
    const/4 v2, 0x1

    .line 405
    :cond_5
    const-string v7, "Jerry"

    const-string v8, "TRY WIFI on Sprint project"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_e

    .line 415
    :cond_7
    const-string v7, "Jerry"

    const-string v8, "Connection.java_handleMessage() Wifi is connected;"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 420
    move-object v4, v0

    .line 421
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #setter for: Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z
    invoke-static {v7, v10}, Lcom/android/mms/transport/Connection;->access$402(Lcom/android/mms/transport/Connection;Z)Z

    .line 431
    :cond_8
    :goto_1
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->bWiMaxEnable:Z
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$400(Lcom/android/mms/transport/Connection;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->bWifiEnable:Z
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$500(Lcom/android/mms/transport/Connection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 445
    :cond_9
    if-eqz v4, :cond_a

    .line 448
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isIpv6Connected()Z

    move-result v8

    #setter for: Lcom/android/mms/transport/Connection;->mIsIpv6Connected:Z
    invoke-static {v7, v8}, Lcom/android/mms/transport/Connection;->access$602(Lcom/android/mms/transport/Connection;Z)Z

    .line 449
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isIpv4Connected()Z

    move-result v8

    #setter for: Lcom/android/mms/transport/Connection;->mIsIpv4Connected:Z
    invoke-static {v7, v8}, Lcom/android/mms/transport/Connection;->access$702(Lcom/android/mms/transport/Connection;Z)Z

    .line 451
    const-string v7, "Jerry"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final info >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    new-instance v8, Lcom/android/mms/transport/NetworkSettings;

    iget-object v9, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/mms/transport/Connection;->access$900(Lcom/android/mms/transport/Connection;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/mms/transport/NetworkSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #setter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7, v8}, Lcom/android/mms/transport/Connection;->access$802(Lcom/android/mms/transport/Connection;Lcom/android/mms/transport/NetworkSettings;)Lcom/android/mms/transport/NetworkSettings;

    .line 456
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportProxySetByNAI()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 458
    const-string v7, "Connection"

    const-string v8, "check TYPE_MOBILE_DUN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v5, 0x0

    .line 460
    .local v5, info2:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mConnMgr:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$100(Lcom/android/mms/transport/Connection;)Landroid/net/ConnectivityManager;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 461
    if-eqz v5, :cond_b

    .line 462
    const-string v7, "Connection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "final info2 >"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$800(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/NetworkSettings;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 464
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$800(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/NetworkSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/transport/NetworkSettings;->clearProxySet()V

    .line 469
    .end local v5           #info2:Landroid/net/NetworkInfo;
    :cond_b
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$800(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/NetworkSettings;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$800(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/NetworkSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/transport/NetworkSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 470
    :cond_c
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #setter for: Lcom/android/mms/transport/Connection;->mSettings:Lcom/android/mms/transport/NetworkSettings;
    invoke-static {v7, v11}, Lcom/android/mms/transport/Connection;->access$802(Lcom/android/mms/transport/Connection;Lcom/android/mms/transport/NetworkSettings;)Lcom/android/mms/transport/NetworkSettings;

    goto/16 :goto_0

    .line 423
    :cond_d
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 426
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #setter for: Lcom/android/mms/transport/Connection;->bWifiEnable:Z
    invoke-static {v7, v10}, Lcom/android/mms/transport/Connection;->access$502(Lcom/android/mms/transport/Connection;Z)Z

    goto/16 :goto_1

    .line 434
    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_10

    .line 436
    :cond_f
    const-string v7, "Connection"

    const-string v8, "Continue waiting."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 439
    :cond_10
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-eq v7, v12, :cond_9

    .line 440
    :cond_11
    const-string v7, "Connection"

    const-string v8, "Continue waiting."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 475
    :cond_12
    iget-object v8, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    monitor-enter v8

    .line 476
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    const/4 v9, 0x0

    #setter for: Lcom/android/mms/transport/Connection;->mStatus:I
    invoke-static {v7, v9}, Lcom/android/mms/transport/Connection;->access$1002(Lcom/android/mms/transport/Connection;I)I

    .line 477
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 478
    const-string v7, "Jerry"

    const-string v9, "notifyAll"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 483
    .end local v0           #WiMaxInfo:Landroid/net/NetworkInfo;
    .end local v1           #WifiInfo:Landroid/net/NetworkInfo;
    .end local v2           #bRunWiMax:Z
    .end local v3           #bRunWifi:Z
    .end local v4           #info:Landroid/net/NetworkInfo;
    :pswitch_2
    iget-object v8, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    monitor-enter v8

    .line 484
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    invoke-virtual {v7}, Lcom/android/mms/transport/Connection;->stopMmsConnectivity()V

    .line 486
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$000(Lcom/android/mms/transport/Connection;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v7

    iget-object v9, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;
    invoke-static {v9}, Lcom/android/mms/transport/Connection;->access$1100(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/Connection$EventHandler;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/common/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$000(Lcom/android/mms/transport/Connection;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/common/NetworkConnectivityListener;->stopListening()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 492
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    const/4 v9, 0x0

    #setter for: Lcom/android/mms/transport/Connection;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;
    invoke-static {v7, v9}, Lcom/android/mms/transport/Connection;->access$002(Lcom/android/mms/transport/Connection;Lcom/android/common/NetworkConnectivityListener;)Lcom/android/common/NetworkConnectivityListener;

    .line 494
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    #getter for: Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;
    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$1100(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/Connection$EventHandler;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/transport/Connection$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Looper;->quit()V

    .line 495
    iget-object v7, p0, Lcom/android/mms/transport/Connection$EventHandler;->this$0:Lcom/android/mms/transport/Connection;

    const/4 v9, 0x0

    #setter for: Lcom/android/mms/transport/Connection;->mEventHandler:Lcom/android/mms/transport/Connection$EventHandler;
    invoke-static {v7, v9}, Lcom/android/mms/transport/Connection;->access$1102(Lcom/android/mms/transport/Connection;Lcom/android/mms/transport/Connection$EventHandler;)Lcom/android/mms/transport/Connection$EventHandler;

    .line 497
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/mms/transport/Connection;->access$1202(Lcom/android/mms/transport/Connection;)Lcom/android/mms/transport/Connection;

    .line 498
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 489
    :catch_0
    move-exception v7

    goto :goto_2

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

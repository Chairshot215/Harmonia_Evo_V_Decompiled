.class Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;
.super Landroid/os/Handler;
.source "SysLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/system/SysLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReloadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/system/SysLib;


# direct methods
.method public constructor <init>(Lcom/htc/omadm/libdo/system/SysLib;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;->this$0:Lcom/htc/omadm/libdo/system/SysLib;

    .line 492
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 493
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "m"

    .prologue
    .line 497
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 499
    :pswitch_0
    invoke-static {}, Lcom/htc/omadm/util/DMAgentConnector;->getSingleton()Lcom/htc/omadm/util/DMAgentConnector;

    move-result-object v3

    .line 501
    .local v3, dmAgent:Lcom/htc/omadm/util/DMAgentConnector;
    const/4 v1, 0x0

    .line 502
    .local v1, connectionResult:Z
    const/16 v2, 0xa

    .line 503
    .local v2, count:I
    :goto_1
    if-lez v2, :cond_1

    .line 504
    invoke-virtual {v3}, Lcom/htc/omadm/util/DMAgentConnector;->openXCMD()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 505
    const/4 v1, 0x1

    .line 523
    :cond_1
    if-eqz v1, :cond_0

    .line 525
    const-string v0, ":R:C020"

    .line 526
    .local v0, cmd:Ljava/lang/String;
    invoke-virtual {v3, v0}, Lcom/htc/omadm/util/DMAgentConnector;->sendCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 532
    .local v6, response:Ljava/lang/String;
    sget-object v7, Lcom/htc/omadm/util/DMAgentConnector;->cmdTY3:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/htc/omadm/util/DMAgentConnector;->changeTTY(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v3}, Lcom/htc/omadm/util/DMAgentConnector;->closeConnection()Z

    .line 535
    const/4 v7, 0x1

    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/omadm/libdo/system/SysLib$ReloadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 513
    .end local v0           #cmd:Ljava/lang/String;
    .end local v6           #response:Ljava/lang/String;
    :cond_2
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 519
    :catch_0
    move-exception v4

    .line 520
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 538
    .end local v1           #connectionResult:Z
    .end local v2           #count:I
    .end local v3           #dmAgent:Lcom/htc/omadm/util/DMAgentConnector;
    .end local v4           #e:Ljava/lang/Exception;
    :pswitch_1
    const-string v7, "SysLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dm.hfa after reload:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "dm.hfa"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_1
    const-string v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 550
    .local v5, phoneServ:Lcom/android/internal/telephony/ITelephony;
    const-string v7, "SysLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disableDataConnectivity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v7, "SysLib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableDataConnectivity:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 562
    .end local v5           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v4

    .line 563
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

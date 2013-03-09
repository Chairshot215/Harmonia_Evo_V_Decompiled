.class public Lcom/htc/syncagent/svc/HTCSyncBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HTCSyncBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x6

    .line 19
    const-string v4, "FDUI"

    const-string v5, "get broadcast."

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, action:Ljava/lang/String;
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "app ver = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x7f04

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v4, "FDUI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v4, "action.startPCTool"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 25
    const-string v4, "action.start.test"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 29
    :cond_0
    :try_start_0
    sget-boolean v4, Lcom/htc/syncagent/util/HTCUICommon;->bHasInit:Z

    if-nez v4, :cond_1

    .line 31
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/syncagent/util/HTCUICommon;->initialize(Landroid/content/Context;)V

    .line 33
    :cond_1
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/syncagent/util/HTCUICommon;->saveADBState(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const-string v4, "FDUI"

    const-string v5, "ready to start app"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 41
    sget v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    if-ne v4, v7, :cond_3

    .line 43
    :cond_2
    const-string v4, "FDUI"

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BroadcastReceiver: check current status = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    sget v6, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x0

    sput v4, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 49
    :cond_3
    const-string v4, "FDUI"

    const-string v5, "start activity"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/htc/syncagent/svc/HTCSyncBroadcastReceiver;->startMainActivity(Landroid/content/Context;)V

    .line 101
    :cond_4
    :goto_1
    return-void

    .line 34
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 36
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "FDUI"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v3           #e:Ljava/lang/Exception;
    :cond_5
    const-string v4, "action.stopPCTool"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 53
    sget-object v4, Lcom/htc/syncagent/util/HTCUICommon;->mSVC:Lcom/htc/syncagent/svc/HTCSyncService;

    if-nez v4, :cond_6

    .line 55
    const-string v4, "FDUI"

    const-string v5, "Service stopped"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_6
    sput v7, Lcom/htc/syncagent/util/HTCUICommon;->nCurrentStatus:I

    .line 60
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/syncagent/util/HTCUICommon;->isSyncThreadAlive()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 62
    const-string v4, "FDUI"

    const-string v5, "add close message"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    const-string v5, "STOP_APP"

    invoke-virtual {v4, v5}, Lcom/htc/syncagent/util/HTCUICommon;->addSyncMsg(Ljava/lang/String;)V

    .line 68
    :goto_2
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/syncagent/util/HTCUICommon;->stopStatusThread()V

    .line 69
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/syncagent/util/HTCUICommon;->stopSyncThread()V

    .line 73
    :try_start_1
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/syncagent/util/HTCUICommon;->revertADBState(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/syncagent/util/HTCUICommon;->updateADBFlag(Landroid/content/Context;)V

    goto :goto_1

    .line 66
    :cond_7
    const-string v4, "FDUI"

    const-string v5, "syncthread not alive"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 76
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FDUI"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/htc/syncagent/util/HTCUICommon;->updateADBFlag(Landroid/content/Context;)V

    goto :goto_1

    .line 78
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 79
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/htc/syncagent/util/HTCUICommon;->updateADBFlag(Landroid/content/Context;)V

    .line 80
    throw v4

    .line 81
    :cond_8
    const-string v4, "com.fd.httpd.syncend"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 83
    const-string v4, "FDUI"

    const-string v5, "get config action"

    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x0

    check-cast v2, [B

    .line 85
    .local v2, br:[B
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_9

    .line 89
    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 92
    :cond_9
    if-eqz v2, :cond_a

    array-length v4, v2

    if-lez v4, :cond_a

    .line 94
    invoke-static {}, Lcom/htc/syncagent/util/HTCUICommon;->getInstance()Lcom/htc/syncagent/util/HTCUICommon;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/syncagent/util/HTCUICommon;->writeConfigFile([B)V

    goto/16 :goto_1

    .line 97
    :cond_a
    const-string v4, "FDUI"

    .line 98
    const-string v5, "intent config byte array is empty"

    .line 97
    invoke-static {v4, v5}, Lcom/htc/syncagent/util/HTCUILog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startMainActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    const-class v1, Lcom/htc/syncagent/activity/HTCStatusActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method

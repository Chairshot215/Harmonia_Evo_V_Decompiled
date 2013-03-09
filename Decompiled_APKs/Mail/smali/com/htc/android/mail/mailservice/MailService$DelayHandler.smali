.class Lcom/htc/android/mail/mailservice/MailService$DelayHandler;
.super Landroid/os/Handler;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/mailservice/MailService;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/mailservice/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/MailService;Lcom/htc/android/mail/mailservice/MailService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1175
    invoke-direct {p0, p1}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;-><init>(Lcom/htc/android/mail/mailservice/MailService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    .line 1178
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1255
    :goto_0
    return-void

    .line 1180
    :pswitch_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v7}, Lcom/htc/android/mail/mailservice/MailService;->checkNetwork()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1181
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mIsWifiConnected:Z
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1800(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1182
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #calls: Lcom/htc/android/mail/mailservice/MailService;->setWifiLock()V
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$600(Lcom/htc/android/mail/mailservice/MailService;)V

    .line 1184
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    .line 1185
    .local v3, syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$1;

    invoke-direct {v8, p0, v3}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$1;-><init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1191
    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "MailService"

    const-string v9, "Still no Wifi"

    invoke-static {v7, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1194
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mPowerManagerService:Landroid/os/IPowerManager;
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1300(Lcom/htc/android/mail/mailservice/MailService;)Landroid/os/IPowerManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/os/IPowerManager;->timeSinceScreenOn()J

    move-result-wide v4

    .line 1195
    .local v4, time:J
    iget-object v9, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-nez v7, :cond_8

    const/4 v7, 0x1

    :goto_1
    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v9, v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    .end local v4           #time:J
    :cond_3
    :goto_2
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "MailService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mWasWakeupWifi is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsScreenOn is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v10}, Lcom/htc/android/mail/mailservice/MailService;->access$1400(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mWasScreenOn is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v10}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$1500()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1206
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #getter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7}, Lcom/htc/android/mail/mailservice/MailService;->access$1600(Lcom/htc/android/mail/mailservice/MailService;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1207
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WIFIIDLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1208
    .local v6, wifiIDle:Landroid/content/Intent;
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v7, v6}, Lcom/htc/android/mail/mailservice/MailService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1210
    .end local v6           #wifiIDle:Landroid/content/Intent;
    :cond_5
    invoke-static {v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1502(Z)Z

    .line 1212
    :cond_6
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mWasScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1602(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    .line 1214
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    .line 1215
    .restart local v3       #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->getStartId()I

    move-result v2

    .line 1216
    .local v2, startId:I
    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->isPushMail()Z

    move-result v1

    .line 1217
    .local v1, isPushMail:Z
    if-eqz v1, :cond_7

    .line 1218
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->getAccountId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->handlePushMailSyncError(Landroid/content/Context;J)V

    .line 1220
    :cond_7
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;

    invoke-direct {v8, p0, v2}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$2;-><init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .end local v1           #isPushMail:Z
    .end local v2           #startId:I
    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    .restart local v4       #time:J
    :cond_8
    move v7, v8

    .line 1195
    goto/16 :goto_1

    .line 1196
    .end local v4           #time:J
    :catch_0
    move-exception v0

    .line 1197
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1200
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_9
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "MailService"

    const-string v9, "mPowerManagerService is null"

    invoke-static {v7, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :cond_a
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    #setter for: Lcom/htc/android/mail/mailservice/MailService;->mIsScreenOn:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/MailService;->access$1402(Lcom/htc/android/mail/mailservice/MailService;Z)Z

    goto/16 :goto_2

    .line 1230
    :pswitch_1
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v7}, Lcom/htc/android/mail/mailservice/MailService;->checkNetwork()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1231
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    .line 1232
    .restart local v3       #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;

    invoke-direct {v8, p0, v3}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$3;-><init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1238
    .end local v3           #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    :cond_b
    invoke-static {}, Lcom/htc/android/mail/mailservice/MailService;->access$400()Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "MailService"

    const-string v8, "Still no 3G"

    invoke-static {v7, v8}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    :cond_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;

    .line 1240
    .restart local v3       #syncRunnable:Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;
    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->getStartId()I

    move-result v2

    .line 1241
    .restart local v2       #startId:I
    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->isPushMail()Z

    move-result v1

    .line 1242
    .restart local v1       #isPushMail:Z
    if-eqz v1, :cond_d

    .line 1243
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/MailService$DelayHandler;->this$0:Lcom/htc/android/mail/mailservice/MailService;

    invoke-virtual {v3}, Lcom/htc/android/mail/mailservice/MailService$SyncRunnable;->getAccountId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/htc/android/mail/mailservice/DirectPushService;->handlePushMailSyncError(Landroid/content/Context;J)V

    .line 1245
    :cond_d
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$4;

    invoke-direct {v8, p0, v2}, Lcom/htc/android/mail/mailservice/MailService$DelayHandler$4;-><init>(Lcom/htc/android/mail/mailservice/MailService$DelayHandler;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1178
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

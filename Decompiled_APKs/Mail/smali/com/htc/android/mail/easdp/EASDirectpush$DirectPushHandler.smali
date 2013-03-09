.class Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;
.super Landroid/os/Handler;
.source "EASDirectpush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/EASDirectpush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectPushHandler"
.end annotation


# instance fields
.field public heartbeat:I

.field public isPaused:Z

.field mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field mContext:Landroid/content/Context;

.field mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

.field mDirectpushStartIntent:Landroid/app/PendingIntent;

.field private mIsRunning:Z

.field mType:I

.field stoped:Z

.field final synthetic this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

.field public waitRestartAlarm:Z


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easdp/EASDirectpush;Landroid/content/Context;Landroid/os/Looper;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 5
    .parameter
    .parameter "context"
    .parameter "looper"
    .parameter "exAccount"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 874
    iput-object p1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    .line 875
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 865
    iput-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    .line 867
    iput-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 868
    iput-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    .line 869
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    .line 870
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->heartbeat:I

    .line 871
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->waitRestartAlarm:Z

    .line 872
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->stoped:Z

    .line 919
    iput-boolean v4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mIsRunning:Z

    .line 876
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mContext:Landroid/content/Context;

    .line 877
    iput-object p4, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 879
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.mail.intent.dp.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 880
    .local v0, intentStartDP:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.easdp.EASDirectpush"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v2, v2, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 882
    const-string v1, "exchangeAccount"

    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 883
    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v4, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDirectpushStartIntent:Landroid/app/PendingIntent;

    .line 885
    return-void
.end method

.method private doStartPushReceiver()V
    .locals 13

    .prologue
    .line 933
    const/4 v0, 0x1

    .line 934
    .local v0, bStopSelf:Z
    const/4 v6, 0x0

    .line 936
    .local v6, receiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mContext:Landroid/content/Context;

    const-string v10, "DIRECTPUSH"

    invoke-static {v9, v10}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLock(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v8

    .line 940
    .local v8, wakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    const v7, 0x2bf20

    .line 943
    .local v7, restartTime:I
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .local v1, changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-nez v9, :cond_4

    .line 946
    new-instance v9, Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v11, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v11}, Lcom/htc/android/mail/easdp/DirectPushReceiver;-><init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    .line 953
    :goto_0
    iget-object v6, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    .line 954
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->reset()V

    .line 956
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->getDirectpushItems(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$700(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;

    move-result-object v2

    .line 957
    .local v2, directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    array-length v9, v2

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->stoped:Z

    if-eqz v9, :cond_9

    .line 958
    :cond_0
    const/16 v5, 0x14

    .line 962
    .local v5, pingResult:I
    :goto_1
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    iget v10, v6, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    if-eq v9, v10, :cond_1

    .line 963
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v10, v6, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    iput v10, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    .line 964
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->updateHeartbeat(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$800(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 966
    :cond_1
    sparse-switch v5, :sswitch_data_0

    .line 994
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-wide/32 v11, 0x493e0

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    .end local v1           #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v5           #pingResult:I
    :goto_2
    :sswitch_0
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 1048
    if-eqz v6, :cond_2

    .line 1049
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->release()V

    .line 1050
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->reset()V

    .line 1051
    const/4 v6, 0x0

    .line 1054
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    if-nez v9, :cond_3

    .line 1056
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    :goto_3
    invoke-virtual {v9}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkStopSelf()V

    .line 1061
    :cond_3
    return-void

    .line 947
    .restart local v1       #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v9}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->isForceShutdown()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 948
    const-string v9, "EASDirectpush"

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v11, "mDPReceiver should not be shutdown."

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1047
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 1048
    if-eqz v6, :cond_5

    .line 1049
    throw v6

    .line 1050
    throw v6

    .line 1051
    const/4 v6, 0x0

    .line 1054
    :cond_5
    if-eqz v0, :cond_3

    iget-boolean v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    if-nez v9, :cond_3

    .line 1056
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    goto :goto_3

    .line 951
    :cond_6
    :try_start_2
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    invoke-virtual {v9, v10}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->init(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 997
    .end local v1           #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 998
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 999
    invoke-static {v3}, Lcom/htc/android/mail/easdp/EASDirectpush;->getErrorCode(Ljava/lang/Exception;)I

    move-result v4

    .line 1000
    .local v4, errorCode:I
    const-string v9, "EASDirectpush"

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception, errorcode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1003
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->isForceShutdown()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    if-eqz v9, :cond_c

    .line 1047
    :cond_7
    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 1048
    if-eqz v6, :cond_8

    .line 1049
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->release()V

    .line 1050
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->reset()V

    .line 1051
    const/4 v6, 0x0

    .line 1054
    :cond_8
    if-eqz v0, :cond_3

    iget-boolean v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    if-nez v9, :cond_3

    .line 1056
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    goto :goto_3

    .line 960
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #errorCode:I
    .restart local v1       #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    :cond_9
    :try_start_4
    invoke-virtual {v6, v2, v1, v8}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->startPing([Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;Ljava/util/ArrayList;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)I

    move-result v5

    .restart local v5       #pingResult:I
    goto/16 :goto_1

    .line 969
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->sendPingResultBroadcast()V

    .line 970
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->processDPChangeList(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V
    invoke-static {v9, v10, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$900(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1047
    .end local v1           #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v5           #pingResult:I
    :catchall_0
    move-exception v9

    invoke-static {v8}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 1048
    if-eqz v6, :cond_a

    .line 1049
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->release()V

    .line 1050
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->reset()V

    .line 1051
    const/4 v6, 0x0

    .line 1054
    :cond_a
    if-eqz v0, :cond_b

    iget-boolean v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    if-nez v10, :cond_b

    .line 1056
    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    invoke-virtual {v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->checkStopSelf()V

    .line 1047
    :cond_b
    throw v9

    .line 974
    .restart local v1       #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .restart local v5       #pingResult:I
    :sswitch_2
    :try_start_5
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->sendPingResultBroadcast()V

    .line 975
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v12, 0x0

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->syncMailFolderAndUpdAccount(JZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$1000(Lcom/htc/android/mail/easdp/EASDirectpush;JZ)V

    goto/16 :goto_2

    .line 979
    :sswitch_3
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto/16 :goto_2

    .line 983
    :sswitch_4
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto/16 :goto_2

    .line 987
    :sswitch_5
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 1009
    .end local v1           #changedCols:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #directpushItems:[Lcom/htc/android/mail/easdp/EASDirectpush$DirectpushItem;
    .end local v5           #pingResult:I
    .restart local v3       #e:Ljava/lang/Exception;
    .restart local v4       #errorCode:I
    :cond_c
    :try_start_6
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v9, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    iget v10, v6, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    if-eq v9, v10, :cond_d

    .line 1010
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v10, v6, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    iput v10, v9, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->heartBeatInterval:I

    .line 1011
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->updateHeartbeat(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$800(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    .line 1013
    :cond_d
    const/16 v9, 0x204

    if-eq v4, v9, :cond_e

    const/16 v9, 0x205

    if-eq v4, v9, :cond_e

    const/16 v9, 0x207

    if-eq v4, v9, :cond_e

    const/16 v9, 0x206

    if-ne v4, v9, :cond_10

    .line 1021
    :cond_e
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v12, 0x1

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->syncMailFolderAndUpdAccount(JZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$1000(Lcom/htc/android/mail/easdp/EASDirectpush;JZ)V

    .line 1030
    :cond_f
    :goto_4
    invoke-virtual {v6}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->isCancelByAbort()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1031
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$400(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto/16 :goto_2

    .line 1022
    :cond_10
    const/16 v9, 0x191

    if-eq v4, v9, :cond_11

    const/16 v9, 0x190

    if-ne v4, v9, :cond_f

    .line 1027
    :cond_11
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v12, 0x1

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->syncMailFolderAndUpdAccount(JZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$1000(Lcom/htc/android/mail/easdp/EASDirectpush;JZ)V

    goto :goto_4

    .line 1032
    :cond_12
    invoke-static {v4}, Lcom/htc/android/mail/easdp/EASDirectpush;->isNetworkException(I)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1035
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-boolean v10, v10, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->syncWhileRoaming:Z

    invoke-static {v9, v10}, Lcom/htc/android/mail/easdp/EASDirectpush$NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1036
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-wide/32 v11, 0x1d4c0

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V

    goto/16 :goto_2

    .line 1038
    :cond_13
    const-string v9, "EASDirectpush"

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v11, "doStartPushReceiver: Network is not ready"

    invoke-static {v9, v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 1039
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->isPaused:Z

    goto/16 :goto_2

    .line 1043
    :cond_14
    iget-object v9, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    iget-object v10, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-wide/32 v11, 0x493e0

    #calls: Lcom/htc/android/mail/easdp/EASDirectpush;->startDirectPush(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    invoke-static {v9, v10, v11, v12}, Lcom/htc/android/mail/easdp/EASDirectpush;->access$300(Lcom/htc/android/mail/easdp/EASDirectpush;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 966
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x5 -> :sswitch_4
        0x7 -> :sswitch_2
        0xb -> :sswitch_5
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendPingResultBroadcast()V
    .locals 3

    .prologue
    .line 925
    const-string v0, "EASDirectpush"

    iget-object v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    const-string v2, "- sendPingResultBroadcast(), com.htc.cs.pushmailsync"

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->this$0:Lcom/htc/android/mail/easdp/EASDirectpush;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.cs.pushmailsync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/easdp/EASDirectpush;->sendBroadcast(Landroid/content/Intent;)V

    .line 927
    return-void
.end method


# virtual methods
.method public getAccount()Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 901
    const-string v1, "EASDirectpush"

    iget-object v2, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 902
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 917
    :goto_0
    return-void

    .line 905
    :pswitch_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    :try_start_1
    invoke-direct {p0}, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->doStartPushReceiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 912
    :goto_1
    iput-boolean v5, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mIsRunning:Z

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 912
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-boolean v5, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mIsRunning:Z

    throw v1

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mIsRunning:Z

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->stoped:Z

    .line 891
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/htc/android/mail/easdp/EASDirectpush$DirectPushHandler;->mDPReceiver:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-virtual {v0}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->stopPing()V

    .line 894
    :cond_0
    return-void
.end method

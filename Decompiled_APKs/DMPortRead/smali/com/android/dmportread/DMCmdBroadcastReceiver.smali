.class public Lcom/android/dmportread/DMCmdBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMCmdBroadcastReceiver.java"


# static fields
.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    sget-object v1, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 157
    sget-object v1, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    sget-object v0, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 163
    :cond_0
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 38
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x94

    if-ne v6, v7, :cond_0

    .line 41
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v6, "/data/data/com.android.dmportread/boot"

    invoke-direct {v3, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 42
    .local v3, fstream:Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    .local v2, fout:Ljava/io/BufferedWriter;
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 45
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2           #fout:Ljava/io/BufferedWriter;
    .end local v3           #fstream:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, i:Landroid/content/Intent;
    const-class v6, Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v4, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    .end local v4           #i:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "DMPORTC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set boot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.dmcommandservice.START"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    const-string v6, "DMCmdSvs"

    const-string v7, "receive start intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v5, startBT:Landroid/content/Intent;
    const-string v6, "ACTION_DIAG"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 65
    .end local v5           #startBT:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.dmcommandservice.STOP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 67
    const-string v6, "DMCmdSvs"

    const-string v7, "receive stop intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v6, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DM_SMS_SENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    const-string v6, "SmsSent"

    const-string v7, "DMCmdBroadcastReceiver received Message sent action"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-class v6, Lcom/android/dmportread/DMCommandService;

    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    invoke-static {p1, p2}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 77
    new-instance v0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;-><init>(Lcom/android/dmportread/DMCmdBroadcastReceiver;)V

    .line 131
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 133
    .end local v0           #aThread:Ljava/lang/Thread;
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.dmcommandservice.BTSTART"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 135
    const-string v6, "DMCmdSvs"

    const-string v7, "receive start bt intent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/dmportread/DMCommandService;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .restart local v5       #startBT:Landroid/content/Intent;
    const-string v6, "ACTION_BTDIAG"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1
.end method

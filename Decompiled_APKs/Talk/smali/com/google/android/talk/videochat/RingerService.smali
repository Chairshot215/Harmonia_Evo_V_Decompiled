.class public Lcom/google/android/talk/videochat/RingerService;
.super Landroid/app/Service;
.source "RingerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;
    }
.end annotation


# instance fields
.field private mCallStateClient:Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;

.field private mHandler:Landroid/os/Handler;

.field private mRemoteBareJid:Ljava/lang/String;

.field private mRinger:Lcom/google/android/talk/videochat/CallRinger;

.field private mRingerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mRingerLock:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/RingerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mRemoteBareJid:Ljava/lang/String;

    return-object v0
.end method

.method public static forceStopRinger(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.videochat.ACTION_STOP_RINGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    const-class v1, Lcom/google/android/talk/videochat/RingerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 160
    return-void
.end method

.method public static startServiceForIncomingRinger(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.videochat.ACTION_START_INCOMING_RINGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v1, "remote_bare_jid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 152
    const-class v1, Lcom/google/android/talk/videochat/RingerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 154
    return-void
.end method

.method public static startServiceForOutgoingRinger(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.talk.videochat.ACTION_START_OUTGOING_RINGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v1, "remote_bare_jid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-class v1, Lcom/google/android/talk/videochat/RingerService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method

.method private stopRingAndFinish(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/android/talk/videochat/RingerService;->mRingerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "Talk:RingerService"

    const-string v2, "RingerService: stopRing"

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    invoke-interface {v0}, Lcom/google/android/talk/videochat/CallRinger;->stopRing()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    .line 135
    :cond_0
    const-string v0, "Talk:RingerService"

    const-string v2, "RingerService: stopSelf"

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, p1}, Lcom/google/android/talk/videochat/RingerService;->stopSelf(I)V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    const-string v0, "Talk:RingerService"

    const-string v1, "RingerService onCreate"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;

    invoke-direct {v0, p0, p0}, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;-><init>(Lcom/google/android/talk/videochat/RingerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mCallStateClient:Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;

    .line 72
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mCallStateClient:Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;->startListening()V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 124
    const-string v0, "Talk:RingerService"

    const-string v1, "RingerService onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/google/android/talk/videochat/RingerService;->mCallStateClient:Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RingerService$RingerCallStateClient;->stopListening()V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 79
    const/4 v3, 0x2

    .line 81
    .local v3, retVal:I
    if-nez p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/RingerService;->stopSelf()V

    .line 113
    :goto_0
    return v3

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, action:Ljava/lang/String;
    const-string v4, "Talk:RingerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStartCommand: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "com.google.android.talk.videochat.ACTION_STOP_RINGER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-direct {p0, p3}, Lcom/google/android/talk/videochat/RingerService;->stopRingAndFinish(I)V

    goto :goto_0

    .line 92
    :cond_1
    iget-object v5, p0, Lcom/google/android/talk/videochat/RingerService;->mRingerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 93
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    if-nez v4, :cond_3

    .line 97
    const-string v4, "com.google.android.talk.videochat.ACTION_START_OUTGOING_RINGER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    const-string v4, "remote_bare_jid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRemoteBareJid:Ljava/lang/String;

    .line 99
    new-instance v4, Lcom/google/android/talk/videochat/OutgoingCallRinger;

    iget-object v6, p0, Lcom/google/android/talk/videochat/RingerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6}, Lcom/google/android/talk/videochat/OutgoingCallRinger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    .line 105
    :cond_2
    :goto_1
    const-string v4, "Talk:RingerService"

    const-string v6, "RingerService: startRing"

    invoke-static {v4, v6}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    if-eqz v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;

    invoke-interface {v4}, Lcom/google/android/talk/videochat/CallRinger;->startRing()V

    .line 110
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 100
    :cond_4
    :try_start_1
    const-string v4, "com.google.android.talk.videochat.ACTION_START_INCOMING_RINGER"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const-string v4, "account_id"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 102
    .local v0, accountId:J
    const-string v4, "remote_bare_jid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRemoteBareJid:Ljava/lang/String;

    .line 103
    new-instance v4, Lcom/google/android/talk/videochat/IncomingCallRinger;

    iget-object v6, p0, Lcom/google/android/talk/videochat/RingerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v6, v0, v1}, Lcom/google/android/talk/videochat/IncomingCallRinger;-><init>(Landroid/content/Context;Landroid/os/Handler;J)V

    iput-object v4, p0, Lcom/google/android/talk/videochat/RingerService;->mRinger:Lcom/google/android/talk/videochat/CallRinger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

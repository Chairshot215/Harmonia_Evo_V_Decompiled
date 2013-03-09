.class public Lcom/google/android/gsf/gtalkservice/ReconnectManager;
.super Ljava/lang/Object;
.source "ReconnectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEndpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/Endpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mInMobileHipriorityMode:Z

.field private mInitialReconnectDelay:J

.field mLastInetReportNetworkType:I

.field mLastInetReportStatus:I

.field mLastInetReportSuccessful:Z

.field mLastInetReportTs:J

.field private mLastMobileNetworkOutageTs:J

.field private mLastNetworkAvailable:Z

.field private mLastNetworkBroadcastTs:J

.field private mLock:Ljava/lang/Object;

.field private mMainEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

.field private mMaxReconnectDelay:J

.field mNetworkState:Landroid/net/NetworkInfo$State;

.field private mNetworkSuspended:Z

.field mNetworkType:I

.field mNotifyNetworkState:Landroid/net/NetworkInfo$State;

.field mNotifyNetworkType:I

.field private mRandomGenerator:Ljava/util/Random;

.field private mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mReconnectAlarmSet:Z

.field private mReconnectBackoffRateMultiplier:D

.field private mReconnectDelay:J

.field private mWifiDisconnectedTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 49
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 53
    sget-object v2, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    .line 66
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLock:Ljava/lang/Object;

    .line 69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    .line 79
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    .line 89
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    .line 90
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearNetworkOutageTimestamp()V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->initConnectionState()V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, networkType:I
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 101
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 104
    :cond_0
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(ZI)V

    .line 107
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 109
    new-instance v2, Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mContext:Landroid/content/Context;

    const-string v4, "GTALK_CONN_ALARM"

    new-instance v5, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 114
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v3, "com.google.android.intent.action.GTALK_RECONNECT"

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->handleAlarmCallback()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/ReconnectManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkThrottleReconnect(JJ)Z
    .locals 7
    .parameter "wifiDisconnectTimestamp"
    .parameter "airplaneModeTurnedOffTimestamp"

    .prologue
    const/4 v2, 0x0

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 394
    .local v0, now:J
    sub-long v3, v0, p1

    const-wide/16 v5, 0x4e20

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 405
    :cond_0
    :goto_0
    return v2

    .line 400
    :cond_1
    sub-long v3, v0, p3

    const-wide/32 v5, 0xea60

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 404
    const-string v2, "GTalkService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "checkThrottleReconnect = true"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 405
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearNetworkOutageTimestamp()V
    .locals 2

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    .line 374
    return-void
.end method

.method private handleAlarmCallback()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$2;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 195
    return-void
.end method

.method private isWanMobileNetwork(I)Z
    .locals 2
    .parameter "networkType"

    .prologue
    const/4 v0, 0x1

    .line 612
    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 725
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ReconnectMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V
    .locals 9
    .parameter "task"
    .parameter "metaData"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v5

    .line 148
    .local v5, mainEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v5, :cond_1

    .line 149
    const-string v7, "GTalkService"

    const-string v8, "runTaskForEndpoints: mainEndpoint not found, bail"

    invoke-static {v7, v8}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-interface {p1, v5, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    .line 155
    const/4 v6, 0x0

    .line 156
    .local v6, singleConnection:Lcom/google/android/gsf/gtalkservice/Endpoint;
    const/4 v3, 0x0

    .line 158
    .local v3, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 163
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-object v6, v0

    .line 167
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    if-eqz v6, :cond_3

    .line 170
    invoke-interface {p1, v6, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    goto :goto_0

    .line 165
    :cond_2
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    .local v4, listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    move-object v3, v4

    .end local v4           #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    .restart local v3       #listCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gsf/gtalkservice/Endpoint;>;"
    goto :goto_1

    .line 167
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 172
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 173
    .local v1, connection:Lcom/google/android/gsf/gtalkservice/Endpoint;
    invoke-interface {p1, v1, p2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;->run(Lcom/google/android/gsf/gtalkservice/Endpoint;I)V

    goto :goto_2
.end method

.method private setConnectionError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$4;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 230
    return-void
.end method

.method private setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V
    .locals 2
    .parameter "networkState"
    .parameter "networkType"

    .prologue
    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInternalNetworkState: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 619
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 620
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 621
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    .line 622
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldResetReconnectTimer()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v0

    .line 248
    .local v0, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v0, :cond_1

    .line 249
    const-string v4, "GTalkService"

    const-string v5, "[ReconnectMgr] shouldResetReconnectTimer: no connection!"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    :goto_0
    return v3

    .line 253
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getLastConnectionAttemptSuccessful()Z

    move-result v1

    .line 254
    .local v1, lastAttemptSuccessful:Z
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->wasLastConnectionRemainConnectedForLongEnough()Z

    move-result v2

    .line 257
    .local v2, lastConnectionWasOfMininumDuration:Z
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 258
    .local v3, retVal:Z
    :cond_2
    if-nez v3, :cond_0

    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldResetReconnectTimer: lastConnectionWasOfMininumDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lastAttemptSuccessful="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .parameter "endpoint"

    .prologue
    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    monitor-exit p0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelReconnectAlarm()V
    .locals 2

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v0, :cond_1

    .line 353
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    const-string v0, "cancelReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 357
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->stop()V

    .line 359
    :cond_1
    monitor-exit p0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearReconnectAlarm()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "clearReconnectAlarm"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 367
    :cond_0
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->clearAlarm()V

    .line 369
    monitor-exit p0

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 12
    .parameter "out"

    .prologue
    const-wide/16 v10, 0x3e8

    .line 685
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 686
    .local v5, now:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReconnectManager (now="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 689
    .local v0, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v0, :cond_2

    .line 690
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 692
    const-string v7, "-------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v3

    .line 694
    .local v3, nextReconnectTime:J
    sub-long v1, v3, v5

    .line 695
    .local v1, diff:J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    .line 696
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next reconnect alarm will trigger in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    div-long v8, v1, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    .end local v1           #diff:J
    .end local v3           #nextReconnectTime:J
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network state notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active network type (polled): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "active network state (polled): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    if-eqz v7, :cond_0

    .line 712
    const-string v7, "network is suspended"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 714
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current network available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isNetworkAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InMobileHipriMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Last Inet report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportSuccessful:Z

    if-eqz v7, :cond_3

    const-string v7, "successful"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", netType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    sub-long v8, v5, v8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s ago"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    return-void

    .line 699
    .restart local v1       #diff:J
    .restart local v3       #nextReconnectTime:J
    :cond_1
    const-string v7, "No reconnect alarm set"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    .end local v1           #diff:J
    .end local v3           #nextReconnectTime:J
    :cond_2
    const-string v7, "null alarm!"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 717
    :cond_3
    const-string v7, "failed"

    goto :goto_1
.end method

.method public getInitialDelay()J
    .locals 2

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    return-wide v0
.end method

.method public getLastNetworkAvailable()Z
    .locals 1

    .prologue
    .line 654
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v0
.end method

.method public getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    return-object v0
.end method

.method public getNetworkState()Landroid/net/NetworkInfo$State;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    return v0
.end method

.method public getReconnectTime()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Alarm;->getNextAlarmTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public initConnectionState()V
    .locals 0

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    .line 643
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 2

    .prologue
    .line 625
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 626
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public networkStateChanged(Landroid/net/NetworkInfo;JJ)V
    .locals 24
    .parameter "notifyNetworkInfo"
    .parameter "airplaneModeTurnedOnTimeStamp"
    .parameter "airplaneModeTurnedOffTimeStamp"

    .prologue
    .line 431
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v17

    .line 432
    .local v17, notifyNetworkType:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v16

    .line 433
    .local v16, notifyNetworkState:Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 434
    .local v5, activeNetworkInfo:Landroid/net/NetworkInfo;
    const/4 v6, -0x1

    .line 435
    .local v6, activeNetworkType:I
    const/4 v9, 0x0

    .line 437
    .local v9, connectionState:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkBroadcastTs:J

    .line 438
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkState:Landroid/net/NetworkInfo$State;

    .line 439
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNotifyNetworkType:I

    .line 441
    if-eqz v5, :cond_1

    .line 442
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 443
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    .line 448
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v12

    .line 449
    .local v12, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v12, :cond_2

    .line 450
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 603
    :cond_0
    :goto_1
    return-void

    .line 445
    .end local v12           #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    goto :goto_0

    .line 454
    .restart local v12       #endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    :cond_2
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v9

    .line 456
    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 457
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 459
    if-eqz v6, :cond_3

    const/16 v20, 0x6

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 461
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->ensureRouteOverMobileHipriNetworkInterface()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    .line 463
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 464
    const-string v20, "networkStateChanged for MOBILE_HIPRI: set MOBILE_HIPRI=true"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 487
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    .line 490
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 491
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 492
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged: active_net_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", current_net_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", in MOBILE_HIPRI, ignore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :cond_5
    const-string v20, "networkStateChanged for MOBILE_HIPRI: MOBILE_HIPRI=false, ensureRouteOverMobileHipriNetworkInterface() failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 470
    :cond_6
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 472
    const-string v20, "networkStateChanged: MOBILE_HIPRI disconnected"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 473
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    goto :goto_2

    .line 475
    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 476
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 479
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    goto/16 :goto_2

    .line 480
    :cond_8
    sget-object v20, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 482
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    goto/16 :goto_2

    .line 496
    :cond_9
    const-string v20, "networkStateChanged: reset MOBILE_HIPRI to false"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 497
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInMobileHipriorityMode:Z

    .line 501
    :cond_a
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 502
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged (has active network): active_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", curr_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", curr_network_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mcs_conn_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 509
    :cond_b
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 510
    .local v7, activeState:Landroid/net/NetworkInfo$State;
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    .line 511
    .local v14, isConnecting:Z
    :goto_3
    if-eqz v12, :cond_e

    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->isConnected()Z

    move-result v13

    .line 512
    .local v13, isConnected:Z
    :goto_4
    const/16 v18, 0x0

    .line 516
    .local v18, shouldThrottleReconnect:Z
    if-nez v14, :cond_c

    if-eqz v13, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkState:Landroid/net/NetworkInfo$State;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    if-ne v7, v0, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v6, v0, :cond_f

    .line 518
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "### networkStateChanged: active and curr network type/state are the same("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "), ignore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 522
    if-eqz v13, :cond_0

    .line 523
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    goto/16 :goto_1

    .line 510
    .end local v13           #isConnected:Z
    .end local v14           #isConnecting:Z
    .end local v18           #shouldThrottleReconnect:Z
    :cond_d
    const/4 v14, 0x0

    goto :goto_3

    .line 511
    .restart local v14       #isConnecting:Z
    :cond_e
    const/4 v13, 0x0

    goto :goto_4

    .line 528
    .restart local v13       #isConnected:Z
    .restart local v18       #shouldThrottleReconnect:Z
    :cond_f
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v20

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 531
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isWanMobileNetwork(I)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 532
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mWifiDisconnectedTimeStamp:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->checkThrottleReconnect(JJ)Z

    move-result v18

    .line 536
    :cond_10
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 538
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 541
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mNetworkSuspended:Z

    .line 542
    .local v15, networkWasSuspended:Z
    if-nez v13, :cond_12

    if-eqz v18, :cond_12

    if-eqz v15, :cond_14

    .line 549
    :cond_12
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    .line 552
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 573
    :cond_13
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearNetworkOutageTimestamp()V

    goto/16 :goto_1

    .line 553
    :cond_14
    invoke-virtual {v9}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 556
    const/16 v19, 0x0

    .line 558
    .local v19, useLongDelay:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->isWanMobileNetwork(I)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_15

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v22, v0

    sub-long v10, v20, v22

    .line 560
    .local v10, diff:J
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/Account;->getShortNetworkDowntime()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v10, v20

    if-lez v20, :cond_15

    .line 561
    const/16 v19, 0x1

    .line 562
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged: mLastMobileNetworkOutageTs="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", diff="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", use long delay"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 569
    .end local v10           #diff:J
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 570
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->retryConnection(Z)V

    goto/16 :goto_5

    .line 575
    .end local v7           #activeState:Landroid/net/NetworkInfo$State;
    .end local v13           #isConnected:Z
    .end local v14           #isConnecting:Z
    .end local v15           #networkWasSuspended:Z
    .end local v18           #shouldThrottleReconnect:Z
    .end local v19           #useLongDelay:Z
    :cond_16
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 576
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "networkStateChanged (no active network): , notify_network_type="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", notify_network_state="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 581
    :cond_17
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_18

    .line 587
    sget-object v20, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1a

    const-wide/16 v20, 0x0

    cmp-long v20, p2, v20

    if-lez v20, :cond_1a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    sub-long v20, v20, p2

    const-wide/16 v22, 0x4e20

    cmp-long v20, v20, v22

    if-gez v20, :cond_1a

    const/4 v8, 0x1

    .line 590
    .local v8, airplaneMode:Z
    :goto_6
    if-nez v8, :cond_18

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastMobileNetworkOutageTs:J

    .line 595
    .end local v8           #airplaneMode:Z
    :cond_18
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setConnectionError(I)V

    .line 598
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 599
    const-string v20, "GTalkService"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_19

    const-string v20, "network down, force close conn"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 600
    :cond_19
    invoke-virtual {v12}, Lcom/google/android/gsf/gtalkservice/Endpoint;->forceCloseConnection()V

    goto/16 :goto_1

    .line 587
    :cond_1a
    const/4 v8, 0x0

    goto :goto_6
.end method

.method public pollNetworkAvailable()Z
    .locals 3

    .prologue
    .line 630
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 631
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 632
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 633
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    .line 638
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    return v1

    .line 635
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastNetworkAvailable:Z

    .line 636
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setInternalNetworkState(Landroid/net/NetworkInfo$State;I)V

    goto :goto_0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    if-ne p1, v0, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setMainEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V

    .line 134
    :goto_0
    monitor-exit p0

    .line 135
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mEndpoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reportInetCondition(Z)V
    .locals 1
    .parameter "online"

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(ZI)V

    .line 659
    return-void
.end method

.method public reportInetCondition(ZI)V
    .locals 9
    .parameter "online"
    .parameter "networkType"

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 664
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### report Inet status: online="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", networkType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    if-eqz p1, :cond_0

    const/16 v1, 0x64

    .line 668
    .local v1, status:I
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "reportInetCondition"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 671
    .local v0, m:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 678
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    :try_start_2
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportStatus:I

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportTs:J

    .line 680
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportNetworkType:I

    .line 681
    monitor-exit v4

    .line 682
    return-void

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "GTalkService"

    const-string v5, "calling reportInetCondition failed"

    invoke-static {v3, v5, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 675
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mLastInetReportSuccessful:Z

    goto :goto_0

    .line 681
    .end local v1           #status:I
    .end local v2           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public resetReconnectionTimer(Z)V
    .locals 9
    .parameter "useLongDelay"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x3

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getMainEndpoint()Lcom/google/android/gsf/gtalkservice/Endpoint;

    move-result-object v1

    .line 273
    .local v1, endpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;
    if-nez v1, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    iget-wide v4, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 279
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReconnDelay set to initial value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 288
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayLong()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantLong()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 291
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use long initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 302
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxReconnectDelay()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    .line 303
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectBackoffRateMultiplier()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectBackoffRateMultiplier:D

    .line 304
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    goto :goto_0

    .line 295
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMinReconnectDelayShort()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mRandomGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getReconnectVariantShort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    .line 297
    const-string v2, "GTalkService"

    invoke-static {v2, v6}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use short initial value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mInitialReconnectDelay:J

    div-long/2addr v3, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public retryConnection(Z)V
    .locals 2
    .parameter "retryNow"

    .prologue
    .line 198
    new-instance v1, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager$3;-><init>(Lcom/google/android/gsf/gtalkservice/ReconnectManager;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->runTaskForEndpoints(Lcom/google/android/gsf/gtalkservice/ReconnectManager$EndpointTask;I)V

    .line 222
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMainEndpoint(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 0
    .parameter "endpoint"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMainEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 143
    return-void
.end method

.method public setReconnectAlarm()V
    .locals 11

    .prologue
    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    iget-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    if-eqz v6, :cond_0

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 311
    .local v4, now:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v0

    .line 312
    .local v0, nextAlarmTime:J
    cmp-long v6, v0, v4

    if-gez v6, :cond_5

    .line 313
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "alarm failed to fire: alarmTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", now="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 322
    .end local v0           #nextAlarmTime:J
    .end local v4           #now:J
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarmSet:Z

    .line 324
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->shouldResetReconnectTimer()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 326
    const-string v6, "setReconAlarm: reset timer"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 328
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 331
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReconAlarm: retry in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 333
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->isStarted()Z

    move-result v6

    if-nez v6, :cond_3

    .line 335
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->initAlarm()V

    .line 337
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gsf/gtalkservice/Alarm;->setTimer(J)V

    .line 338
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Alarm;->start()V

    .line 342
    :cond_3
    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectBackoffRateMultiplier:D

    mul-double/2addr v6, v8

    double-to-long v2, v6

    .line 343
    .local v2, nextDelay:J
    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_7

    .end local v2           #nextDelay:J
    :goto_0
    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    .line 344
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setReconAlarm: set delay to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mReconnectDelay:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 347
    :cond_4
    monitor-exit p0

    .line 348
    :goto_1
    return-void

    .line 315
    .restart local v0       #nextAlarmTime:J
    .restart local v4       #now:J
    :cond_5
    const-string v6, "GTalkService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 316
    const-string v6, "setReconAlarm: alarm already set"

    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->log(Ljava/lang/String;)V

    .line 318
    :cond_6
    monitor-exit p0

    goto :goto_1

    .line 347
    .end local v0           #nextAlarmTime:J
    .end local v4           #now:J
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 343
    .restart local v2       #nextDelay:J
    :cond_7
    :try_start_1
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->mMaxReconnectDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

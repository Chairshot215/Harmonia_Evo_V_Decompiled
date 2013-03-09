.class public Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;
.super Lcom/google/android/gsf/gtalkservice/Endpoint;
.source "AndroidEndpoint.java"


# instance fields
.field private d2cmWhitelist:[Ljava/lang/String;

.field private enableD2cm:I

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

.field protected mLastDataMessageReceivedTs:J

.field protected mLastDataMessageSentTs:J


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V
    .locals 1
    .parameter "service"
    .parameter "account"
    .parameter "workerLooper"

    .prologue
    .line 68
    invoke-direct {p0, p1, p3}, Lcom/google/android/gsf/gtalkservice/Endpoint;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 69
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 70
    return-void
.end method

.method private asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 412
    new-instance v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;

    const-string v1, "close-XMPP-connection"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;-><init>(Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint$1;->start()V

    .line 417
    return-void
.end method

.method private clearHeartbeatAlarm()V
    .locals 1

    .prologue
    .line 506
    monitor-enter p0

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->clearAlarm()V

    .line 511
    :cond_0
    monitor-exit p0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getJidResourceFromSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getJidResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initHeartbeatAlarm()V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getActiveHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getIdleHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSyncHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getDefaultHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHeartbeatAckTimeout()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    new-instance v0, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    .line 492
    :cond_0
    return-void
.end method

.method private login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "connection"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, username:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 332
    .local v5, authToken:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, deviceId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUseAndroidId()Z

    move-result v3

    .line 334
    .local v3, useAndroidId:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getLoginSettings()Ljava/util/Map;

    move-result-object v19

    .line 336
    .local v19, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 341
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "gtalk_compress2"

    const/4 v8, 0x0

    invoke-static {v2, v6, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 345
    .local v16, compress:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    .line 346
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 349
    :cond_0
    const-wide/16 v9, -0x1

    .line 350
    .local v9, rmqLastReceived:J
    const/4 v12, 0x0

    .line 351
    .local v12, initialS2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v20

    .line 353
    .local v20, rmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processAndRetrieveInitialS2dIds()Ljava/util/List;

    move-result-object v12

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->initHeartbeatAlarm()V

    .line 358
    const/16 v18, 0x0

    .line 359
    .local v18, upload:Lorg/jivesoftware/smack/packet/HeartbeatStat;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->shouldUploadHeartbeatStat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v18

    .line 361
    const-string v2, "GTalkService/c"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Heartbeat stat uploaded: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v14

    .line 366
    .local v14, accountId:J
    const-string v2, "GTalkService/c"

    const-string v6, "AndroidEndpoint.login"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v19}, Lorg/jivesoftware/smack/XMPPConnection;->login(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;ZJIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->initStat(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 384
    const-string v2, "GTalkService/c"

    const-string v6, "AndroidEndpoint.login successful"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 7
    .parameter "host"
    .parameter "port"
    .parameter "domain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-gez p2, :cond_1

    .line 299
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EMPTY HOSTNAME or INVALID PORT("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cannot make connection!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->loge(Ljava/lang/String;)V

    .line 300
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastConnectionAttemptSuccessful:Z

    .line 301
    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    new-instance v2, Ljava/net/UnknownHostException;

    const-string v4, "empty hostname/invalid port"

    invoke-direct {v2, v4}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 305
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gtalk_ssl_handshake_timeout_ms"

    const v4, 0xea60

    invoke-static {v1, v2, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 308
    .local v3, sslHandshakeTimeout:I
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeXmppConnection: sslhandshake timeout="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Landroid/net/SSLSessionCache;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 314
    .local v6, socketFactory:Ljavax/net/SocketFactory;
    new-instance v0, Lorg/jivesoftware/smack/SSLXMPPConnection;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/SSLXMPPConnection;-><init>(Ljava/lang/String;IIZLjava/lang/String;Ljavax/net/SocketFactory;)V

    .line 318
    .local v0, connection:Lorg/jivesoftware/smack/SSLXMPPConnection;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setDefaultAccountId(J)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->bumpConnectionsAttemptedCount()V

    .line 320
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 321
    invoke-virtual {v0}, Lorg/jivesoftware/smack/SSLXMPPConnection;->connect()V

    .line 325
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v4, 0x64

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setLocalConnectionId(I)V

    .line 326
    return-object v0
.end method

.method private saveJidResourceToSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "jidResource"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setJidResource(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private setD2cmGservices()V
    .locals 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enable_d2cm"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    .line 95
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "d2cm_whitelist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, d2cmList:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method private shouldUploadHeartbeatStat()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 495
    monitor-enter p0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 499
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->startAlarm()V

    .line 500
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setHeartbeatAlarm(Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;)V

    .line 502
    :cond_0
    monitor-exit p0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public broadcastConnected()V
    .locals 3

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, connectedIntent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "resource"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getJidResource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method public broadcastDisconnected(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, disconnectIntent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "err"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    return-void
.end method

.method protected closeXmppConnection(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 1
    .parameter "connection"
    .parameter "async"

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_0
    if-eqz p2, :cond_1

    .line 405
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    goto :goto_0
.end method

.method protected connectionEstablishedDelegate(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getShowAwayOnIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendDeviceIdleStatus(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const-string v0, "GTalkService"

    const-string v1, "requestBatchQuery: failed to send device idle status"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 427
    return-void
.end method

.method protected createAsyncWakelockTag()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_ASYNC_CONN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAsyncWakelockTag:Ljava/lang/String;

    .line 128
    return-void
.end method

.method protected doConnectDelegate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "host"
    .parameter "port"
    .parameter "domain"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 269
    const-string v1, "GTalkService/c"

    const-string v2, "doConnectDelegate: making main connection"

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 274
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 275
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 280
    invoke-direct {p0, v0, p4}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 277
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1
.end method

.method protected doConnectFailedDelegate()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 294
    return-void
.end method

.method protected doConnectSucceededDelegate()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->resendPacketsForAccount(J)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 289
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 13
    .parameter "out"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 533
    const-string v5, "Type: Android Endpoint"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->dump(Ljava/io/PrintWriter;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 539
    .local v0, dmMgr:Lcom/google/android/gsf/gtalkservice/DataMessageManager;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 541
    .local v4, wakelock:Landroid/os/PowerManager$WakeLock;
    if-eqz v4, :cond_0

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GOOGLE_DATA_MESSAGING wakelock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    .end local v4           #wakelock:Landroid/os/PowerManager$WakeLock;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-eqz v5, :cond_1

    .line 547
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v5, p1}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->dump(Ljava/io/PrintWriter;)V

    .line 551
    :cond_1
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    const-string v5, "c2dm"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    const-string v5, "------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_2

    .line 555
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 556
    .local v1, lastDataMessageReceived:Landroid/text/format/Time;
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    sub-long/2addr v5, v7

    div-long v2, v5, v11

    .line 559
    .local v2, timeElapsed:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last c2dm msg received at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%H:%M:%S"

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ago)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    .end local v1           #lastDataMessageReceived:Landroid/text/format/Time;
    .end local v2           #timeElapsed:J
    :goto_0
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v5, "d2cm"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v5, "------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    .line 569
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 570
    .restart local v1       #lastDataMessageReceived:Landroid/text/format/Time;
    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    sub-long/2addr v5, v7

    div-long v2, v5, v11

    .line 573
    .restart local v2       #timeElapsed:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last d2cm msg sent at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%H:%M:%S"

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ago)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    .end local v1           #lastDataMessageReceived:Landroid/text/format/Time;
    .end local v2           #timeElapsed:J
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->dumpConnectionHistory(Ljava/io/PrintWriter;)V

    .line 580
    return-void

    .line 562
    :cond_2
    const-string v5, "Never received a c2dm msg!"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_3
    const-string v5, "Never sent a d2cm msg!"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    :goto_0
    return v3

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/XMPPConnection;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 175
    .local v1, inetAddr:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 176
    .local v0, addrBytes:[B
    const/4 v5, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v2, v5, v3

    .line 181
    .local v2, ipAddr:I
    const-string v3, "GTalkService/c"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--- requestRouteToHost for TYPE_MOBILE_HIPRI, host_addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    const-string v3, "GTalkService/c"

    const-string v5, "requestRouteToHost: failed!"

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v3, v4

    .line 190
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getResourcePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "android"

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowAwayOnIdle()Z

    move-result v0

    return v0
.end method

.method public init(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->init(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mAlarmManager:Landroid/app/AlarmManager;

    .line 77
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 80
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setPacketSender(Lcom/google/android/gsf/gtalkservice/PacketSender;)V

    .line 82
    new-instance v0, Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0, v2}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->init(Landroid/content/Context;Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;Landroid/os/Handler;)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setD2cmGservices()V

    .line 85
    return-void
.end method

.method protected initJidResource()V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getJidResourceFromSettings()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, jidResource:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->computeJIDResource()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setJidResource(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public isD2cmEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isD2cmWhitelisted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->enableD2cm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackageNameWhitelisted(Ljava/lang/String;)Z
    .locals 2
    .parameter "packageName"

    .prologue
    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->d2cmWhitelist:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 123
    :goto_1
    return v1

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected logConnectionClosed(III)V
    .locals 0
    .parameter "error"
    .parameter "networkType"
    .parameter "connDuration"

    .prologue
    .line 524
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionClosed(III)V

    .line 525
    return-void
.end method

.method protected logConnectionEvent(IIII)V
    .locals 0
    .parameter "eventType"
    .parameter "state"
    .parameter "error"
    .parameter "networkState"

    .prologue
    .line 529
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionEvent(IIII)V

    .line 530
    return-void
.end method

.method public login()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->login()V

    .line 195
    return-void
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 198
    invoke-super {p0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->logout()V

    .line 199
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->clearHeartbeatAlarm()V

    .line 200
    return-void
.end method

.method public onConnectionClosed(I)V
    .locals 3
    .parameter "connectionId"

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 237
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 238
    .local v0, sharedConnection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 242
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->clearHeartbeatAlarm()V

    .line 249
    return-void

    .line 244
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1
.end method

.method public onGServicesChangeDelegate()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->setD2cmGservices()V

    .line 90
    return-void
.end method

.method protected reachedRetryThresholdForAuthExpiration()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public sendDataMessageStanza(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->sendDataMessageStanza(Landroid/content/Intent;)V

    .line 464
    return-void
.end method

.method public sendDeviceIdleStatus(Z)Z
    .locals 5
    .parameter "idle"

    .prologue
    .line 203
    const-string v1, "GTalkService/c"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceIdleStatus for account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getAccountId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", idle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;-><init>()V

    .line 207
    .local v0, packet:Lcom/google/android/gsf/gtalkservice/extensions/Idle;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->setIdle(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->getShowAwayOnIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->setSendAwayPresenceWhenIdle(Z)V

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v1

    return v1
.end method

.method public sendHeartbeatToServer()Z
    .locals 2

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    if-nez v0, :cond_1

    .line 435
    const-string v0, "GTalkService/c"

    const-string v1, "sendHeartbeatToServer: heartbeat alarm not set for this GTalkConnection"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/HeartbeatAlarm;->sendHeartbeatToServer()V

    .line 441
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendIqStanza(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 446
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send an IQ stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public sendMessageStanza(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 452
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send a message stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public sendPresenceStanza(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 458
    const-string v0, "GTalkService/c"

    const-string v1, "trying to send a presence stanza without an endpoint. should not happen."

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method protected setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 219
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    .line 225
    .local v0, rmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 226
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    .line 228
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mDataMessageManager:Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 230
    .end local v0           #rmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_0
    return-void
.end method

.method protected setJidResource(Ljava/lang/String;)V
    .locals 0
    .parameter "jidResource"

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->setJidResource(Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->saveJidResourceToSettings(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public setLastDataMessageReceived()V
    .locals 2

    .prologue
    .line 515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageReceivedTs:J

    .line 516
    return-void
.end method

.method public setLastDataMessageSent()V
    .locals 2

    .prologue
    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/AndroidEndpoint;->mLastDataMessageSentTs:J

    .line 520
    return-void
.end method

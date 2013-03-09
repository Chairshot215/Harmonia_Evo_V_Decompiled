.class public Lcom/google/android/gsf/gtalkservice/Account;
.super Ljava/lang/Object;
.source "Account.java"


# static fields
.field private static final CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;


# instance fields
.field private mActiveHeartbeatInterval:I

.field private mAuthToken:Ljava/lang/String;

.field private mClockSkewThresholdMs:J

.field private mDefaultHeartbeatInterval:I

.field private mDeviceId:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mHeartbeatAckTimeout:I

.field private mHost:Ljava/lang/String;

.field private mIdleHeartbeatInterval:I

.field private mLoginSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxConnectionHistoryRecords:I

.field private mMaxReconnectDelay:I

.field private mMinReconnectDelayLong:I

.field private mMinReconnectDelayShort:I

.field private mName:Ljava/lang/String;

.field private mPort:I

.field private mReconnectBackoffRateMultiplier:D

.field private mReconnectVariantLong:I

.field private mReconnectVariantShort:I

.field private mRmq2IncludeStreamId:Z

.field private mRmqAckInterval:I

.field private mShortNetworkDowntime:I

.field private mSupportRmqAndRmq2:Z

.field private mSyncHeartbeatInterval:I

.field private mUseAndroidId:Z

.field private mUseRmq2:Z

.field private mUsername:Ljava/lang/String;

.field private mWifiHeartbeatInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "new_vc"

    aput-object v2, v1, v3

    const-string v2, "1"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/Account;->CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIDIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJILjava/util/Map;)V
    .locals 4
    .parameter "name"
    .parameter "host"
    .parameter "port"
    .parameter "rmqAckInterval"
    .parameter "minReconnectDelayShort"
    .parameter "reconnectVariantShort"
    .parameter "minReconnectDelayLong"
    .parameter "reconnectVariantLong"
    .parameter "maxReconnectDelay"
    .parameter "shortNetworkDowntime"
    .parameter "reconnectBackoffRateMultiplier"
    .parameter "activeHeartbeat"
    .parameter "idleHeartbeat"
    .parameter "syncHeartbeat"
    .parameter "defaultHeartbeat"
    .parameter "wifiHeartbeat"
    .parameter "heartbeatAckTimeout"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"
    .parameter "useAndroidId"
    .parameter "useRmq2"
    .parameter "supportRmqAndRmq2"
    .parameter "rmq2IncludeStreamId"
    .parameter "clockSkewThresholdMs"
    .parameter "maxConnectionHistoryRecords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIIIIDIIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p29, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Account;->mName:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    .line 128
    iput p4, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    .line 129
    iput p5, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    .line 130
    iput p6, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    .line 131
    iput p7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    .line 132
    iput p8, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    .line 133
    iput p9, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    .line 134
    iput p10, p0, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    .line 135
    iput-wide p11, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectBackoffRateMultiplier:D

    .line 137
    move/from16 v0, p13

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    .line 138
    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    .line 139
    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    .line 140
    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDefaultHeartbeatInterval:I

    .line 141
    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mWifiHeartbeatInterval:I

    .line 142
    move/from16 v0, p18

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    .line 144
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    .line 147
    if-nez p21, :cond_0

    .line 148
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "deviceId must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    .line 151
    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseAndroidId:Z

    .line 152
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    .line 153
    move/from16 v0, p24

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    .line 154
    move/from16 v0, p25

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    .line 156
    move-wide/from16 v0, p26

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mClockSkewThresholdMs:J

    .line 157
    move/from16 v0, p28

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxConnectionHistoryRecords:I

    .line 159
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    .line 160
    return-void
.end method

.method public static createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 44
    .parameter "service"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"
    .parameter "useAndroidId"

    .prologue
    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v42

    .line 485
    .local v42, resolver:Landroid/content/ContentResolver;
    const-string v21, "gtalk_hostname"

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, host:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 488
    const-string v21, "GTalkService"

    const/16 v22, 0x3

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 489
    const-string v21, "GTalkService"

    const-string v22, "createAccountFromSettings: gservices has no hostname!"

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :cond_0
    const-string v4, "mtalk.google.com"

    .line 495
    :cond_1
    const-string v21, "gtalk_secure_port"

    const/16 v22, 0x146c

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 508
    .local v5, port:I
    const-string v21, "gtalk_rmq_ack_interval"

    const/16 v22, 0xa

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 511
    .local v6, rmqAckInterval:I
    const-string v21, "gtalk_min_reconnect_delay_short"

    const/16 v22, 0x1388

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 515
    .local v7, minReconnectDelayShort:I
    const-string v21, "gtalk_reconnect_variant_short"

    const/16 v22, 0x2710

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 519
    .local v8, reconnectVariantShort:I
    const-string v21, "gtalk_min_reconnect_delay_long"

    const/16 v22, 0x2710

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 523
    .local v9, minReconnectDelayLong:I
    const-string v21, "gtalk_reconnect_variant_long"

    const/16 v22, 0x7530

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 527
    .local v10, reconnectVariantLong:I
    const-string v21, "gtalk_short_network_downtime"

    const v22, 0x2932e0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 531
    .local v12, shortNetworkDowntime:I
    const-string v21, "gtalk_max_reconnect_delay"

    const v22, 0x493e0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 535
    .local v11, maxReconnectDelay:I
    const-string v21, "gtalk_reconnect_backoff_multiplier"

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 537
    .local v41, reconnectBackoffMultiplierStr:Ljava/lang/String;
    const-wide/high16 v13, 0x4000

    .line 538
    .local v13, reconnectBackoffMultiplier:D
    if-eqz v41, :cond_2

    .line 540
    :try_start_0
    invoke-static/range {v41 .. v41}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 547
    :cond_2
    :goto_0
    const-string v21, "gtalk_active_heartbeat_ping_interval_ms"

    const v22, 0x6ddd0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 551
    .local v15, activeHeartbeat:I
    const-string v21, "gtalk_heartbeat_ping_interval_ms"

    const v22, 0xdbba0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 555
    .local v16, idleHeartbeat:I
    const-string v21, "gtalk_sync_heartbeat_ping_interval_ms"

    const v22, 0xdbba0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 559
    .local v17, syncHeartbeat:I
    const-string v21, "gtalk_nosync_heartbeat_ping_interval_ms"

    const v22, 0x19a280

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 563
    .local v18, defaultHeartbeat:I
    const-string v21, "gtalk_wifi_max_heartbeat_ping_interval_ms"

    const v22, 0xdbba0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 567
    .local v19, wifiHeartbeat:I
    const-string v21, "gtalk_heartbeat_ack_timeout_ms"

    const v22, 0xea60

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .line 571
    .local v20, heartbeatAck:I
    const-string v21, "gtalk_rmq2"

    const/16 v22, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v25

    .line 574
    .local v25, useRmq2:Z
    const-string v21, "gtalk_support_rmq_and_rmq2"

    const/16 v22, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v26

    .line 577
    .local v26, supportRmqAndRmq2:Z
    const-string v21, "gtalk_rmq2_include_stream_id"

    const/16 v22, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v27

    .line 580
    .local v27, rmq2IncludeStreamId:Z
    const-string v21, "gtalk_clock_skew_threshold_ms"

    const-wide/16 v22, 0x7530

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v28

    .line 584
    .local v28, clockSkewThresholdMs:J
    const-string v21, "gtalk_max_conn_history_records"

    const/16 v22, 0xa

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    .line 589
    .local v30, maxConnectionHistoryRecords:I
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 590
    .local v31, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "gtalk:"

    aput-object v23, v21, v22

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v36

    .line 591
    .local v36, expSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v36 .. v36}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v40

    .line 592
    .local v40, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .local v37, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/String;

    .line 593
    .local v39, name:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 594
    .local v43, value:Ljava/lang/String;
    sget-boolean v21, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v21, :cond_3

    .line 595
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Account] createAccountFromSettings: expSetting name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", val="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :cond_3
    const-string v21, "gtalk:"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 541
    .end local v15           #activeHeartbeat:I
    .end local v16           #idleHeartbeat:I
    .end local v17           #syncHeartbeat:I
    .end local v18           #defaultHeartbeat:I
    .end local v19           #wifiHeartbeat:I
    .end local v20           #heartbeatAck:I
    .end local v25           #useRmq2:Z
    .end local v26           #supportRmqAndRmq2:Z
    .end local v27           #rmq2IncludeStreamId:Z
    .end local v28           #clockSkewThresholdMs:J
    .end local v30           #maxConnectionHistoryRecords:I
    .end local v31           #loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v36           #expSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v37           #i$:Ljava/util/Iterator;
    .end local v39           #name:Ljava/lang/String;
    .end local v40           #names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v43           #value:Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 542
    .local v35, ex:Ljava/lang/NumberFormatException;
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Account] cannot parse \'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\' as GTALK_SERVICE_RECONNECT_BACKOFF_RATE_MULTIPLIER"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    .end local v35           #ex:Ljava/lang/NumberFormatException;
    .restart local v15       #activeHeartbeat:I
    .restart local v16       #idleHeartbeat:I
    .restart local v17       #syncHeartbeat:I
    .restart local v18       #defaultHeartbeat:I
    .restart local v19       #wifiHeartbeat:I
    .restart local v20       #heartbeatAck:I
    .restart local v25       #useRmq2:Z
    .restart local v26       #supportRmqAndRmq2:Z
    .restart local v27       #rmq2IncludeStreamId:Z
    .restart local v28       #clockSkewThresholdMs:J
    .restart local v30       #maxConnectionHistoryRecords:I
    .restart local v31       #loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v36       #expSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v37       #i$:Ljava/util/Iterator;
    .restart local v40       #names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    sget-object v33, Lcom/google/android/gsf/gtalkservice/Account;->CLIENT_SPECIFIC_KEYS:[[Ljava/lang/String;

    .local v33, arr$:[[Ljava/lang/String;
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v37, 0x0

    .local v37, i$:I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_6

    aget-object v34, v33, v37

    .line 602
    .local v34, clientSettings:[Ljava/lang/String;
    const/16 v21, 0x0

    aget-object v39, v34, v21

    .line 603
    .restart local v39       #name:Ljava/lang/String;
    const/16 v21, 0x1

    aget-object v43, v34, v21

    .line 604
    .restart local v43       #value:Ljava/lang/String;
    sget-boolean v21, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v21, :cond_5

    .line 605
    const-string v21, "GTalkService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[Account] createAccountFromSettings:  clientSpecificSettings name="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", val="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_5
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v43

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .end local v34           #clientSettings:[Ljava/lang/String;
    .end local v39           #name:Ljava/lang/String;
    .end local v43           #value:Ljava/lang/String;
    :cond_6
    move-object/from16 v21, p1

    move-object/from16 v22, p2

    move-object/from16 v23, p3

    move/from16 v24, p4

    .line 612
    invoke-static/range {v4 .. v31}, Lcom/google/android/gsf/gtalkservice/Account;->createGTalkAccount(Ljava/lang/String;IIIIIIIIDIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJILjava/util/Map;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v32

    .line 641
    .local v32, account:Lcom/google/android/gsf/gtalkservice/Account;
    return-object v32
.end method

.method private static createGTalkAccount(Ljava/lang/String;IIIIIIIIDIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJILjava/util/Map;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 33
    .parameter "host"
    .parameter "port"
    .parameter "rmqAckInterval"
    .parameter "minReconnectDelayShort"
    .parameter "reconnectVariantShort"
    .parameter "minReconnectDelayLong"
    .parameter "reconnectVariantLong"
    .parameter "maxReconnectDelay"
    .parameter "shortNetworkDowntime"
    .parameter "reconnectBackoffRateMultiplier"
    .parameter "heartbeatActive"
    .parameter "heartbeatIdle"
    .parameter "heartbeatSync"
    .parameter "heartbeatLong"
    .parameter "heartbeatWifi"
    .parameter "heartbeatAck"
    .parameter "username"
    .parameter "authToken"
    .parameter "deviceId"
    .parameter "useAndroidId"
    .parameter "useRmq2"
    .parameter "supportRmqAndRmq2"
    .parameter "rmq2IncludeStreamId"
    .parameter "clockSkewThreshold"
    .parameter "maxConnectionHistoryRecords"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIIIIDIIIIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZJI",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gsf/gtalkservice/Account;"
        }
    .end annotation

    .prologue
    .line 319
    .local p27, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "GTalkService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create GTalk account: HOST="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PORT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RMQ_ACK_INTERVAL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MIN_RECONNECT_DELAY_SHORT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RECONNECT_VARIANT_SHORT="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MIN_RECONNECT_DELAY_LONG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RECONNECT_VARIANT_LONG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MAX_RECONNECT_DELAY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SHORT_NETWORK_DOWNTIME="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RECONNECT_BACKOFF_MULTIPLIER="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p9

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_ACTIVE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_IDLE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_SYNC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_LONG="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p14

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_WIFI="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p15

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", HEART_BEAT_ACK="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", USERNAME="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DEVICE_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", USE_ANDROID_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", USE_RMQ2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SUPPORT_RMQ_AND_RMQ2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RMQ2_INCL_STREAM_ID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CLOCK_SKEW_THRESHOLD="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", MAX_CONN_HISTORY_REC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/android/gsf/gtalkservice/Account;

    const/4 v3, 0x0

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-wide/from16 v13, p9

    move/from16 v15, p11

    move/from16 v16, p12

    move/from16 v17, p13

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move/from16 v24, p20

    move/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move-wide/from16 v28, p24

    move/from16 v30, p26

    move-object/from16 v31, p27

    invoke-direct/range {v2 .. v31}, Lcom/google/android/gsf/gtalkservice/Account;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIDIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZJILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    return-object v2

    .line 356
    :catch_0
    move-exception v32

    .line 357
    .local v32, ex:Ljava/lang/Exception;
    const-string v2, "GTalkService"

    const-string v3, "Unable to create GTalk account"

    move-object/from16 v0, v32

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loginSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z
    .locals 10
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 424
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getLoginSettings()Ljava/util/Map;

    move-result-object v3

    .line 427
    .local v3, otherLoginSetting:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 428
    .local v2, names:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 430
    .local v4, otherNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v8

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 449
    :goto_0
    return v7

    .line 434
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 436
    .local v5, value1:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 438
    .local v6, value2:Ljava/lang/String;
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    .line 439
    :cond_2
    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 443
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 449
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #value1:Ljava/lang/String;
    .end local v6           #value2:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connectionSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z
    .locals 9
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x2f

    .line 363
    if-nez p1, :cond_0

    .line 415
    :goto_0
    return v5

    .line 369
    :cond_0
    iget-object v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    if-nez v6, :cond_a

    .line 370
    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    if-nez v6, :cond_9

    move v0, v4

    .line 375
    .local v0, hostMatch:Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/Account;->loginSettingsMatch(Lcom/google/android/gsf/gtalkservice/Account;)Z

    move-result v1

    .line 377
    .local v1, isLoginSettingMatch:Z
    const-string v6, "GTalkService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v6, "GTalkService"

    const-string v7, "Account.settingsMatch():"

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-nez v0, :cond_1

    .line 383
    const-string v6, " mHost: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    iget v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    if-eq v6, v7, :cond_2

    .line 386
    const-string v6, " mPort: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    :cond_2
    iget v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    if-eq v6, v7, :cond_3

    .line 389
    const-string v6, " mRmqAckInterval: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    :cond_3
    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    if-eq v6, v7, :cond_4

    .line 393
    const-string v6, " mUseRmq2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 395
    :cond_4
    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    if-eq v6, v7, :cond_5

    .line 396
    const-string v6, " mSupportRmqAndRmq2: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 399
    :cond_5
    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    if-eq v6, v7, :cond_6

    .line 400
    const-string v6, " mRmq2IncludeStreamId: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    :cond_6
    if-nez v1, :cond_7

    .line 404
    const-string v6, " loginSetting "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, out:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 409
    const-string v6, "GTalkService"

    const-string v7, "[Account] connectionSettingsMatch: no material changes"

    invoke-static {v6, v7}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .end local v2           #out:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_8
    :goto_2
    if-eqz v0, :cond_c

    if-eqz v1, :cond_c

    iget v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    if-ne v6, v7, :cond_c

    iget v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    iget v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    if-ne v6, v7, :cond_c

    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    if-ne v6, v7, :cond_c

    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    if-ne v6, v7, :cond_c

    iget-boolean v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    iget-boolean v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    if-ne v6, v7, :cond_c

    :goto_3
    move v5, v4

    goto/16 :goto_0

    .end local v0           #hostMatch:Z
    .end local v1           #isLoginSettingMatch:Z
    :cond_9
    move v0, v5

    .line 370
    goto/16 :goto_1

    .line 372
    :cond_a
    iget-object v6, p1, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .restart local v0       #hostMatch:Z
    goto/16 :goto_1

    .line 411
    .restart local v1       #isLoginSettingMatch:Z
    .restart local v2       #out:Ljava/lang/String;
    .restart local v3       #sb:Ljava/lang/StringBuilder;
    :cond_b
    const-string v6, "GTalkService"

    invoke-static {v6, v2}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v2           #out:Ljava/lang/String;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_c
    move v4, v5

    .line 415
    goto :goto_3
.end method

.method public getActiveHeartbeatInterval()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    return v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getClockSkewThresholdMs()J
    .locals 2

    .prologue
    .line 288
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mClockSkewThresholdMs:J

    return-wide v0
.end method

.method public getDefaultHeartbeatInterval()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDefaultHeartbeatInterval:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHeartbeatAckTimeout()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleHeartbeatInterval()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    return v0
.end method

.method public getLoginSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mLoginSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxConnectionHistoryRecords()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxConnectionHistoryRecords:I

    return v0
.end method

.method public getMaxReconnectDelay()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    return v0
.end method

.method public getMinReconnectDelayLong()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    return v0
.end method

.method public getMinReconnectDelayShort()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    return v0
.end method

.method public getReconnectBackoffRateMultiplier()D
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectBackoffRateMultiplier:D

    return-wide v0
.end method

.method public getReconnectVariantLong()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    return v0
.end method

.method public getReconnectVariantShort()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    return v0
.end method

.method public getShortNetworkDowntime()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    return v0
.end method

.method public getSyncHeartbeatInterval()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    return v0
.end method

.method public getUseAndroidId()Z
    .locals 1

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseAndroidId:Z

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiHeartbeatInterval()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/Account;->mWifiHeartbeatInterval:I

    return v0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/Account;->mAuthToken:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 455
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDomain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUsername="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRmqAckInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmqAckInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUseRmq2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mUseRmq2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSupportRmqAndRmq2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSupportRmqAndRmq2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRmq2IncludeStreamId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mRmq2IncludeStreamId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMinReconnectDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayShort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReconnectVariantShort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantShort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMinReconnectDelayLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMinReconnectDelayLong:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReconnectVariantLong="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectVariantLong:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mMaxReconnectDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mMaxReconnectDelay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mShortNetworkDowntime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mShortNetworkDowntime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mReconnectBackoffRateMultiplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mReconnectBackoffRateMultiplier:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mActiveHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mActiveHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIdleHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mIdleHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSyncHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mSyncHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDefaultHeartbeatInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mDefaultHeartbeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHeartbeatAckTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gsf/gtalkservice/Account;->mHeartbeatAckTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

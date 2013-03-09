.class public Lorg/jivesoftware/smack/ProtoBufAuthentication;
.super Ljava/lang/Object;
.source "ProtoBufAuthentication.java"


# instance fields
.field private final accountId:J

.field private final adaptiveHeartbeat:Z

.field private final compress:I

.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private final deviceId:Ljava/lang/String;

.field private heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

.field private final heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

.field private final lastRmqId:J

.field private final loginSettings:Ljava/util/Map;
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

.field private final rmq2S2dIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverClockSkew:J

.field private settings:Ljava/util/Map;
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

.field private useAndroidId:Z

.field private final useRmq:Z

.field private final useRmq2:Z


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;ZLjava/lang/String;ZJZJLjava/util/List;IZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V
    .locals 0
    .parameter "connection"
    .parameter "useAndroidId"
    .parameter "deviceId"
    .parameter "useRmq"
    .parameter "lastRmqId"
    .parameter "useRmq2"
    .parameter "accountId"
    .parameter
    .parameter "compress"
    .parameter "adaptiveHeartbeat"
    .parameter "heartbeatStat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Z",
            "Ljava/lang/String;",
            "ZJZJ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Lorg/jivesoftware/smack/packet/HeartbeatStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p10, rmq2S2dIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p14, loginSettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 55
    iput-boolean p2, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useAndroidId:Z

    .line 56
    iput-object p3, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->deviceId:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq:Z

    .line 58
    iput-boolean p7, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq2:Z

    .line 59
    iput-wide p5, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->lastRmqId:J

    .line 60
    iput-wide p8, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->accountId:J

    .line 61
    iput-object p10, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->rmq2S2dIds:Ljava/util/List;

    .line 62
    iput-object p14, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->loginSettings:Ljava/util/Map;

    .line 63
    iput p11, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->compress:I

    .line 64
    iput-boolean p12, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->adaptiveHeartbeat:Z

    .line 65
    iput-object p13, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    .line 66
    return-void
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 25
    .parameter "username"
    .parameter "password"
    .parameter "resource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, user:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, domain:Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smack/packet/LoginRequest;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useAndroidId:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->deviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq:Z

    move-object/from16 v0, p0

    iget-wide v9, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->lastRmqId:J

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->useRmq2:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->rmq2S2dIds:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v13, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->accountId:J

    move-object/from16 v0, p0

    iget v15, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->compress:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->adaptiveHeartbeat:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatStat:Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->loginSettings:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v18}, Lorg/jivesoftware/smack/packet/LoginRequest;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;JIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V

    .line 99
    .local v1, login:Lorg/jivesoftware/smack/packet/LoginRequest;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/LoginRequest;->getPacketID()Ljava/lang/String;

    move-result-object v21

    .line 100
    .local v21, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v5, Lorg/jivesoftware/smack/filter/PacketIDFilter;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lorg/jivesoftware/smack/filter/PacketIDFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/XMPPConnection;->createPacketCollector(Lorg/jivesoftware/smack/filter/PacketFilter;)Lorg/jivesoftware/smack/PacketCollector;

    move-result-object v19

    .line 103
    .local v19, collector:Lorg/jivesoftware/smack/PacketCollector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->packetWriter:Lorg/jivesoftware/smack/PacketWriter;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/PacketWriter;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 107
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getPacketReplyTimeout()I

    move-result v2

    int-to-long v5, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lorg/jivesoftware/smack/PacketCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v23

    .line 108
    .local v23, packet:Lorg/jivesoftware/smack/packet/Packet;
    if-nez v23, :cond_0

    .line 109
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Authentication timed out."

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v7, 0x1f6

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v2, v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 110
    :cond_0
    move-object/from16 v0, v23

    instance-of v2, v0, Lorg/jivesoftware/smack/packet/LoginResponse;

    if-nez v2, :cond_1

    .line 113
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    const-string v5, "Expected LoginResponse!"

    new-instance v6, Lorg/jivesoftware/smack/packet/XMPPError;

    const/16 v7, 0x1f6

    invoke-direct {v6, v7}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    invoke-direct {v2, v5, v6}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    :cond_1
    move-object/from16 v24, v23

    .line 115
    check-cast v24, Lorg/jivesoftware/smack/packet/LoginResponse;

    .line 116
    .local v24, response:Lorg/jivesoftware/smack/packet/LoginResponse;
    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/packet/LoginResponse;->getJid()Ljava/lang/String;

    move-result-object v22

    .line 117
    .local v22, jid:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/packet/LoginResponse;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v20

    .line 119
    .local v20, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-nez v20, :cond_2

    .line 124
    new-instance v20, Lorg/jivesoftware/smack/packet/XMPPError;

    .end local v20           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    const/16 v2, 0x191

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(I)V

    .line 126
    .restart local v20       #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/XMPPException;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v2

    .line 128
    .end local v20           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_3
    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/packet/LoginResponse;->getSettings()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->settings:Ljava/util/Map;

    .line 129
    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/packet/LoginResponse;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v24 .. v24}, Lorg/jivesoftware/smack/packet/LoginResponse;->getServerTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    move-object/from16 v0, p0

    iput-wide v5, v0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->serverClockSkew:J

    .line 133
    invoke-virtual/range {v19 .. v19}, Lorg/jivesoftware/smack/PacketCollector;->cancel()V

    .line 135
    return-object v22
.end method

.method public getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->heartbeatConfig:Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    return-object v0
.end method

.method public getServerClockSkew()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->serverClockSkew:J

    return-wide v0
.end method

.method public getServerSettings()Ljava/util/Map;
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
    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smack/ProtoBufAuthentication;->settings:Ljava/util/Map;

    return-object v0
.end method

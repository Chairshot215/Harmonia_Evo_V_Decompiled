.class public Lcom/htc/reportagent/HandsetLogCreator;
.super Ljava/lang/Object;
.source "HandsetLogCreator.java"

# interfaces
.implements Lcom/htc/utils/ulog/SerializableUtil$PayloadChainCreator;


# static fields
.field private static final TAG:Ljava/lang/String; = "HandsetLogCreator"


# instance fields
.field private mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->newBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 36
    iput-object p1, p0, Lcom/htc/reportagent/HandsetLogCreator;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "appId"
    .parameter "category"
    .parameter "timestamp"
    .parameter "data"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 46
    return-void
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/htc/reportagent/io/Buffer;)V
    .locals 4
    .parameter "appId"
    .parameter "category"
    .parameter "timestamp"
    .parameter "data"
    .parameter "attachment"

    .prologue
    .line 50
    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v0

    .line 51
    .local v0, logPayloadBuilder:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {v0, p1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 53
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    invoke-virtual {v0, p2}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 55
    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 56
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {v0, p5}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 58
    :cond_2
    if-eqz p6, :cond_3

    .line 59
    invoke-virtual {p6}, Lcom/htc/reportagent/io/Buffer;->getBuffer()[B

    move-result-object v1

    invoke-virtual {p6}, Lcom/htc/reportagent/io/Buffer;->getOffset()I

    move-result v2

    invoke-virtual {p6}, Lcom/htc/reportagent/io/Buffer;->getLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/htc/protobuf/ByteString;->copyFrom([BII)Lcom/htc/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAttachment(Lcom/htc/protobuf/ByteString;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-virtual {v1, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 61
    return-void
.end method

.method public toHandsetLog(Z)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 9
    .parameter "isErrorReport"

    .prologue
    .line 65
    iget-object v5, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    iget-object v6, p0, Lcom/htc/reportagent/HandsetLogCreator;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getLogDeviceInfo(Landroid/content/Context;Z)Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setDeviceInfo(Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 68
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v3, info:Lorg/json/JSONObject;
    const-string v4, ""

    .line 70
    .local v4, jsonString:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/reportagent/HandsetLogCreator;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/reportagent/ReportPreference;->getNewSN(Landroid/content/Context;)J

    move-result-wide v1

    .line 71
    .local v1, envelopeSN:J
    const-string v5, "HandsetLogCreator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "envelope SN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v5, "SN"

    invoke-virtual {v3, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-static {}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->newBuilder()Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v6

    const-string v7, "com.htc.reportagent"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v6

    const-string v7, "info"

    invoke-virtual {v6, v7}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setCategory(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setTimestamp(J)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;->setData(Ljava/lang/String;)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->addPayload(Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload$Builder;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .end local v1           #envelopeSN:J
    .end local v3           #info:Lorg/json/JSONObject;
    .end local v4           #jsonString:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/htc/reportagent/HandsetLogCreator;->mBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v5

    return-object v5

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Lorg/json/JSONException;
    const-string v5, "HandsetLogCreator"

    const-string v6, "toHandsetLog() JSON Object Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 86
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "HandsetLogCreator"

    const-string v6, "toHandsetLog() JSON Object Exception"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

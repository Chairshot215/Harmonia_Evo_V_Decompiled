.class public Lcom/htc/xps/pomelo/util/PacketUtil;
.super Ljava/lang/Object;
.source "PacketUtil.java"


# static fields
.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final SHIFT_BITS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Pomelo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static calcBinary([B)I
    .locals 8
    .parameter "byteData"

    .prologue
    .line 66
    const/4 v4, 0x0

    .line 67
    .local v4, rc:I
    const/4 v2, 0x0

    .local v2, idx1:I
    const/4 v3, 0x1

    .line 68
    .local v3, idx2:I
    array-length v6, p0

    if-le v6, v2, :cond_0

    .line 69
    aget-byte v6, p0, v2

    xor-int/2addr v4, v6

    .line 70
    :cond_0
    array-length v6, p0

    if-le v6, v3, :cond_1

    .line 71
    shl-int/lit8 v6, v4, 0x5

    aget-byte v7, p0, v3

    xor-int v4, v6, v7

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    .local v0, count:I
    :goto_0
    array-length v6, p0

    add-int v7, v2, v3

    if-le v6, v7, :cond_3

    .line 75
    add-int v5, v2, v3

    .line 76
    .local v5, tmpIdx:I
    move v2, v3

    .line 77
    move v3, v5

    .line 78
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    rem-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 79
    shl-int/lit8 v4, v4, 0x5

    .line 80
    :cond_2
    aget-byte v6, p0, v3

    xor-int/2addr v4, v6

    move v0, v1

    .line 81
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 82
    .end local v5           #tmpIdx:I
    :cond_3
    return v4
.end method

.method public static calcLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;
    .locals 4
    .parameter "logPkt"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v1

    .line 21
    .local v1, lookup:I
    invoke-static {p0}, Lcom/htc/xps/pomelo/util/PacketUtil;->getLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)I

    move-result v0

    .line 22
    .local v0, chkSum:I
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->toBuilder()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    move-result-object v2

    .line 23
    .local v2, pktBuilder:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;
    invoke-virtual {v2, v0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->setCheckSum(I)Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;

    .line 24
    invoke-virtual {v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT$Builder;->build()Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;

    move-result-object v3

    return-object v3
.end method

.method protected static calcString(Ljava/lang/String;)I
    .locals 4
    .parameter "data"

    .prologue
    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, rc:I
    if-eqz p0, :cond_0

    .line 58
    invoke-static {p0}, Lcom/htc/xps/pomelo/util/PacketUtil;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    .local v0, byteData:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 60
    aget-byte v3, v0, v1

    add-int/2addr v2, v3

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0           #byteData:[B
    .end local v1           #i:I
    :cond_0
    return v2
.end method

.method protected static getBytesUTF8(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "Pomelo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBytesUTF8 got Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)I
    .locals 5
    .parameter "logPkt"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, chkSum:I
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcString(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 38
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcString(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 39
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRomVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcString(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayloadCount()I

    move-result v1

    .line 43
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 44
    invoke-virtual {p0, v2}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getPayload(I)Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;

    move-result-object v3

    .line 45
    .local v3, logPayload:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    if-eqz v3, :cond_2

    .line 46
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcBinary([B)I

    move-result v4

    add-int/2addr v0, v4

    .line 48
    :cond_1
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;->getAttachment()Lcom/htc/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/protobuf/ByteString;->toByteArray()[B

    move-result-object v4

    invoke-static {v4}, Lcom/htc/xps/pomelo/util/PacketUtil;->calcBinary([B)I

    move-result v4

    add-int/2addr v0, v4

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v3           #logPayload:Lcom/htc/xps/pomelo/log/PBCommonMessage$LogPayload;
    :cond_3
    return v0
.end method

.method public static validateLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z
    .locals 3
    .parameter "logPkt"

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getLookup()I

    move-result v1

    .line 29
    .local v1, lookup:I
    invoke-static {p0}, Lcom/htc/xps/pomelo/util/PacketUtil;->getLogPacketCheckSum(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)I

    move-result v0

    .line 30
    .local v0, chkSum:I
    invoke-virtual {p0}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getCheckSum()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

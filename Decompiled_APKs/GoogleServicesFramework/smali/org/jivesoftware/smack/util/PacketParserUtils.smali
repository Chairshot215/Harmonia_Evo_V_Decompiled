.class public Lorg/jivesoftware/smack/util/PacketParserUtils;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I
    .locals 1
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public static getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J
    .locals 1
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide p2

    .end local p2
    :cond_0
    return-wide p2
.end method

.method public static getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "proto"
    .parameter "field"
    .parameter "defaultValue"

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_0
    return-object p2
.end method

.method public static newXmlParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .prologue
    .line 87
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 90
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 91
    sget-object v2, Landroid/util/Xml;->FEATURE_RELAXED:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method public static parseBatchPresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 17
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v5, Lorg/jivesoftware/smack/packet/BatchPresence;

    sget-object v15, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->SET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-direct {v5, v15}, Lorg/jivesoftware/smack/packet/BatchPresence;-><init>(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V

    .line 573
    .local v5, batchPresence:Lorg/jivesoftware/smack/packet/BatchPresence;
    const/4 v15, 0x1

    const-string v16, "ID_NOT_AVAILABLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, id:Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/jivesoftware/smack/packet/BatchPresence;->setPacketID(Ljava/lang/String;)V

    .line 576
    const/4 v15, 0x2

    const-string v16, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 577
    .local v14, to:Ljava/lang/String;
    invoke-virtual {v5, v14}, Lorg/jivesoftware/smack/packet/BatchPresence;->setTo(Ljava/lang/String;)V

    .line 580
    const/4 v15, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v15, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v3

    .line 582
    .local v3, accountId:J
    invoke-virtual {v5, v3, v4}, Lorg/jivesoftware/smack/packet/BatchPresence;->setAccountId(J)V

    .line 584
    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 585
    .local v12, rmq2Id:Ljava/lang/String;
    invoke-virtual {v5, v12}, Lorg/jivesoftware/smack/packet/BatchPresence;->setRmq2Id(Ljava/lang/String;)V

    .line 587
    const/4 v15, 0x6

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v9

    .line 589
    .local v9, lastStreamId:I
    invoke-virtual {v5, v9}, Lorg/jivesoftware/smack/packet/BatchPresence;->setLastStreamId(I)V

    .line 591
    const/4 v15, 0x5

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v13

    .line 593
    .local v13, streamId:I
    invoke-virtual {v5, v13}, Lorg/jivesoftware/smack/packet/BatchPresence;->setStreamId(I)V

    .line 595
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 597
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 598
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 599
    .local v11, presencePb:Lcom/google/common/io/protocol/ProtoBuf;
    move-wide/from16 v0, p1

    invoke-static {v11, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/Presence;

    .line 601
    .local v10, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v10, v3, v4}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 602
    invoke-virtual {v5, v10}, Lorg/jivesoftware/smack/packet/BatchPresence;->addPresenceStanza(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 597
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 605
    .end local v10           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v11           #presencePb:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    return-object v5
.end method

.method public static parseDataMessage(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/DataMessage;
    .locals 25
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 312
    new-instance v7, Lorg/jivesoftware/smack/packet/DataMessage;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/DataMessage;-><init>()V

    .line 314
    .local v7, dataMessage:Lorg/jivesoftware/smack/packet/DataMessage;
    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, from:Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/jivesoftware/smack/packet/DataMessage;->setFrom(Ljava/lang/String;)V

    .line 317
    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 318
    .local v19, to:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setTo(Ljava/lang/String;)V

    .line 320
    const/16 v22, 0x2

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 321
    .local v10, id:Ljava/lang/String;
    invoke-virtual {v7, v10}, Lorg/jivesoftware/smack/packet/DataMessage;->setPacketID(Ljava/lang/String;)V

    .line 323
    const/16 v22, 0x1

    const-wide/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v16

    .line 324
    .local v16, rmqId:J
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lorg/jivesoftware/smack/packet/DataMessage;->setRmqId(J)V

    .line 326
    const/16 v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 327
    .local v15, rmq2Id:Ljava/lang/String;
    invoke-virtual {v7, v15}, Lorg/jivesoftware/smack/packet/DataMessage;->setRmq2Id(Ljava/lang/String;)V

    .line 329
    const/16 v22, 0xb

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v12

    .line 331
    .local v12, lastStreamId:I
    invoke-virtual {v7, v12}, Lorg/jivesoftware/smack/packet/DataMessage;->setLastStreamId(I)V

    .line 334
    const/16 v22, 0xa

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v18

    .line 336
    .local v18, streamId:I
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setStreamId(I)V

    .line 338
    const/16 v22, 0x5

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, category:Ljava/lang/String;
    invoke-virtual {v7, v6}, Lorg/jivesoftware/smack/packet/DataMessage;->setCategory(Ljava/lang/String;)V

    .line 341
    const/16 v22, 0x6

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 342
    .local v20, token:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setToken(Ljava/lang/String;)V

    .line 344
    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 346
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/jivesoftware/smack/packet/DataMessage;->setFromTrustedServer(Z)V

    .line 349
    :cond_0
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 350
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 351
    .local v14, permission:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 352
    invoke-virtual {v7, v14}, Lorg/jivesoftware/smack/packet/DataMessage;->setPermission(Ljava/lang/String;)V

    .line 356
    .end local v14           #permission:Ljava/lang/String;
    :cond_1
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v13

    .line 357
    .local v13, numAppDataPairs:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v13, :cond_2

    .line 358
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 359
    .local v5, appDataPb:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, key:Ljava/lang/String;
    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 363
    .local v21, value:Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smack/packet/DataMessage$AppData;

    move-object/from16 v0, v21

    invoke-direct {v4, v11, v0}, Lorg/jivesoftware/smack/packet/DataMessage$AppData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v4, appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    invoke-virtual {v7, v4}, Lorg/jivesoftware/smack/packet/DataMessage;->addAppData(Lorg/jivesoftware/smack/packet/DataMessage$AppData;)V

    .line 357
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 367
    .end local v4           #appData:Lorg/jivesoftware/smack/packet/DataMessage$AppData;
    .end local v5           #appDataPb:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v11           #key:Ljava/lang/String;
    .end local v21           #value:Ljava/lang/String;
    :cond_2
    return-object v7
.end method

.method public static parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 11
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 753
    const/4 v4, 0x0

    .line 754
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 755
    invoke-virtual {p0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 757
    :cond_0
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 759
    .local v0, code:I
    const/4 v6, 0x0

    .line 760
    .local v6, type:Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 761
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 764
    :cond_1
    new-instance v1, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-direct {v1, v0, v4, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 767
    .local v5, numExtensions:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 768
    invoke-virtual {p0, v10, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    .line 770
    .local v2, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v2, :cond_2

    .line 771
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/XMPPError;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 767
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 775
    .end local v2           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_3
    return-object v1
.end method

.method public static parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 10
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 699
    const-string v3, "-1"

    .line 700
    .local v3, errorCode:Ljava/lang/String;
    const/4 v6, 0x0

    .line 701
    .local v6, message:Ljava/lang/String;
    const/4 v7, 0x0

    .line 702
    .local v7, other:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 704
    .local v0, attrCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 705
    invoke-interface {p0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "code"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 706
    const-string v8, ""

    const-string v9, "code"

    invoke-interface {p0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 704
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 710
    :cond_1
    const/4 v1, 0x0

    .line 711
    .local v1, done:Z
    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 712
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 713
    .local v4, eventType:I
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 714
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, elementName:Ljava/lang/String;
    const-string v8, "text"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 719
    if-nez v6, :cond_2

    .line 720
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 722
    :cond_3
    const-string v8, "feature-not-implemented"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 725
    const-string v7, "feature not implemented"

    goto :goto_1

    .line 727
    .end local v2           #elementName:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x3

    if-ne v4, v8, :cond_5

    .line 728
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 729
    const/4 v1, 0x1

    goto :goto_1

    .line 731
    :cond_5
    const/4 v8, 0x4

    if-ne v4, v8, :cond_2

    .line 732
    if-nez v6, :cond_2

    .line 733
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 738
    .end local v4           #eventType:I
    :cond_6
    if-nez v6, :cond_7

    .line 739
    move-object v6, v7

    .line 742
    :cond_7
    new-instance v8, Lorg/jivesoftware/smack/packet/XMPPError;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v8, v9, v6}, Lorg/jivesoftware/smack/packet/XMPPError;-><init>(ILjava/lang/String;)V

    return-object v8
.end method

.method public static parseMessage(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 10
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v4, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v4}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 233
    .local v4, message:Lorg/jivesoftware/smack/packet/Message;
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, id:Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, "ID_NOT_AVAILABLE"

    .end local v3           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 236
    const/4 v7, 0x1

    const-wide/16 v8, -0x1

    invoke-static {p0, v7, v8, v9}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/jivesoftware/smack/packet/Message;->setRmqId(J)V

    .line 239
    const/16 v7, 0xd

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setRmq2Id(Ljava/lang/String;)V

    .line 240
    const/16 v7, 0xf

    const/4 v8, -0x1

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setLastStreamId(I)V

    .line 242
    const/16 v7, 0xe

    const/4 v8, -0x1

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setStreamId(I)V

    .line 245
    const/4 v7, 0x5

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 246
    const/4 v7, 0x4

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 247
    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->NORMAL:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 248
    .local v6, type:Lorg/jivesoftware/smack/packet/Message$Type;
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 249
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 266
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 268
    sget-object v7, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v6, v7, :cond_2

    .line 269
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 270
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 272
    .local v0, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 276
    .end local v0           #errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 277
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 278
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 279
    const/16 v7, 0x11

    invoke-static {p0, v7, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/jivesoftware/smack/packet/Message;->setAccountId(J)V

    .line 282
    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 283
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setHasNoSave(Z)V

    .line 284
    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setNoSave(Z)V

    .line 287
    :cond_3
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 288
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Message;->setIsRead(Z)V

    .line 291
    :cond_4
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 292
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lorg/jivesoftware/smack/packet/Message;->setTimestamp(J)V

    .line 295
    :cond_5
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 296
    .local v5, numExtensions:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v5, :cond_7

    .line 297
    const/16 v7, 0xa

    invoke-virtual {p0, v7, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-static {v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 299
    .local v1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v1, :cond_6

    .line 300
    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 296
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    .end local v1           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v2           #i:I
    .end local v5           #numExtensions:I
    :pswitch_1
    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 254
    goto/16 :goto_0

    .line 256
    :pswitch_2
    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->GROUP_CHAT:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 257
    goto/16 :goto_0

    .line 259
    :pswitch_3
    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->HEADLINE:Lorg/jivesoftware/smack/packet/Message$Type;

    .line 260
    goto/16 :goto_0

    .line 262
    :pswitch_4
    sget-object v6, Lorg/jivesoftware/smack/packet/Message$Type;->ERROR:Lorg/jivesoftware/smack/packet/Message$Type;

    goto/16 :goto_0

    .line 305
    .restart local v2       #i:I
    .restart local v5       #numExtensions:I
    :cond_7
    return-object v4

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Packet;
    .locals 19
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v9, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v9}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 109
    .local v9, message:Lorg/jivesoftware/smack/packet/Message;
    const-string v17, ""

    const-string v18, "stanza-id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v13

    .line 111
    .local v13, rmqId:J
    invoke-virtual {v9, v13, v14}, Lorg/jivesoftware/smack/packet/Message;->setRmqId(J)V

    .line 113
    const-string v17, ""

    const-string v18, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, id:Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, "ID_NOT_AVAILABLE"

    .end local v8           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v9, v8}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    .line 115
    const-string v17, ""

    const-string v18, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    .line 116
    const-string v17, ""

    const-string v18, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    .line 117
    const-string v17, ""

    const-string v18, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/Message$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 122
    const/4 v4, 0x0

    .line 123
    .local v4, done:Z
    const/4 v15, 0x0

    .line 124
    .local v15, subject:Ljava/lang/String;
    const/4 v3, 0x0

    .line 125
    .local v3, body:Ljava/lang/String;
    const/16 v16, 0x0

    .line 126
    .local v16, thread:Ljava/lang/String;
    const/4 v12, 0x0

    .line 127
    .local v12, properties:Ljava/util/Map;
    :cond_1
    :goto_0
    if-nez v4, :cond_8

    .line 128
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 129
    .local v6, eventType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 130
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, elementName:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, namespace:Ljava/lang/String;
    const-string v17, "subject"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 136
    if-nez v15, :cond_1

    .line 137
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    .line 140
    :cond_2
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 144
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessageBody(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Message;)V

    goto :goto_0

    .line 151
    :cond_3
    const-string v17, "thread"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 152
    if-nez v16, :cond_1

    .line 153
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v16

    goto :goto_0

    .line 156
    :cond_4
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 157
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_0

    .line 159
    :cond_5
    const-string v17, "properties"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 162
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v12

    goto :goto_0

    .line 166
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v5, v11, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 170
    .end local v5           #elementName:Ljava/lang/String;
    .end local v11           #namespace:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v6, v0, :cond_1

    .line 171
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "message"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 172
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 176
    .end local v6           #eventType:I
    :cond_8
    invoke-virtual {v9, v15}, Lorg/jivesoftware/smack/packet/Message;->setSubject(Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 184
    if-eqz v12, :cond_9

    .line 185
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 186
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 187
    .local v10, name:Ljava/lang/String;
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v10, v0}, Lorg/jivesoftware/smack/packet/Message;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 192
    .end local v7           #i:Ljava/util/Iterator;
    .end local v10           #name:Ljava/lang/String;
    :cond_9
    return-object v9
.end method

.method private static parseMessageBody(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 5
    .parameter "parser"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, body:Ljava/lang/String;
    const/4 v1, 0x0

    .line 202
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 203
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 204
    .local v2, eventType:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 206
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto :goto_0

    .line 209
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 210
    if-nez v0, :cond_0

    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 216
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "body"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    .end local v2           #eventType:I
    :cond_3
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private static parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 15
    .parameter "protobuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 857
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 859
    .local v6, id:I
    if-nez v6, :cond_1

    .line 861
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v12

    .line 862
    .local v12, xmlBytes:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 864
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 865
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 866
    const-string v13, "UTF-8"

    invoke-interface {v9, v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 867
    const-string v13, "http://xmlpull.org/v1/doc/features.html#relaxed"

    const/4 v14, 0x1

    invoke-interface {v9, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 870
    :goto_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, event:I
    const/4 v13, 0x1

    if-eq v4, v13, :cond_0

    .line 871
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 873
    :pswitch_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, elementName:Ljava/lang/String;
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 875
    .local v7, namespace:Ljava/lang/String;
    invoke-static {v3, v7, v9, v12}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v13

    .line 900
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #elementName:Ljava/lang/String;
    .end local v4           #event:I
    .end local v7           #namespace:Ljava/lang/String;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #xmlBytes:[B
    :goto_1
    return-object v13

    .line 878
    .restart local v0       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v4       #event:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12       #xmlBytes:[B
    :cond_0
    const/4 v13, 0x0

    goto :goto_1

    .line 881
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #event:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v12           #xmlBytes:[B
    :cond_1
    const/4 v13, 0x2

    invoke-virtual {p0, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v2

    .line 882
    .local v2, data:[B
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(I)Ljava/lang/Object;

    move-result-object v8

    .line 883
    .local v8, o:Ljava/lang/Object;
    if-nez v8, :cond_2

    .line 884
    const/4 v13, 0x0

    goto :goto_1

    .line 886
    :cond_2
    const/4 v10, 0x0

    .line 887
    .local v10, provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    instance-of v13, v8, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-eqz v13, :cond_4

    move-object v10, v8

    .line 888
    check-cast v10, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .line 893
    :cond_3
    :goto_2
    if-eqz v10, :cond_5

    .line 894
    invoke-interface {v10}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->getProtoBufType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v11

    .line 895
    .local v11, type:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v5, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v5, v11}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 896
    .local v5, extension:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;

    .line 898
    invoke-interface {v10, v5}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v13

    goto :goto_1

    .line 889
    .end local v5           #extension:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v11           #type:Lcom/google/common/io/protocol/ProtoBufType;
    :cond_4
    instance-of v13, v8, Ljava/lang/Class;

    if-eqz v13, :cond_3

    move-object v1, v8

    .line 890
    check-cast v1, Ljava/lang/Class;

    .line 891
    .local v1, clazz:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    check-cast v10, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    .restart local v10       #provider:Lorg/jivesoftware/smack/provider/PacketExtensionProvider;
    goto :goto_2

    .line 900
    .end local v1           #clazz:Ljava/lang/Class;
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 871
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 1
    .parameter "elementName"
    .parameter "namespace"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[B)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 8
    .parameter "elementName"
    .parameter "namespace"
    .parameter "parser"
    .parameter "xmlBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 804
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v5

    .line 805
    .local v5, providerMgr:Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-virtual {v5, p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 806
    .local v4, provider:Ljava/lang/Object;
    if-eqz v4, :cond_1

    .line 807
    instance-of v7, v4, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    if-eqz v7, :cond_0

    move-object v7, v4

    .line 808
    check-cast v7, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;

    invoke-interface {v7, p2}, Lorg/jivesoftware/smack/provider/PacketExtensionProvider;->parseExtension(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v7

    .line 846
    :goto_0
    return-object v7

    .line 809
    :cond_0
    instance-of v7, v4, Ljava/lang/Class;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 810
    check-cast v7, Ljava/lang/Class;

    invoke-static {p0, v7, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smack/packet/PacketExtension;

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v5, p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getRawXmlExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 815
    instance-of v7, v4, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    if-eqz v7, :cond_2

    move-object v7, v4

    .line 816
    check-cast v7, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;

    invoke-virtual {v7, p0, p1, p3}, Lorg/jivesoftware/smack/provider/RawXmlExtensionProvider;->parseRawXml(Ljava/lang/String;Ljava/lang/String;[B)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v7

    goto :goto_0

    .line 821
    :cond_2
    new-instance v2, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    .local v2, extension:Lorg/jivesoftware/smack/packet/DefaultPacketExtension;
    const/4 v0, 0x0

    .line 823
    .local v0, done:Z
    :cond_3
    :goto_1
    if-nez v0, :cond_6

    .line 824
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 825
    .local v1, eventType:I
    const/4 v7, 0x2

    if-ne v1, v7, :cond_5

    .line 826
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, name:Ljava/lang/String;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 829
    const-string v7, ""

    invoke-virtual {v2, v3, v7}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 833
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 834
    const/4 v7, 0x4

    if-ne v1, v7, :cond_3

    .line 835
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v2, v3, v6}, Lorg/jivesoftware/smack/packet/DefaultPacketExtension;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 840
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    const/4 v7, 0x3

    if-ne v1, v7, :cond_3

    .line 841
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 842
    const/4 v0, 0x1

    goto :goto_1

    .end local v1           #eventType:I
    :cond_6
    move-object v7, v2

    .line 846
    goto :goto_0
.end method

.method public static parsePresence(Lcom/google/common/io/protocol/ProtoBuf;J)Lorg/jivesoftware/smack/packet/Packet;
    .locals 29
    .parameter "protobuf"
    .parameter "defaultAccountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 447
    const/16 v26, 0x3

    const-string v27, "ID_NOT_AVAILABLE"

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 449
    .local v13, id:Ljava/lang/String;
    const/16 v26, 0x1

    const-wide/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v20

    .line 450
    .local v20, rmqId:J
    const/16 v26, 0xd

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 451
    .local v19, rmq2Id:Ljava/lang/String;
    const/16 v26, 0xf

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v14

    .line 453
    .local v14, lastStreamId:I
    const/16 v26, 0xe

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v23

    .line 456
    .local v23, streamId:I
    const/16 v26, 0x5

    const-string v27, ""

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 457
    .local v24, to:Ljava/lang/String;
    const/16 v26, 0x4

    const-string v27, ""

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 458
    .local v11, from:Ljava/lang/String;
    const/16 v26, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getLongOrDefault(Lcom/google/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v4

    .line 461
    .local v4, accountId:J
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 462
    .local v25, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 463
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v26

    packed-switch v26, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    const/16 v26, 0x7

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getStringOrDefault(Lcom/google/common/io/protocol/ProtoBuf;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 488
    .local v22, status:Ljava/lang/String;
    const/16 v26, 0x8

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getIntOrDefault(Lcom/google/common/io/protocol/ProtoBuf;II)I

    move-result v18

    .line 490
    .local v18, priority:I
    sget-object v15, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 492
    .local v15, mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    const/16 v26, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_1

    .line 493
    const/16 v26, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v26

    packed-switch v26, :pswitch_data_1

    .line 508
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v8, 0x0

    .line 509
    .local v8, clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    const/16 v26, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 510
    const/16 v26, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v26

    packed-switch v26, :pswitch_data_2

    .line 527
    :cond_2
    :goto_2
    const/4 v7, 0x0

    .line 528
    .local v7, caps:I
    const/16 v26, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 529
    const/16 v26, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 532
    :cond_3
    const/4 v6, 0x0

    .line 533
    .local v6, avatarHash:Ljava/lang/String;
    const/16 v26, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 534
    const/16 v26, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 537
    :cond_4
    new-instance v17, Lorg/jivesoftware/smack/packet/Presence;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v15}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;Ljava/lang/String;ILorg/jivesoftware/smack/packet/Presence$Mode;)V

    .line 538
    .local v17, presence:Lorg/jivesoftware/smack/packet/Presence;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 539
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 540
    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setAccountId(J)V

    .line 541
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 542
    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence;->setRmqId(J)V

    .line 543
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setRmq2Id(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/jivesoftware/smack/packet/Presence;->setLastStreamId(I)V

    .line 545
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStreamId(I)V

    .line 546
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lorg/jivesoftware/smack/packet/Presence;->setClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)V

    .line 547
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smack/packet/Presence;->setAvatarHash(Ljava/lang/String;)V

    .line 548
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/jivesoftware/smack/packet/Presence;->setCapabilityFlag(I)V

    .line 550
    sget-object v26, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 551
    const/16 v26, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 552
    const/16 v26, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 554
    .local v9, errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-static {v9}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    .line 557
    .end local v9           #errorProtobuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v16

    .line 558
    .local v16, numExtensions:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_7

    .line 559
    const/16 v26, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Lcom/google/common/io/protocol/ProtoBuf;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v10

    .line 561
    .local v10, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-eqz v10, :cond_6

    .line 562
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    .line 558
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 465
    .end local v6           #avatarHash:Ljava/lang/String;
    .end local v7           #caps:I
    .end local v8           #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .end local v10           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v12           #i:I
    .end local v15           #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .end local v16           #numExtensions:I
    .end local v17           #presence:Lorg/jivesoftware/smack/packet/Presence;
    .end local v18           #priority:I
    .end local v22           #status:Ljava/lang/String;
    :pswitch_1
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 466
    goto/16 :goto_0

    .line 468
    :pswitch_2
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 469
    goto/16 :goto_0

    .line 471
    :pswitch_3
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 472
    goto/16 :goto_0

    .line 474
    :pswitch_4
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 475
    goto/16 :goto_0

    .line 477
    :pswitch_5
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 478
    goto/16 :goto_0

    .line 480
    :pswitch_6
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 481
    goto/16 :goto_0

    .line 483
    :pswitch_7
    sget-object v25, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    goto/16 :goto_0

    .line 497
    .restart local v15       #mode:Lorg/jivesoftware/smack/packet/Presence$Mode;
    .restart local v18       #priority:I
    .restart local v22       #status:Ljava/lang/String;
    :pswitch_8
    sget-object v15, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 498
    goto/16 :goto_1

    .line 500
    :pswitch_9
    sget-object v15, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 501
    goto/16 :goto_1

    .line 503
    :pswitch_a
    sget-object v15, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    goto/16 :goto_1

    .line 512
    .restart local v8       #clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;
    :pswitch_b
    sget-object v8, Lorg/jivesoftware/smack/packet/Presence$ClientType;->ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 513
    goto/16 :goto_2

    .line 515
    :pswitch_c
    sget-object v8, Lorg/jivesoftware/smack/packet/Presence$ClientType;->MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 516
    goto/16 :goto_2

    .line 566
    .restart local v6       #avatarHash:Ljava/lang/String;
    .restart local v7       #caps:I
    .restart local v12       #i:I
    .restart local v16       #numExtensions:I
    .restart local v17       #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_7
    return-object v17

    .line 463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 493
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 510
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 19
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 378
    const-string v17, ""

    const-string v18, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/Presence$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v16

    .line 380
    .local v16, type:Lorg/jivesoftware/smack/packet/Presence$Type;
    new-instance v11, Lorg/jivesoftware/smack/packet/Presence;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 381
    .local v11, presence:Lorg/jivesoftware/smack/packet/Presence;
    const-string v17, ""

    const-string v18, "to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    .line 382
    const-string v17, ""

    const-string v18, "from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Ljava/lang/String;)V

    .line 383
    const-string v17, ""

    const-string v18, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, id:Ljava/lang/String;
    if-nez v8, :cond_0

    const-string v8, "ID_NOT_AVAILABLE"

    .end local v8           #id:Ljava/lang/String;
    :cond_0
    invoke-virtual {v11, v8}, Lorg/jivesoftware/smack/packet/Presence;->setPacketID(Ljava/lang/String;)V

    .line 386
    const-string v17, ""

    const-string v18, "stanza-id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseRmqIdFromString(Ljava/lang/String;)J

    move-result-wide v14

    .line 388
    .local v14, rmqId:J
    invoke-virtual {v11, v14, v15}, Lorg/jivesoftware/smack/packet/Presence;->setRmqId(J)V

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, done:Z
    :cond_1
    :goto_0
    if-nez v3, :cond_8

    .line 393
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 394
    .local v5, eventType:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_7

    .line 395
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, elementName:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    .line 397
    .local v10, namespace:Ljava/lang/String;
    const-string v17, "status"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 398
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_2
    const-string v17, "priority"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 402
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 403
    .local v12, priority:I
    invoke-virtual {v11, v12}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 405
    .end local v12           #priority:I
    :catch_0
    move-exception v17

    goto :goto_0

    .line 406
    :catch_1
    move-exception v7

    .line 408
    .local v7, iae:Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    goto :goto_0

    .line 411
    .end local v7           #iae:Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 412
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lorg/jivesoftware/smack/packet/Presence$Mode;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_0

    .line 414
    :cond_4
    const-string v17, "error"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 415
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/XMPPError;)V

    goto :goto_0

    .line 417
    :cond_5
    const-string v17, "properties"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 420
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;

    move-result-object v13

    .line 422
    .local v13, properties:Ljava/util/Map;
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 423
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 424
    .local v9, name:Ljava/lang/String;
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v9, v0}, Lorg/jivesoftware/smack/packet/Presence;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 429
    .end local v6           #i:Ljava/util/Iterator;
    .end local v9           #name:Ljava/lang/String;
    .end local v13           #properties:Ljava/util/Map;
    :cond_6
    move-object/from16 v0, p0

    invoke-static {v4, v10, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    goto/16 :goto_0

    .line 433
    .end local v4           #elementName:Ljava/lang/String;
    .end local v10           #namespace:Ljava/lang/String;
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_1

    .line 434
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "presence"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 435
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 439
    .end local v5           #eventType:I
    :cond_8
    return-object v11
.end method

.method public static parseProperties(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Map;
    .locals 12
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 620
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 622
    .local v4, properties:Ljava/util/Map;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 623
    .local v2, eventType:I
    if-ne v2, v10, :cond_b

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "property"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, done:Z
    const/4 v3, 0x0

    .line 627
    .local v3, name:Ljava/lang/String;
    const/4 v5, 0x0

    .line 628
    .local v5, type:Ljava/lang/String;
    const/4 v7, 0x0

    .line 629
    .local v7, valueText:Ljava/lang/String;
    const/4 v6, 0x0

    .line 630
    :cond_1
    :goto_0
    if-nez v0, :cond_0

    .line 631
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 632
    if-ne v2, v10, :cond_3

    .line 633
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, elementName:Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 635
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 637
    :cond_2
    const-string v8, "value"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 638
    const-string v8, ""

    const-string v9, "type"

    invoke-interface {p0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 642
    .end local v1           #elementName:Ljava/lang/String;
    :cond_3
    if-ne v2, v11, :cond_1

    .line 643
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "property"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 644
    const-string v8, "integer"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 645
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 674
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v6, :cond_5

    .line 675
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 647
    :cond_6
    const-string v8, "long"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 648
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .local v6, value:Ljava/lang/Long;
    goto :goto_1

    .line 650
    .end local v6           #value:Ljava/lang/Long;
    :cond_7
    const-string v8, "float"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 651
    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    .local v6, value:Ljava/lang/Float;
    goto :goto_1

    .line 653
    .end local v6           #value:Ljava/lang/Float;
    :cond_8
    const-string v8, "double"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 654
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .local v6, value:Ljava/lang/Double;
    goto :goto_1

    .line 656
    .end local v6           #value:Ljava/lang/Double;
    :cond_9
    const-string v8, "boolean"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 657
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    .local v6, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 659
    .end local v6           #value:Ljava/lang/Boolean;
    :cond_a
    const-string v8, "string"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 660
    move-object v6, v7

    .local v6, value:Ljava/lang/String;
    goto :goto_1

    .line 682
    .end local v0           #done:Z
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #type:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    .end local v7           #valueText:Ljava/lang/String;
    :cond_b
    if-ne v2, v11, :cond_0

    .line 683
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "properties"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 688
    return-object v4
.end method

.method public static parseRmqIdFromString(Ljava/lang/String;)J
    .locals 6
    .parameter "idStr"

    .prologue
    .line 904
    const-wide/16 v1, -0x1

    .line 908
    .local v1, retVal:J
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 910
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 916
    :cond_0
    :goto_0
    return-wide v1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "Smack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseRmqIdFromString caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static parseWithIntrospection(Ljava/lang/String;Ljava/lang/Class;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 2
    .parameter "elementName"
    .parameter "objectClass"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, done:Z
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 946
    .local v1, object:Ljava/lang/Object;
    return-object v1
.end method

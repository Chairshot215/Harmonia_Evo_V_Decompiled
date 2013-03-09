.class public abstract Lorg/jivesoftware/smack/packet/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field private static id:J

.field private static prefix:Ljava/lang/String;


# instance fields
.field private accountId:J

.field private error:Lorg/jivesoftware/smack/packet/XMPPError;

.field private from:Ljava/lang/String;

.field private lastStreamId:I

.field private packetExtensions:Ljava/util/List;

.field private packetID:Ljava/lang/String;

.field private properties:Ljava/util/Map;

.field private rmq2Id:Ljava/lang/String;

.field private rmqId:J

.field private streamId:I

.field private to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/packet/Packet;->prefix:Ljava/lang/String;

    .line 78
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/jivesoftware/smack/packet/Packet;->id:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    .line 94
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    .line 95
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 98
    iput-wide v2, p0, Lorg/jivesoftware/smack/packet/Packet;->rmqId:J

    .line 101
    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->rmq2Id:Ljava/lang/String;

    .line 104
    iput v1, p0, Lorg/jivesoftware/smack/packet/Packet;->lastStreamId:I

    .line 107
    iput v1, p0, Lorg/jivesoftware/smack/packet/Packet;->streamId:I

    .line 110
    iput-wide v2, p0, Lorg/jivesoftware/smack/packet/Packet;->accountId:J

    return-void
.end method

.method private static declared-synchronized nextID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 87
    const-class v1, Lorg/jivesoftware/smack/packet/Packet;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/jivesoftware/smack/packet/Packet;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lorg/jivesoftware/smack/packet/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lorg/jivesoftware/smack/packet/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V
    .locals 1
    .parameter "extension"

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    .line 319
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized addExtensionsToProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    .locals 4
    .parameter "field"
    .parameter "protobuf"

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v2

    .line 576
    .local v2, extensions:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 577
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 578
    .local v1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 579
    .local v0, extPB:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p2, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 575
    .end local v0           #extPB:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v1           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v2           #extensions:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 583
    .restart local v2       #extensions:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, Lorg/jivesoftware/smack/packet/Packet;->accountId:J

    return-wide v0
.end method

.method public getError()Lorg/jivesoftware/smack/packet/XMPPError;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    return-object v0
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;
    .locals 4
    .parameter "elementName"
    .parameter "namespace"

    .prologue
    const/4 v2, 0x0

    .line 298
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v2

    .line 307
    :goto_0
    monitor-exit p0

    return-object v0

    .line 301
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 303
    .local v0, ext:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .end local v0           #ext:Lorg/jivesoftware/smack/packet/PacketExtension;
    :cond_3
    move-object v0, v2

    .line 307
    goto :goto_0

    .line 298
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getExtensions()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getExtensionsXML()Ljava/lang/String;
    .locals 8

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 503
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->getExtensions()Ljava/util/Iterator;

    move-result-object v2

    .line 504
    .local v2, extensions:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 505
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/PacketExtension;

    .line 506
    .local v1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 501
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    .end local v2           #extensions:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 509
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v2       #extensions:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 510
    const-string v6, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->getPropertyNames()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 513
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 514
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/packet/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 515
    .local v5, value:Ljava/lang/Object;
    const-string v6, "<property>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v6, "<name>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</name>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    const-string v6, "<value type=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 519
    const-string v6, "integer\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    .end local v5           #value:Ljava/lang/Object;
    :cond_1
    :goto_2
    const-string v6, "</property>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 521
    .restart local v5       #value:Ljava/lang/Object;
    :cond_2
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_3

    .line 522
    const-string v6, "long\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 524
    :cond_3
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_4

    .line 525
    const-string v6, "float\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 527
    :cond_4
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 528
    const-string v6, "double\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 530
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 531
    const-string v6, "boolean\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "</value>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 533
    :cond_6
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 534
    const-string v6, "string\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    check-cast v5, Ljava/lang/String;

    .end local v5           #value:Ljava/lang/Object;
    invoke-static {v5}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    const-string v6, "</value>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 568
    .end local v4           #name:Ljava/lang/String;
    :cond_7
    const-string v6, "</properties>"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    .end local v3           #i:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLastStreamId()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/jivesoftware/smack/packet/Packet;->lastStreamId:I

    return v0
.end method

.method public getPacketID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-string v0, "ID_NOT_AVAILABLE"

    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 124
    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 126
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    goto :goto_0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x0

    .line 346
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropertyNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 435
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 437
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRmq2Id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->rmq2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getRmqId()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lorg/jivesoftware/smack/packet/Packet;->rmqId:J

    return-wide v0
.end method

.method public getStreamId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/jivesoftware/smack/packet/Packet;->streamId:I

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method protected redactString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "orig"

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[REDACT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public serializeAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;)[B
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 480
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-interface {p1, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v1

    return-object v1
.end method

.method public serializeAsXml()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public setAccountId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 204
    iput-wide p1, p0, Lorg/jivesoftware/smack/packet/Packet;->accountId:J

    .line 205
    return-void
.end method

.method public setError(Lorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 268
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->error:Lorg/jivesoftware/smack/packet/XMPPError;

    .line 269
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->from:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setLastStreamId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 174
    iput p1, p0, Lorg/jivesoftware/smack/packet/Packet;->lastStreamId:I

    .line 175
    return-void
.end method

.method public setPacketID(Ljava/lang/String;)V
    .locals 0
    .parameter "packetID"

    .prologue
    .line 136
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->packetID:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Ljava/io/Serializable;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    .line 413
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    monitor-exit p0

    return-void
.end method

.method public setRmq2Id(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 159
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->rmq2Id:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setRmqId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 144
    iput-wide p1, p0, Lorg/jivesoftware/smack/packet/Packet;->rmqId:J

    .line 145
    return-void
.end method

.method public setStreamId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 189
    iput p1, p0, Lorg/jivesoftware/smack/packet/Packet;->streamId:I

    .line 190
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .parameter "to"

    .prologue
    .line 226
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Packet;->to:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
.end method

.method public abstract toXML()Ljava/lang/String;
.end method

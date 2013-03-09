.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "RmqPacket.java"


# instance fields
.field final mData:[B

.field mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

.field final mProtobufTag:B


# direct methods
.method public constructor <init>(JB[B)V
    .locals 1
    .parameter "rmqId"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setRmqId(J)V

    .line 59
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setRmq2Id(Ljava/lang/String;)V

    .line 61
    iput-byte p3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    .line 62
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Packet;JB[B)V
    .locals 0
    .parameter "originalPacket"
    .parameter "rmqId"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 52
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(JB[B)V

    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    .line 54
    return-void
.end method

.method private internalToXml()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    const/4 v11, -0x1

    .line 112
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v2, buf:Ljava/lang/StringBuffer;
    const-string v9, "<rmqPacket"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getRmqId()J

    move-result-wide v6

    .line 116
    .local v6, rmqId:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getRmq2Id()Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getLastStreamId()I

    move-result v3

    .line 118
    .local v3, lastStreamId:I
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getStreamId()I

    move-result v8

    .line 119
    .local v8, streamId:I
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getAccountId()J

    move-result-wide v0

    .line 120
    .local v0, accountId:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, packetId:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 123
    const-string v9, " packetId=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    cmp-long v9, v0, v12

    if-eqz v9, :cond_1

    .line 127
    const-string v9, " account_id=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_1
    cmp-long v9, v6, v12

    if-eqz v9, :cond_2

    .line 131
    const/16 v9, 0x20

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "stanza-id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 135
    const-string v9, " persistent_id=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    :cond_3
    if-eq v3, v11, :cond_4

    .line 139
    const-string v9, " last_stream_id=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_4
    if-eq v8, v11, :cond_5

    .line 144
    const-string v9, " stream_id=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_5
    const-string v9, " />"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method


# virtual methods
.method getData()[B
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    return-object v0
.end method

.method public getOriginalPacket()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    return-object v0
.end method

.method public getProtoBufTag()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    return v0
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
    .line 182
    iget-byte v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    .line 191
    :goto_0
    return-object v1

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 187
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_1

    .line 188
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public serializeAsXml()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLastStreamId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setStreamId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->internalToXml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-byte v6, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    if-nez v6, :cond_0

    move-object v3, v5

    .line 174
    :goto_0
    return-object v3

    .line 162
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    .line 163
    .local v0, config:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;
    iget-byte v6, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    invoke-interface {v0, v6}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->getProtoBuf(B)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    .line 165
    .local v4, type:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 166
    .local v3, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    array-length v8, v8

    invoke-direct {v1, v6, v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 169
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    move-object v3, v5

    .line 171
    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->internalToXml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

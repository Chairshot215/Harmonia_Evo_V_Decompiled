.class public Lorg/jivesoftware/smack/packet/TalkMetadataPacket;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "TalkMetadataPacket.java"


# instance fields
.field private final mForeground:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "foreground"

    .prologue
    .line 12
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 13
    iput-boolean p1, p0, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->mForeground:Z

    .line 14
    return-void
.end method


# virtual methods
.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->TALK_METADATA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 61
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->mForeground:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 63
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x20

    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 19
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v6, "<iq"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getPacketID()Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, packetId:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getTo()Ljava/lang/String;

    move-result-object v5

    .line 23
    .local v5, to:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getRmq2Id()Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getLastStreamId()I

    move-result v1

    .line 25
    .local v1, lastStreamId:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getStreamId()I

    move-result v4

    .line 27
    .local v4, streamId:I
    const-string v6, " type=GET"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    if-eqz v2, :cond_0

    .line 30
    const-string v6, " id=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :cond_0
    if-eqz v5, :cond_1

    .line 34
    const-string v6, " to=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    :cond_1
    const-string v6, " account-id=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->getAccountId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "persistent_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_2
    if-eq v1, v10, :cond_3

    .line 45
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "last_stream_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    :cond_3
    if-eq v4, v10, :cond_4

    .line 49
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "stream_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    :cond_4
    const-string v6, " foreground=\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jivesoftware/smack/packet/TalkMetadataPacket;->mForeground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\" />"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

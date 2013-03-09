.class public abstract Lorg/jivesoftware/smack/packet/IQ;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/IQ$Type;
    }
.end annotation


# instance fields
.field private type:Lorg/jivesoftware/smack/packet/IQ$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 50
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 230
    return-void
.end method


# virtual methods
.method public abstract getChildElementXML()Ljava/lang/String;
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, xml:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 217
    :goto_0
    return-object v0

    .line 213
    :cond_0
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->EXTENSION:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 214
    .local v0, extension:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 216
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/IQ$Type;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    return-object v0
.end method

.method public setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    goto :goto_0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 12

    .prologue
    .line 149
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v9, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->IQ_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v9}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 151
    .local v4, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 153
    const/4 v9, 0x3

    invoke-virtual {v4, v9, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, to:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 158
    const/4 v9, 0x5

    invoke-virtual {v4, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 161
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, from:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 163
    const/4 v9, 0x4

    invoke-virtual {v4, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 166
    :cond_2
    const/16 v9, 0xb

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getAccountId()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 168
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getRmq2Id()Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, rmq2Id:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 170
    const/16 v9, 0x8

    invoke-virtual {v4, v9, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 178
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getLastStreamId()I

    move-result v3

    .line 179
    .local v3, lastStreamId:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 180
    const/16 v9, 0xa

    invoke-virtual {v4, v9, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 183
    :cond_4
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 184
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 196
    :goto_1
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v10, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v9, v10, :cond_5

    .line 197
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 198
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v0, :cond_5

    .line 199
    const/4 v9, 0x6

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 204
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_5
    const/4 v9, 0x7

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 205
    return-object v4

    .line 172
    .end local v3           #lastStreamId:I
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getRmqId()J

    move-result-wide v6

    .line 173
    .local v6, rmqId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-eqz v9, :cond_3

    .line 174
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0

    .line 185
    .end local v6           #rmqId:J
    .restart local v3       #lastStreamId:I
    :cond_7
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 186
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 187
    :cond_8
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 188
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 189
    :cond_9
    sget-object v9, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 190
    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 193
    :cond_a
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1
.end method

.method public toXML()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v11, "<iq xmlns=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "jabber:client"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, packetId:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getTo()Ljava/lang/String;

    move-result-object v10

    .line 83
    .local v10, to:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, from:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 86
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getRmqId()J

    move-result-wide v7

    .line 92
    .local v7, rmqId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v7, v11

    if-eqz v11, :cond_1

    .line 93
    const-string v11, "stanza-id"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getRmq2Id()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, rmq2Id:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 98
    const-string v11, "persistent_id=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getLastStreamId()I

    move-result v3

    .line 102
    .local v3, lastStreamId:I
    if-eq v3, v13, :cond_3

    .line 103
    const-string v11, "last_stream_id=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_3
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getStreamId()I

    move-result v9

    .line 107
    .local v9, streamId:I
    if-eq v9, v13, :cond_4

    .line 108
    const-string v11, "stream_id=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_4
    if-eqz v10, :cond_5

    .line 112
    const-string v11, "to=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-static {v10}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    :cond_5
    if-eqz v2, :cond_6

    .line 115
    const-string v11, "from=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    :cond_6
    const-string v11, "account-id=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getAccountId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget-object v11, p0, Lorg/jivesoftware/smack/packet/IQ;->type:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eqz v11, :cond_7

    .line 122
    const-string v11, "type=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    :cond_7
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, queryXML:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 127
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    :cond_8
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/IQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .line 131
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v1, :cond_9

    .line 132
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_9
    const-string v11, "</iq>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.class public Lorg/jivesoftware/smack/packet/BatchPresence;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "BatchPresence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/BatchPresence$Type;
    }
.end annotation


# instance fields
.field private mPresenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Lorg/jivesoftware/smack/packet/BatchPresence$Type;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mPresenceList:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/BatchPresence;->setType(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addPresenceStanza(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .parameter "presence"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mPresenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public getNumPresenceStanzas()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mPresenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPresenceStanzaList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mPresenceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setType(Lorg/jivesoftware/smack/packet/BatchPresence$Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mType:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    .line 47
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 8

    .prologue
    .line 122
    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->BATCH_PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 124
    .local v2, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPacketID()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, id:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "ID_NOT_AVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 126
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getTo()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, to:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    const/4 v5, 0x2

    invoke-virtual {v2, v5, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 135
    :cond_1
    const/16 v5, 0x8

    iget-object v6, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mType:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->ordinal()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 138
    const/4 v5, 0x7

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getAccountId()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 140
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getRmq2Id()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, rmq2Id:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 142
    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 145
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getLastStreamId()I

    move-result v1

    .line 146
    .local v1, lastStreamId:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3

    .line 147
    const/4 v5, 0x6

    invoke-virtual {v2, v5, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 150
    :cond_3
    return-object v2
.end method

.method public toXML()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x20

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v9, "<iq"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, packetId:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getTo()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, to:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getRmq2Id()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getLastStreamId()I

    move-result v3

    .line 81
    .local v3, lastStreamId:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getStreamId()I

    move-result v7

    .line 83
    .local v7, streamId:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mType:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    sget-object v11, Lorg/jivesoftware/smack/packet/BatchPresence$Type;->GET:Lorg/jivesoftware/smack/packet/BatchPresence$Type;

    if-ne v9, v11, :cond_5

    const-string v9, "GET"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-eqz v4, :cond_0

    .line 86
    const-string v9, " id=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_0
    if-eqz v8, :cond_1

    .line 90
    const-string v9, " to=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_1
    const-string v9, " account-id=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getAccountId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\" "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    if-eqz v6, :cond_2

    .line 97
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "persistent_id=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_2
    if-eq v3, v13, :cond_3

    .line 101
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "last_stream_id=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_3
    if-eq v7, v13, :cond_4

    .line 105
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "stream_id=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_4
    const-string v9, "><mp:batch xmlns:mp=\"google:mobile:presence\">"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/BatchPresence;->getNumPresenceStanzas()I

    move-result v1

    .line 111
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_6

    .line 112
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/BatchPresence;->mPresenceList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Presence;

    .line 113
    .local v5, presence:Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Presence;->toXML()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #presence:Lorg/jivesoftware/smack/packet/Presence;
    :cond_5
    const-string v9, "SET"

    goto/16 :goto_0

    .line 116
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_6
    const-string v9, "</mp:batch></iq>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

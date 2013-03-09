.class public Lcom/google/android/gm/provider/CompactSenderInstructions;
.super Ljava/lang/Object;
.source "CompactSenderInstructions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/CompactSenderInstructions$1;
    }
.end annotation


# instance fields
.field private mHasErrors:Z

.field private mHasSending:Z

.field private mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions;

    invoke-direct {v0}, Lcom/google/android/gm/provider/SenderInstructions;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    .line 24
    iput-boolean v1, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasSending:Z

    .line 27
    iput-boolean v1, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasErrors:Z

    return-void
.end method

.method private static appendElided(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 221
    const-string v0, "e"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 223
    return-void
.end method

.method private static appendNumDrafts(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "builder"
    .parameter "numDrafts"

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    const-string v0, "d"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    :cond_0
    return-void
.end method

.method private static appendNumMessages(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "builder"
    .parameter "numMessages"

    .prologue
    .line 193
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 194
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    return-void
.end method

.method private static appendSendFailed(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .parameter "builder"
    .parameter "sendFailed"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    return-void
.end method

.method private static appendSender(Ljava/lang/StringBuilder;ZILjava/lang/String;Z)V
    .locals 1
    .parameter "builder"
    .parameter "unread"
    .parameter "priority"
    .parameter "name"
    .parameter "useShortNames"

    .prologue
    .line 212
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    if-eqz p4, :cond_0

    invoke-static {p3}, Lcom/google/android/gm/provider/CompactSenderInstructions;->shortNameFromLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3
    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    return-void

    .line 212
    .restart local p3
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static appendSending(Ljava/lang/StringBuilder;Z)V
    .locals 1
    .parameter "builder"
    .parameter "hasSending"

    .prologue
    .line 179
    if-eqz p1, :cond_0

    .line 180
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->SENDER_LIST_SEPARATOR:Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    :cond_0
    return-void
.end method

.method private static constructString(Ljava/util/Collection;IIIZZ)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "numMessages"
    .parameter "numDrafts"
    .parameter "numVisibleSenders"
    .parameter "hasSending"
    .parameter "hasErrors"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/SenderInstructions$Sender;",
            ">;IIIZZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, senders:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/SenderInstructions$Sender;>;"
    const/4 v4, 0x1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, p4}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendSending(Ljava/lang/StringBuilder;Z)V

    .line 154
    invoke-static {v0, p5}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendSendFailed(Ljava/lang/StringBuilder;Z)V

    .line 155
    invoke-static {v0, p1}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendNumMessages(Ljava/lang/StringBuilder;I)V

    .line 156
    invoke-static {v0, p2}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendNumDrafts(Ljava/lang/StringBuilder;I)V

    .line 158
    if-le p3, v4, :cond_1

    .line 159
    .local v4, useShortNames:Z
    :goto_0
    const/4 v1, 0x0

    .line 160
    .local v1, elided:Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    .line 161
    .local v3, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    sget-object v5, Lcom/google/android/gm/provider/CompactSenderInstructions$1;->$SwitchMap$com$google$android$gm$provider$SenderInstructions$Visibility:[I

    iget-object v6, v3, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    invoke-virtual {v6}, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 163
    :pswitch_0
    iget-boolean v5, v3, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    iget v6, v3, Lcom/google/android/gm/provider/SenderInstructions$Sender;->priority:I

    iget-object v7, v3, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    invoke-static {v0, v5, v6, v7, v4}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendSender(Ljava/lang/StringBuilder;ZILjava/lang/String;Z)V

    .line 165
    const/4 v1, 0x0

    .line 166
    goto :goto_1

    .line 158
    .end local v1           #elided:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    .end local v4           #useShortNames:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 168
    .restart local v1       #elided:Z
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    .restart local v4       #useShortNames:Z
    :pswitch_1
    if-nez v1, :cond_0

    .line 169
    invoke-static {v0}, Lcom/google/android/gm/provider/CompactSenderInstructions;->appendElided(Ljava/lang/StringBuilder;)V

    .line 170
    const/4 v1, 0x1

    goto :goto_1

    .line 175
    .end local v3           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static instructionsStringFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 13
    .parameter "senderInstructions"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 89
    .local v1, numMessages:I
    invoke-virtual {p0, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 91
    .local v2, numDrafts:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 93
    .local v0, senders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/SenderInstructions$Sender;>;"
    const/4 v3, 0x0

    .line 94
    .local v3, numVisibleSenders:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 95
    .local v9, senderProtos:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/io/protocol/ProtoBuf;>;"
    invoke-static {p0, v12, v9}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 98
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/io/protocol/ProtoBuf;

    .line 99
    .local v8, senderProto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v8, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    new-instance v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    invoke-direct {v7}, Lcom/google/android/gm/provider/SenderInstructions$Sender;-><init>()V

    .line 102
    .local v7, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    sget-object v5, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v5, v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 103
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v7           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_0
    new-instance v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    invoke-direct {v7}, Lcom/google/android/gm/provider/SenderInstructions$Sender;-><init>()V

    .line 106
    .restart local v7       #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    invoke-virtual {v8, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v5

    iput-boolean v5, v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    .line 108
    invoke-virtual {v8, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    iput v5, v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;->priority:I

    .line 110
    const/4 v5, 0x4

    invoke-virtual {v8, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    .line 112
    sget-object v5, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v5, v7, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 113
    add-int/lit8 v3, v3, 0x1

    .line 114
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v7           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    .end local v8           #senderProto:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    move v5, v4

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/CompactSenderInstructions;->constructString(Ljava/util/Collection;IIIZZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static instructionsStringFromXml(Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;)Ljava/lang/String;
    .locals 11
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 50
    const/4 v7, 0x0

    .line 52
    .local v7, namespace:Ljava/lang/String;
    const-string v5, "numMessages"

    invoke-virtual {p0, v10, v5}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 53
    .local v1, numMessages:I
    const-string v5, "numDrafts"

    invoke-virtual {p0, v10, v5}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 54
    .local v2, numDrafts:I
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, senders:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/SenderInstructions$Sender;>;"
    const/4 v3, 0x0

    .line 57
    .local v3, numVisibleSenders:I
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getDepth()I

    move-result v6

    .line 58
    .local v6, depth:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->nextTag(I)Ljava/lang/String;

    move-result-object v9

    .local v9, tag:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 59
    const-string v5, "sender"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    new-instance v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    invoke-direct {v8}, Lcom/google/android/gm/provider/SenderInstructions$Sender;-><init>()V

    .line 61
    .local v8, sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    const-string v5, "unread"

    invoke-virtual {p0, v7, v5}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;->unread:Z

    .line 62
    const-string v5, "priority"

    invoke-virtual {p0, v7, v5}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getIntAttribute(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;->priority:I

    .line 63
    const-string v5, "name"

    invoke-virtual {p0, v7, v5}, Lcom/google/wireless/gdata2/parser/xml/SimplePullParser;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;->name:Ljava/lang/String;

    .line 64
    sget-object v5, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v5, v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 65
    add-int/lit8 v3, v3, 0x1

    .line 66
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v5, v4

    .line 61
    goto :goto_1

    .line 67
    .end local v8           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_2
    const-string v5, "elided"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;

    invoke-direct {v8}, Lcom/google/android/gm/provider/SenderInstructions$Sender;-><init>()V

    .line 69
    .restart local v8       #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    sget-object v5, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    iput-object v5, v8, Lcom/google/android/gm/provider/SenderInstructions$Sender;->visibility:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 70
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v8           #sender:Lcom/google/android/gm/provider/SenderInstructions$Sender;
    :cond_3
    move v5, v4

    .line 74
    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/CompactSenderInstructions;->constructString(Ljava/util/Collection;IIIZZ)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static shortNameFromLongName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "fullName"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 233
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 234
    const-string v9, "\""

    invoke-virtual {p0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "\""

    invoke-virtual {p0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v11, :cond_0

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 239
    :cond_0
    move-object v5, p0

    .line 245
    .local v5, tempName:Ljava/lang/String;
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 246
    .local v1, commaIndex:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v1, v9, :cond_2

    .line 247
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 248
    .local v4, partBeforeComma:Ljava/lang/String;
    const-string v9, "\\s+"

    invoke-static {v4, v9}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 249
    .local v8, wordsBeforeComma:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, numNonAbbrev:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_1

    .line 252
    aget-object v6, v8, v2

    .line 253
    .local v6, word:Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 254
    add-int/lit8 v3, v3, 0x1

    .line 255
    if-lt v3, v11, :cond_4

    .line 260
    .end local v6           #word:Ljava/lang/String;
    :cond_1
    if-ne v3, v10, :cond_2

    .line 261
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 267
    .end local v2           #i:I
    .end local v3           #numNonAbbrev:I
    .end local v4           #partBeforeComma:Ljava/lang/String;
    .end local v8           #wordsBeforeComma:[Ljava/lang/String;
    :cond_2
    const-string v0, "the "

    .line 268
    .local v0, THE_WITH_SPACE:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, "the "

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 269
    const-string v9, "the "

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 273
    :cond_3
    const-string v9, "\\s+"

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 274
    .local v7, words:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v9, v7

    if-ge v2, v9, :cond_6

    .line 275
    aget-object v6, v7, v2

    .line 276
    .restart local v6       #word:Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 282
    .end local v6           #word:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 251
    .end local v0           #THE_WITH_SPACE:Ljava/lang/String;
    .end local v7           #words:[Ljava/lang/String;
    .restart local v3       #numNonAbbrev:I
    .restart local v4       #partBeforeComma:Ljava/lang/String;
    .restart local v6       #word:Ljava/lang/String;
    .restart local v8       #wordsBeforeComma:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v3           #numNonAbbrev:I
    .end local v4           #partBeforeComma:Ljava/lang/String;
    .end local v8           #wordsBeforeComma:[Ljava/lang/String;
    .restart local v0       #THE_WITH_SPACE:Ljava/lang/String;
    .restart local v7       #words:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6           #word:Ljava/lang/String;
    :cond_6
    move-object v6, p0

    .line 282
    goto :goto_2
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;ZZZZZ)V
    .locals 3
    .parameter "fromAddress"
    .parameter "draft"
    .parameter "unread"
    .parameter "sentByMe"
    .parameter "sending"
    .parameter "failedToSend"

    .prologue
    const/4 v0, 0x1

    .line 137
    if-eqz p5, :cond_2

    .line 138
    iput-boolean v0, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasSending:Z

    .line 142
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    if-nez p1, :cond_3

    const/4 v1, 0x0

    :goto_1
    if-nez p4, :cond_1

    if-nez p5, :cond_1

    if-eqz p6, :cond_4

    :cond_1
    :goto_2
    invoke-virtual {v2, v1, p2, p3, v0}, Lcom/google/android/gm/provider/SenderInstructions;->addMessage(Ljava/lang/String;ZZZ)V

    .line 145
    return-void

    .line 139
    :cond_2
    if-eqz p6, :cond_0

    .line 140
    iput-boolean v0, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasErrors:Z

    goto :goto_0

    .line 142
    :cond_3
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getNameFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public toInstructionString(I)Ljava/lang/String;
    .locals 6
    .parameter "maxSenders"

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/SenderInstructions;->calculateVisibility(I)V

    .line 34
    iget-object v1, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/SenderInstructions;->getSenders()Ljava/util/Collection;

    move-result-object v0

    .line 35
    .local v0, senders:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/provider/SenderInstructions$Sender;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/SenderInstructions;->getNumDrafts()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mSenderInstructions:Lcom/google/android/gm/provider/SenderInstructions;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/SenderInstructions;->getNumVisible()I

    move-result v3

    iget-boolean v4, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasSending:Z

    iget-boolean v5, p0, Lcom/google/android/gm/provider/CompactSenderInstructions;->mHasErrors:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/CompactSenderInstructions;->constructString(Ljava/util/Collection;IIIZZ)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

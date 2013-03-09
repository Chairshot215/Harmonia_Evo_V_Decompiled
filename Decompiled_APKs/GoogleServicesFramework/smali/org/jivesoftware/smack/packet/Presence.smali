.class public Lorg/jivesoftware/smack/packet/Presence;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/Presence$ClientType;,
        Lorg/jivesoftware/smack/packet/Presence$Mode;,
        Lorg/jivesoftware/smack/packet/Presence$Type;
    }
.end annotation


# instance fields
.field private avatarHash:Ljava/lang/String;

.field private capabilityFlag:I

.field private clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

.field private mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field private priority:I

.field private status:Ljava/lang/String;

.field private type:Lorg/jivesoftware/smack/packet/Presence$Type;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 67
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 68
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 69
    iput v2, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 70
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 71
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 72
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    .line 75
    iput v2, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    .line 84
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Presence$Type;Ljava/lang/String;ILorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 3
    .parameter "type"
    .parameter "status"
    .parameter "priority"
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 67
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 68
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 69
    iput v2, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 70
    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 71
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 72
    iput-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    .line 75
    iput v2, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    .line 96
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 97
    iput-object p2, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 98
    iput p3, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 99
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 100
    return-void
.end method


# virtual methods
.method public getAvatarHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilityFlag()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    return v0
.end method

.method public getClientType()Lorg/jivesoftware/smack/packet/Presence$ClientType;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    return-object v0
.end method

.method public getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smack/packet/Presence$Type;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    return-object v0
.end method

.method public setAvatarHash(Ljava/lang/String;)V
    .locals 0
    .parameter "hash"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setCapabilityFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 204
    iput p1, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    .line 205
    return-void
.end method

.method public setClientType(Lorg/jivesoftware/smack/packet/Presence$ClientType;)V
    .locals 0
    .parameter "clientType"

    .prologue
    .line 188
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 189
    return-void
.end method

.method public setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 180
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 181
    return-void
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 157
    const/16 v0, -0x80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-le p1, v0, :cond_1

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid. Valid range is -128 through 128."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    iput p1, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    .line 162
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 138
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 12

    .prologue
    .line 297
    new-instance v4, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v9, Lcom/google/android/gsf/gtalkservice/proto/GtalkCoreMessageTypes;->PRESENCE_STANZA:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v9}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 299
    .local v4, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, id:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ID_NOT_AVAILABLE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 301
    const/4 v9, 0x3

    invoke-virtual {v4, v9, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 304
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v8

    .line 305
    .local v8, to:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 306
    const/4 v9, 0x5

    invoke-virtual {v4, v9, v8}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 309
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, from:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 311
    const/4 v9, 0x4

    invoke-virtual {v4, v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 315
    :cond_2
    const/16 v9, 0x11

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getAccountId()J

    move-result-wide v10

    invoke-virtual {v4, v9, v10, v11}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 317
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getRmq2Id()Ljava/lang/String;

    move-result-object v5

    .line 318
    .local v5, rmq2Id:Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 319
    const/16 v9, 0xd

    invoke-virtual {v4, v9, v5}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 327
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getLastStreamId()I

    move-result v3

    .line 328
    .local v3, lastStreamId:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_4

    .line 329
    const/16 v9, 0xf

    invoke-virtual {v4, v9, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 334
    :cond_4
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->UNAVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 335
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 357
    :cond_5
    :goto_1
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 358
    const/4 v9, 0x7

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 361
    :cond_6
    iget v9, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    if-eqz v9, :cond_7

    .line 362
    const/16 v9, 0x8

    iget v10, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 365
    :cond_7
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Mode;->AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 366
    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 388
    :cond_8
    :goto_2
    iget-object v9, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v10, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v9, v10, :cond_9

    .line 389
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    .line 390
    .local v0, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v0, :cond_9

    .line 391
    const/16 v9, 0x9

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 397
    .end local v0           #error:Lorg/jivesoftware/smack/packet/XMPPError;
    :cond_9
    const/16 v9, 0xa

    invoke-virtual {p0, v9, v4}, Lorg/jivesoftware/smack/packet/Presence;->addExtensionsToProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 398
    return-object v4

    .line 321
    .end local v3           #lastStreamId:I
    :cond_a
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getRmqId()J

    move-result-wide v6

    .line 322
    .local v6, rmqId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v6, v9

    if-eqz v9, :cond_3

    .line 323
    const/4 v9, 0x1

    invoke-virtual {v4, v9, v6, v7}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    goto :goto_0

    .line 337
    .end local v6           #rmqId:J
    .restart local v3       #lastStreamId:I
    :cond_b
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->PROBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 338
    const/4 v9, 0x2

    const/4 v10, 0x5

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 340
    :cond_c
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 341
    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto :goto_1

    .line 343
    :cond_d
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->SUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 344
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_1

    .line 346
    :cond_e
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBE:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 347
    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_1

    .line 349
    :cond_f
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->UNSUBSCRIBED:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 350
    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_1

    .line 352
    :cond_10
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Type;->ERROR:Lorg/jivesoftware/smack/packet/Presence$Type;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 353
    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_1

    .line 368
    :cond_11
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Mode;->CHAT:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 369
    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_2

    .line 371
    :cond_12
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Mode;->EXTENDED_AWAY:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 372
    const/4 v9, 0x6

    const/4 v10, 0x3

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_2

    .line 374
    :cond_13
    sget-object v9, Lorg/jivesoftware/smack/packet/Presence$Mode;->DO_NOT_DISTURB:Lorg/jivesoftware/smack/packet/Presence$Mode;

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 375
    const/4 v9, 0x6

    const/4 v10, 0x2

    invoke-virtual {v4, v9, v10}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v0, buf:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 404
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-ne v1, v2, :cond_1

    .line 405
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v1, :cond_0

    .line 406
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 409
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-eqz v1, :cond_2

    .line 413
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 415
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x20

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v10, "<presence"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getPacketID()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, packetId:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getTo()Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, to:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, from:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getRmqId()J

    move-result-wide v6

    .line 215
    .local v6, rmqId:J
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getRmq2Id()Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getLastStreamId()I

    move-result v3

    .line 217
    .local v3, lastStreamId:I
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getStreamId()I

    move-result v8

    .line 219
    .local v8, streamId:I
    if-eqz v4, :cond_0

    .line 220
    const-string v10, " id=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_1

    .line 224
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "stanza-id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_1
    if-eqz v5, :cond_2

    .line 228
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "persistent_id=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_2
    if-eq v3, v13, :cond_3

    .line 232
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "last_stream_id=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_3
    if-eq v8, v13, :cond_4

    .line 236
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "stream_id=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    :cond_4
    if-eqz v9, :cond_5

    .line 240
    const-string v10, " to=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-static {v9}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_5
    if-eqz v2, :cond_6

    .line 243
    const-string v10, " from=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_6
    const-string v10, " account-id=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getAccountId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    sget-object v11, Lorg/jivesoftware/smack/packet/Presence$Type;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eq v10, v11, :cond_7

    .line 250
    const-string v10, " type=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/jivesoftware/smack/packet/Presence;->type:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :cond_7
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    if-eqz v10, :cond_8

    .line 254
    const-string v10, " client-type=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->clientType:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 256
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_8
    iget v10, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    if-eqz v10, :cond_9

    .line 261
    const-string v10, " capabilities=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    iget v10, p0, Lorg/jivesoftware/smack/packet/Presence;->capabilityFlag:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 263
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    :cond_9
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    if-eqz v10, :cond_a

    .line 267
    const-string v10, " hash=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->avatarHash:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v10, "\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :cond_a
    const-string v10, ">"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    if-eqz v10, :cond_b

    .line 274
    const-string v10, "<status>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/jivesoftware/smack/packet/Presence;->status:Ljava/lang/String;

    invoke-static {v11}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</status>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :cond_b
    iget v10, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    if-eqz v10, :cond_c

    .line 277
    const-string v10, "<priority>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget v11, p0, Lorg/jivesoftware/smack/packet/Presence;->priority:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</priority>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    :cond_c
    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v11, Lorg/jivesoftware/smack/packet/Presence$Mode;->AVAILABLE:Lorg/jivesoftware/smack/packet/Presence$Mode;

    if-eq v10, v11, :cond_d

    .line 280
    const-string v10, "<show>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    iget-object v11, p0, Lorg/jivesoftware/smack/packet/Presence;->mode:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "</show>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :cond_d
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getExtensionsXML()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Presence;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .line 287
    .local v1, error:Lorg/jivesoftware/smack/packet/XMPPError;
    if-eqz v1, :cond_e

    .line 288
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :cond_e
    const-string v10, "</presence>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

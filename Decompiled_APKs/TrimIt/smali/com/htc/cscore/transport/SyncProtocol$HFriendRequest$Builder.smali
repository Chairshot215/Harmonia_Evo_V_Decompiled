.class public final Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11100
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$31500(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31600()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 11146
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 11150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 3

    .prologue
    .line 11103
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;-><init>()V

    .line 11104
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    .line 11105
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1

    .prologue
    .line 11138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11139
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 11141
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 3

    .prologue
    .line 11154
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    if-nez v1, :cond_0

    .line 11155
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11158
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    .line 11159
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    .line 11160
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    if-nez v0, :cond_0

    .line 11114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11117
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    .line 11118
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31802(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11288
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11289
    return-object p0
.end method

.method public clearMessage()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32002(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11309
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->message_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32102(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11310
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32202(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11346
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11347
    return-object p0
.end method

.method public clearStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32402(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->Unknown:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32502(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 11368
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 3

    .prologue
    .line 11384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32602(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32702(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;J)J

    .line 11386
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2

    .prologue
    .line 11122
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1

    .prologue
    .line 11131
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 11127
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 11260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 11318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    .locals 1

    .prologue
    .line 11355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 11376
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 11257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 11294
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 11315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 11352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 11373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;
    .locals 1

    .prologue
    .line 11109
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 11095
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 11135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 11173
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 11190
    :goto_0
    return-object p0

    .line 11174
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11175
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    .line 11177
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11178
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    .line 11180
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11181
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    .line 11183
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11184
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getStatus()Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    .line 11186
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11187
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    .line 11189
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11197
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 11201
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 11202
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 11207
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11209
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 11210
    :goto_1
    return-object p0

    .line 11204
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 11215
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    goto :goto_0

    .line 11219
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 11220
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->hasPersonId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 11221
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 11223
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 11224
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    goto :goto_0

    .line 11228
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 11229
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11230
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 11232
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 11233
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    goto :goto_0

    .line 11237
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 11238
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    move-result-object v4

    .line 11239
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    if-nez v4, :cond_3

    .line 11240
    const/16 v5, 0x692

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 11242
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setStatus(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    goto :goto_0

    .line 11247
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->setMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    goto :goto_0

    .line 11202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x2512 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x3490 -> :sswitch_4
        0x397a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 11164
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    if-eqz v0, :cond_0

    .line 11165
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object p0

    .line 11168
    .end local p0
    :goto_0
    return-object p0

    .line 11167
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11095
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11095
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11095
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31900(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11278
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31900(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11283
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31802(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11284
    return-object p0

    .line 11281
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11334
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32300(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32300(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11341
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32202(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11342
    return-object p0

    .line 11339
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 11271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31802(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11272
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11273
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11263
    if-nez p1, :cond_0

    .line 11264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11266
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31802(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$31902(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11268
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11300
    if-nez p1, :cond_0

    .line 11301
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11303
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32002(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->message_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32102(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 11305
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 11329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32202(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11331
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11321
    if-nez p1, :cond_0

    .line 11322
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11324
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32202(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32302(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 11326
    return-object p0
.end method

.method public setStatus(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11358
    if-nez p1, :cond_0

    .line 11359
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11361
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32402(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->status_:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32502(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$HFriendRequestStatus;

    .line 11363
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 11379
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32602(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;Z)Z

    .line 11380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;->access$32702(Lcom/htc/cscore/transport/SyncProtocol$HFriendRequest;J)J

    .line 11381
    return-object p0
.end method

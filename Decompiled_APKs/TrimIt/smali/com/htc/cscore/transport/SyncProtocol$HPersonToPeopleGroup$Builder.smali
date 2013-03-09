.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30134
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$86700(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30129
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$86800()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30180
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30181
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 30184
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 30137
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;-><init>()V

    .line 30138
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 30139
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 30172
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 30175
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 3

    .prologue
    .line 30188
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-nez v1, :cond_0

    .line 30189
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 30192
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 30193
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 30194
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 30147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-nez v0, :cond_0

    .line 30148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30151
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .line 30152
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 30313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30315
    return-object p0
.end method

.method public clearPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 30350
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30351
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30352
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 30387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30389
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 30405
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87602(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87702(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;J)J

    .line 30407
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 30156
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 30165
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30161
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30323
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 30360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 30397
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 30283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPeopleGroupId()Z
    .locals 1

    .prologue
    .line 30320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 30357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 30394
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1

    .prologue
    .line 30143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 30129
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 30169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 30207
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 30221
    :goto_0
    return-object p0

    .line 30208
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30209
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 30211
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30212
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 30214
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30215
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 30217
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30218
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    .line 30220
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30228
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 30232
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30233
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 30238
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30240
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 30241
    :goto_1
    return-object p0

    .line 30235
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 30246
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 30250
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30251
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasPersonId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30252
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30254
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30255
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 30259
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30260
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30261
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30263
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30264
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 30268
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 30269
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->hasPeopleGroupId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 30270
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->getPeopleGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 30272
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 30273
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    goto :goto_0

    .line 30233
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x2512 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x3802 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 30198
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    if-eqz v0, :cond_0

    .line 30199
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object p0

    .line 30202
    .end local p0
    :goto_0
    return-object p0

    .line 30201
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
    .line 30129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30129
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 30129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 30129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30129
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

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
    .line 30129
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30302
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87100(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87100(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30309
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30310
    return-object p0

    .line 30307
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30339
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87300(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30341
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87300(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30346
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30347
    return-object p0

    .line 30344
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30376
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87500(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87500(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30383
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30384
    return-object p0

    .line 30381
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30299
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30289
    if-nez p1, :cond_0

    .line 30290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30292
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87002(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87102(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30294
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30334
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30335
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30336
    return-object p0
.end method

.method public setPeopleGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30326
    if-nez p1, :cond_0

    .line 30327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30329
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPeopleGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87202(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->peopleGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87302(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30331
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 30371
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30373
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30363
    if-nez p1, :cond_0

    .line 30364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30366
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87402(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87502(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 30368
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 30400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87602(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;Z)Z

    .line 30401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->access$87702(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;J)J

    .line 30402
    return-object p0
.end method

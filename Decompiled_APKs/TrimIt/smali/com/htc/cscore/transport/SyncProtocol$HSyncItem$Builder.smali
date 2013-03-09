.class public final Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38856
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$112100(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38851
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$112200()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 38902
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38903
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 38906
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 3

    .prologue
    .line 38859
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;-><init>()V

    .line 38860
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 38861
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 38894
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38895
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 38897
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 3

    .prologue
    .line 38910
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-nez v1, :cond_0

    .line 38911
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38914
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 38915
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 38916
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 38869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-nez v0, :cond_0

    .line 38870
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38873
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .line 38874
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 39018
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39020
    return-object p0
.end method

.method public clearSyncItemType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39036
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39037
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I

    .line 39038
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 3

    .prologue
    .line 39054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39055
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J

    .line 39056
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2

    .prologue
    .line 38878
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 38887
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 38883
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 38991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getSyncItemType()I
    .locals 1

    .prologue
    .line 39028
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 39046
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 38988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasSyncItemType()Z
    .locals 1

    .prologue
    .line 39025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 39043
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    .prologue
    .line 38865
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 38851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 38891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 38929
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 38940
    :goto_0
    return-object p0

    .line 38930
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38931
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 38933
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38934
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getSyncItemType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 38936
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38937
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    .line 38939
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38947
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 38951
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 38952
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 38957
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 38959
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 38960
    :goto_1
    return-object p0

    .line 38954
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 38965
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 38969
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 38973
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 38974
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38975
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 38977
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 38978
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    goto :goto_0

    .line 38952
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1cc0 -> :sswitch_2
        0x2892 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 38920
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    if-eqz v0, :cond_0

    .line 38921
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object p0

    .line 38924
    .end local p0
    :goto_0
    return-object p0

    .line 38923
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
    .line 38851
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38851
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 38851
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 38851
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38851
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

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
    .line 38851
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112500(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39014
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39015
    return-object p0

    .line 39012
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39004
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 38994
    if-nez p1, :cond_0

    .line 38995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38997
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112402(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 38998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112502(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 38999
    return-object p0
.end method

.method public setSyncItemType(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasSyncItemType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112602(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->syncItemType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112702(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;I)I

    .line 39033
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39049
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112802(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;Z)Z

    .line 39050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->access$112902(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;J)J

    .line 39051
    return-object p0
.end method

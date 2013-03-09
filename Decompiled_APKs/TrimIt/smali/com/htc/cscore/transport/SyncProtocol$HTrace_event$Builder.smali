.class public final Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39228
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$113200(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39223
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$113300()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39274
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 39278
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 3

    .prologue
    .line 39231
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;-><init>()V

    .line 39232
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .line 39233
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1

    .prologue
    .line 39266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39267
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 39269
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 3

    .prologue
    .line 39282
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    if-nez v1, :cond_0

    .line 39283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39286
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .line 39287
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .line 39288
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2

    .prologue
    .line 39241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    if-nez v0, :cond_0

    .line 39242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39245
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .line 39246
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEventClass()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39371
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113502(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39372
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventClass_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113602(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;I)I

    .line 39373
    return-object p0
.end method

.method public clearEventName()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2

    .prologue
    .line 39392
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113702(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113802(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Ljava/lang/String;)Ljava/lang/String;

    .line 39394
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2

    .prologue
    .line 39429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113902(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39430
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39431
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2

    .prologue
    .line 39250
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

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
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1

    .prologue
    .line 39259
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 39255
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEventClass()I
    .locals 1

    .prologue
    .line 39363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventClass()I

    move-result v0

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 39402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public hasEventClass()Z
    .locals 1

    .prologue
    .line 39360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass()Z

    move-result v0

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .prologue
    .line 39378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 39399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;
    .locals 1

    .prologue
    .line 39237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 39223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 39263
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 39301
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 39312
    :goto_0
    return-object p0

    .line 39302
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39303
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventClass()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setEventClass(I)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    .line 39305
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39306
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    .line 39308
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 39309
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    .line 39311
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 39323
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39324
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 39329
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39331
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 39332
    :goto_1
    return-object p0

    .line 39326
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 39337
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    goto :goto_0

    .line 39341
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setEventClass(I)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    goto :goto_0

    .line 39345
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 39346
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39347
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 39349
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 39350
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    goto :goto_0

    .line 39324
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x184a -> :sswitch_1
        0x2510 -> :sswitch_2
        0x2892 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 39292
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    if-eqz v0, :cond_0

    .line 39293
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object p0

    .line 39296
    .end local p0
    :goto_0
    return-object p0

    .line 39295
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
    .line 39223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39223
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

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
    .line 39223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

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
    .line 39223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39223
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

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
    .line 39223
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39418
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114000(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114000(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39425
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113902(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39426
    return-object p0

    .line 39423
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEventClass(I)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventClass:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113502(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventClass_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113602(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;I)I

    .line 39368
    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39384
    if-nez p1, :cond_0

    .line 39385
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39387
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113702(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->eventName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113802(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Ljava/lang/String;)Ljava/lang/String;

    .line 39389
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 39413
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113902(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39414
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39415
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 39405
    if-nez p1, :cond_0

    .line 39406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39408
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$113902(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Z)Z

    .line 39409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;->access$114002(Lcom/htc/cscore/transport/SyncProtocol$HTrace_event;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 39410
    return-object p0
.end method

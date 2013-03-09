.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48382
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$139200(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48377
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$139300()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 48428
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 48432
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 3

    .prologue
    .line 48385
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;-><init>()V

    .line 48386
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 48387
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 48420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48421
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 48423
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 3

    .prologue
    .line 48436
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    if-nez v1, :cond_0

    .line 48437
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48440
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 48441
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 48442
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 48395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    if-nez v0, :cond_0

    .line 48396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48399
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .line 48400
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 48530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139502(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Z)Z

    .line 48531
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 48532
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 48404
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

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
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 48413
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 48409
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 48503
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceSetting()Z
    .locals 1

    .prologue
    .line 48500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;
    .locals 1

    .prologue
    .line 48391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 48377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 48417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48519
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139600(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 48521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139600(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 48526
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139502(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Z)Z

    .line 48527
    return-object p0

    .line 48524
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 48455
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 48460
    :goto_0
    return-object p0

    .line 48456
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48457
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    .line 48459
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48467
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 48471
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 48472
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 48477
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48479
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 48480
    :goto_1
    return-object p0

    .line 48474
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 48485
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    .line 48486
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->hasDeviceSetting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48487
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->getDeviceSetting()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 48489
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 48490
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->setDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    goto :goto_0

    .line 48472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3422 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 48446
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    if-eqz v0, :cond_0

    .line 48447
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object p0

    .line 48450
    .end local p0
    :goto_0
    return-object p0

    .line 48449
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
    .line 48377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48377
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

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
    .line 48377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

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
    .line 48377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48377
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

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
    .line 48377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 48514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139502(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Z)Z

    .line 48515
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 48516
    return-object p0
.end method

.method public setDeviceSetting(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 48506
    if-nez p1, :cond_0

    .line 48507
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48509
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->hasDeviceSetting:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139502(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Z)Z

    .line 48510
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->deviceSetting_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;->access$139602(Lcom/htc/cscore/transport/SyncProtocol$UpdateDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 48511
    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42346
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$124700(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42341
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$124800()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 42392
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 42396
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 3

    .prologue
    .line 42349
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;-><init>()V

    .line 42350
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 42351
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 42384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 42387
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 3

    .prologue
    .line 42400
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-nez v1, :cond_0

    .line 42401
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42404
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 42405
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 42406
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 42359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-nez v0, :cond_0

    .line 42360
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42363
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .line 42364
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCall()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 42494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 42495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 42496
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2

    .prologue
    .line 42368
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 42377
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 42373
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    .prologue
    .line 42467
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public hasMissedCall()Z
    .locals 1

    .prologue
    .line 42464
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;
    .locals 1

    .prologue
    .line 42355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 42341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 42381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 42419
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 42424
    :goto_0
    return-object p0

    .line 42420
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42421
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    .line 42423
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42431
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 42435
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42436
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 42441
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42443
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 42444
    :goto_1
    return-object p0

    .line 42438
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 42449
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    .line 42450
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->hasMissedCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 42451
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->getMissedCall()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    .line 42453
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 42454
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    goto :goto_0

    .line 42436
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2912 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 42410
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    if-eqz v0, :cond_0

    .line 42411
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object p0

    .line 42414
    .end local p0
    :goto_0
    return-object p0

    .line 42413
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
    .line 42341
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42341
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 42341
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 42341
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42341
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

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
    .line 42341
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125100(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 42485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125100(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 42490
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 42491
    return-object p0

    .line 42488
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    goto :goto_0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 42478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 42479
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 42480
    return-object p0
.end method

.method public setMissedCall(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 42470
    if-nez p1, :cond_0

    .line 42471
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42473
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->hasMissedCall:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125002(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Z)Z

    .line 42474
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->missedCall_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;->access$125102(Lcom/htc/cscore/transport/SyncProtocol$AddMissedCall;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    .line 42475
    return-object p0
.end method

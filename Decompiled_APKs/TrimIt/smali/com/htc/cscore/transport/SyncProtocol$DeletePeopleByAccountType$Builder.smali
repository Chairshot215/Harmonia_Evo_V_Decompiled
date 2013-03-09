.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2396
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2391
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2442
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2446
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 3

    .prologue
    .line 2399
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;-><init>()V

    .line 2400
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 2401
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2435
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2437
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 3

    .prologue
    .line 2450
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-nez v1, :cond_0

    .line 2451
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 2455
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 2456
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-nez v0, :cond_0

    .line 2410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2413
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .line 2414
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 2529
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Z)Z

    .line 2530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 2531
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2

    .prologue
    .line 2418
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    .locals 1

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 2427
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2423
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;
    .locals 1

    .prologue
    .line 2405
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 2391
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2469
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2474
    :goto_0
    return-object p0

    .line 2470
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2471
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    .line 2473
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2481
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 2485
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2486
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2491
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2493
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 2494
    :goto_1
    return-object p0

    .line 2488
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 2499
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2500
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    move-result-object v3

    .line 2501
    .local v3, value:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    if-nez v3, :cond_1

    .line 2502
    const/16 v4, 0x1f

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 2504
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    goto :goto_0

    .line 2486
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xf8 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2460
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    if-eqz v0, :cond_0

    .line 2461
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object p0

    .line 2464
    .end local p0
    :goto_0
    return-object p0

    .line 2463
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
    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2391
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2391
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

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
    .line 2391
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2521
    if-nez p1, :cond_0

    .line 2522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2524
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6402(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Z)Z

    .line 2525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;->access$6502(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleByAccountType;Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPerson$HPersonAccountType;

    .line 2526
    return-object p0
.end method

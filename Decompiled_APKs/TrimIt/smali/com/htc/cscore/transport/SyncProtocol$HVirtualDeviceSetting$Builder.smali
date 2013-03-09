.class public final Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47382
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$136300(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47377
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$136400()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 47428
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47429
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 47432
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 3

    .prologue
    .line 47385
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;-><init>()V

    .line 47386
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47387
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47421
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 47423
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 3

    .prologue
    .line 47436
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    if-nez v1, :cond_0

    .line 47437
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47440
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47441
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47442
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 47395
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    if-nez v0, :cond_0

    .line 47396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47399
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .line 47400
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 47551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47552
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47553
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 47572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47573
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 47574
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 3

    .prologue
    .line 47590
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;J)J

    .line 47592
    return-object p0
.end method

.method public clearValue()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 47611
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47612
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->value_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 47613
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2

    .prologue
    .line 47404
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

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
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47413
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 47409
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 47524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47561
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 47582
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47600
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 47521
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 47558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 47579
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 47597
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;
    .locals 1

    .prologue
    .line 47391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 47377
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 47417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 47455
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 47469
    :goto_0
    return-object p0

    .line 47456
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47457
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 47459
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47460
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 47462
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47463
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 47465
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47466
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    .line 47468
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47476
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 47480
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 47481
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 47486
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47488
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 47489
    :goto_1
    return-object p0

    .line 47483
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 47494
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    goto :goto_0

    .line 47498
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    goto :goto_0

    .line 47502
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 47503
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 47504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 47506
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 47507
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    goto :goto_0

    .line 47511
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    goto :goto_0

    .line 47481
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x3c72 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 47446
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    if-eqz v0, :cond_0

    .line 47447
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object p0

    .line 47450
    .end local p0
    :goto_0
    return-object p0

    .line 47449
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
    .line 47377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47377
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

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
    .line 47377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

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
    .line 47377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47377
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

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
    .line 47377
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136700(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 47542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136700(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47547
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47548
    return-object p0

    .line 47545
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 47535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47537
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47527
    if-nez p1, :cond_0

    .line 47528
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47530
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136602(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47531
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136702(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 47532
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47564
    if-nez p1, :cond_0

    .line 47565
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47567
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136802(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47568
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$136902(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 47569
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137002(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47586
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137102(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;J)J

    .line 47587
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 47603
    if-nez p1, :cond_0

    .line 47604
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 47606
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137202(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Z)Z

    .line 47607
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->value_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;->access$137302(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 47608
    return-object p0
.end method

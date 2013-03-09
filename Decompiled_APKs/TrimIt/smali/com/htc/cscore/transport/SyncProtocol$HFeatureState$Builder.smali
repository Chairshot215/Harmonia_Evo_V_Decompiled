.class public final Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5519
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5514
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15200()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 5565
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 5569
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 3

    .prologue
    .line 5522
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;-><init>()V

    .line 5523
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .line 5524
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    .prologue
    .line 5557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5558
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 5560
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 3

    .prologue
    .line 5573
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-nez v1, :cond_0

    .line 5574
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5577
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .line 5578
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .line 5579
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-nez v0, :cond_0

    .line 5533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5536
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .line 5537
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFeature()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5689
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15402(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5690
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15502(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Ljava/lang/String;)Ljava/lang/String;

    .line 5691
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5727
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5728
    return-object p0
.end method

.method public clearPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5765
    return-object p0
.end method

.method public clearRegionId()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5800
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5801
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5802
    return-object p0
.end method

.method public clearState()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16202(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5819
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16302(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5820
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    .prologue
    .line 5541
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

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
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    .prologue
    .line 5550
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 5546
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5678
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5736
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 5773
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getState()Z
    .locals 1

    .prologue
    .line 5810
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v0

    return v0
.end method

.method public hasFeature()Z
    .locals 1

    .prologue
    .line 5675
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 5696
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPhysicalDeviceModelID()Z
    .locals 1

    .prologue
    .line 5733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    return v0
.end method

.method public hasRegionId()Z
    .locals 1

    .prologue
    .line 5770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 5807
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    .prologue
    .line 5528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 5554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5592
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5609
    :goto_0
    return-object p0

    .line 5593
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5594
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    .line 5596
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5597
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    .line 5599
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5600
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergePhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    .line 5602
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5603
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    .line 5605
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5606
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    .line 5608
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5616
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 5620
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5621
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 5626
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5628
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 5629
    :goto_1
    return-object p0

    .line 5623
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 5634
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 5635
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasPhysicalDeviceModelID()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5636
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 5638
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5639
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    .line 5643
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 5644
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasRegionId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5645
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 5647
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5648
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    .line 5652
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 5653
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5654
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 5656
    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 5657
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    .line 5661
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    .line 5665
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    .line 5621
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x242 -> :sswitch_1
        0x18d2 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d18 -> :sswitch_4
        0x39ea -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5583
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-eqz v0, :cond_0

    .line 5584
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object p0

    .line 5587
    .end local p0
    :goto_0
    return-object p0

    .line 5586
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
    .line 5514
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5514
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

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
    .line 5514
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

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
    .line 5514
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5514
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

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
    .line 5514
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5715
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15700(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15700(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5722
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5723
    return-object p0

    .line 5720
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15900(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15900(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5759
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5760
    return-object p0

    .line 5757
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5789
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5796
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5797
    return-object p0

    .line 5794
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5681
    if-nez p1, :cond_0

    .line 5682
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5684
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15402(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15502(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Ljava/lang/String;)Ljava/lang/String;

    .line 5686
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5710
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5712
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5702
    if-nez p1, :cond_0

    .line 5703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5705
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5707
    return-object p0
.end method

.method public setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5747
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5748
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5749
    return-object p0
.end method

.method public setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5739
    if-nez p1, :cond_0

    .line 5740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5742
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5743
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5744
    return-object p0
.end method

.method public setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 5784
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5785
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5786
    return-object p0
.end method

.method public setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5776
    if-nez p1, :cond_0

    .line 5777
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5779
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 5781
    return-object p0
.end method

.method public setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 5813
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16202(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5814
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16302(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    .line 5815
    return-object p0
.end method

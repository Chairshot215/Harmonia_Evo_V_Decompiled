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

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$15100(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$15200()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFeature()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15402(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15502(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearRegionId()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearState()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16202(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16302(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getState()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v0

    return v0
.end method

.method public hasFeature()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPhysicalDeviceModelID()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    return v0
.end method

.method public hasRegionId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getFeature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergePhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getState()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasPhysicalDeviceModelID()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getPhysicalDeviceModelID()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasRegionId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getRegionId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    goto :goto_0

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

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

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

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

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

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

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

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasFeature:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15402(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->feature_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15502(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15602(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15702(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setPhysicalDeviceModelID(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasPhysicalDeviceModelID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15802(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->physicalDeviceModelID_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$15902(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setRegionId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasRegionId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16002(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->regionId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16102(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setState(Z)Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->hasState:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16202(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->state_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;->access$16302(Lcom/htc/cscore/transport/SyncProtocol$HFeatureState;Z)Z

    return-object p0
.end method

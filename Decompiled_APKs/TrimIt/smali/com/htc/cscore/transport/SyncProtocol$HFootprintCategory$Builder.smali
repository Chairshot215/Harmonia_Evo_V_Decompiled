.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8682
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$24600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8677
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$24700()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8728
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8729
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 8732
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 3

    .prologue
    .line 8685
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;-><init>()V

    .line 8686
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 8687
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    .prologue
    .line 8720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 8723
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 3

    .prologue
    .line 8736
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    if-nez v1, :cond_0

    .line 8737
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 8740
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 8741
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 8742
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2

    .prologue
    .line 8695
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    if-nez v0, :cond_0

    .line 8696
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8699
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .line 8700
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearFootprintCount()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$24902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8826
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->footprintCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;I)I

    .line 8827
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2

    .prologue
    .line 8862
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8863
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 8864
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2

    .prologue
    .line 8883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8884
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Ljava/lang/String;)Ljava/lang/String;

    .line 8885
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2

    .prologue
    .line 8704
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

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
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    .prologue
    .line 8713
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 8709
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintCount()I
    .locals 1

    .prologue
    .line 8817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getFootprintCount()I

    move-result v0

    return v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 8835
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFootprintCount()Z
    .locals 1

    .prologue
    .line 8814
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 8832
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 8869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;
    .locals 1

    .prologue
    .line 8691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 8677
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 8717
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8755
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 8766
    :goto_0
    return-object p0

    .line 8756
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8757
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getFootprintCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    .line 8759
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8760
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    .line 8762
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8763
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    .line 8765
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 8777
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 8778
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 8783
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8785
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 8786
    :goto_1
    return-object p0

    .line 8780
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 8791
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    goto :goto_0

    .line 8795
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    goto :goto_0

    .line 8799
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 8800
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8801
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 8803
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 8804
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    goto :goto_0

    .line 8778
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb00 -> :sswitch_1
        0xee2 -> :sswitch_2
        0x2892 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 8746
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    if-eqz v0, :cond_0

    .line 8747
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object p0

    .line 8750
    .end local p0
    :goto_0
    return-object p0

    .line 8749
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
    .line 8677
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8677
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

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
    .line 8677
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

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
    .line 8677
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8677
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

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
    .line 8677
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8851
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25200(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8853
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25200(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 8858
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8859
    return-object p0

    .line 8856
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setFootprintCount(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8820
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasFootprintCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$24902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8821
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->footprintCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;I)I

    .line 8822
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 8846
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8847
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 8848
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8838
    if-nez p1, :cond_0

    .line 8839
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8841
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 8843
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 8875
    if-nez p1, :cond_0

    .line 8876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8878
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Z)Z

    .line 8879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;->access$25402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintCategory;Ljava/lang/String;)Ljava/lang/String;

    .line 8880
    return-object p0
.end method

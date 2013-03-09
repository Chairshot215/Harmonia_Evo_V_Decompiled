.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33796
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$97400(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33791
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$97500()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33842
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33843
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 33846
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 33799
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;-><init>()V

    .line 33800
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 33801
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 33834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33835
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 33837
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 3

    .prologue
    .line 33850
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-nez v1, :cond_0

    .line 33851
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33854
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 33855
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 33856
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 33809
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-nez v0, :cond_0

    .line 33810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33813
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .line 33814
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 33937
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97702(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33938
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 33939
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 33958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 33960
    return-object p0
.end method

.method public clearIsLike()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98202(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33978
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 33818
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

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
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33926
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 33827
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33823
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 33968
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 33923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 33944
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 33965
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;
    .locals 1

    .prologue
    .line 33805
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 33791
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 33831
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33869
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 33880
    :goto_0
    return-object p0

    .line 33870
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33871
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 33873
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33874
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 33876
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33877
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getIsLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    .line 33879
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33887
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 33891
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 33892
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 33897
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33899
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 33900
    :goto_1
    return-object p0

    .line 33894
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 33905
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 33909
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 33913
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    goto :goto_0

    .line 33892
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3128 -> :sswitch_1
        0x318a -> :sswitch_2
        0x3c52 -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33860
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 33861
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object p0

    .line 33864
    .end local p0
    :goto_0
    return-object p0

    .line 33863
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
    .line 33791
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33791
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

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
    .line 33791
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

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
    .line 33791
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33791
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

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
    .line 33791
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33929
    if-nez p1, :cond_0

    .line 33930
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33932
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97702(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 33934
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33950
    if-nez p1, :cond_0

    .line 33951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33953
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$97902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 33955
    return-object p0
.end method

.method public setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33971
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33972
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->isLike_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;->access$98202(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendCommentLike;Z)Z

    .line 33973
    return-object p0
.end method

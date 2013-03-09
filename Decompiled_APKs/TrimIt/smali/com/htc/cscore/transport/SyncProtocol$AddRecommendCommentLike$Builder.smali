.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32863
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$95100(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32858
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$95200()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32909
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32910
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 32913
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 32866
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;-><init>()V

    .line 32867
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 32868
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 32901
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 32904
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 3

    .prologue
    .line 32917
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    if-nez v1, :cond_0

    .line 32918
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32921
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 32922
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 32923
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    if-nez v0, :cond_0

    .line 32877
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32880
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .line 32881
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsLike()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33036
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95602(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33037
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isLike_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33038
    return-object p0
.end method

.method public clearRecommend()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 33018
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33019
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 33020
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32885
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

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
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 32894
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32890
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 33028
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getIsLike()Z

    move-result v0

    return v0
.end method

.method public getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 32991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 33025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike()Z

    move-result v0

    return v0
.end method

.method public hasRecommend()Z
    .locals 1

    .prologue
    .line 32988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;
    .locals 1

    .prologue
    .line 32872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 32858
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 32898
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 32936
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 32944
    :goto_0
    return-object p0

    .line 32937
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32938
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeRecommend(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    .line 32940
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32941
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getIsLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    .line 32943
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32951
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 32955
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32956
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 32961
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32963
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 32964
    :goto_1
    return-object p0

    .line 32958
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 32969
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    .line 32970
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->hasRecommend()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32971
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->getRecommend()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32973
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 32974
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->setRecommend(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    goto :goto_0

    .line 32978
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    goto :goto_0

    .line 32956
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x872 -> :sswitch_1
        0x3128 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 32927
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 32928
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object p0

    .line 32931
    .end local p0
    :goto_0
    return-object p0

    .line 32930
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
    .line 32858
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32858
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

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
    .line 32858
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

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
    .line 32858
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32858
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

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
    .line 32858
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRecommend(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33007
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95500(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 33009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95500(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 33014
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33015
    return-object p0

    .line 33012
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    goto :goto_0
.end method

.method public setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95602(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->isLike_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95702(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33033
    return-object p0
.end method

.method public setRecommend(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 33002
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 33003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 33004
    return-object p0
.end method

.method public setRecommend(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32994
    if-nez p1, :cond_0

    .line 32995
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32997
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->hasRecommend:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Z)Z

    .line 32998
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->recommend_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;->access$95502(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32999
    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32078
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$92300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32073
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$92400()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 32124
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 32128
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 32081
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;-><init>()V

    .line 32082
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32083
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 32116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 32119
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 3

    .prologue
    .line 32132
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-nez v1, :cond_0

    .line 32133
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 32136
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32137
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32138
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32091
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-nez v0, :cond_0

    .line 32092
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32095
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .line 32096
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32260
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32261
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32281
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32282
    return-object p0
.end method

.method public clearComment()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32302
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32303
    return-object p0
.end method

.method public clearCommentCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 32319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32321
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32358
    return-object p0
.end method

.method public clearIsLike()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32375
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32376
    return-object p0
.end method

.method public clearLikeCreateDate()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 32392
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32393
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32394
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 32410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32412
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 32100
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCreateDate()J
    .locals 2

    .prologue
    .line 32311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 32109
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 32105
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 32329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsLike()Z
    .locals 1

    .prologue
    .line 32366
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v0

    return v0
.end method

.method public getLikeCreateDate()J
    .locals 2

    .prologue
    .line 32384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 32402
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 32245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 32266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 32287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v0

    return v0
.end method

.method public hasCommentCreateDate()Z
    .locals 1

    .prologue
    .line 32308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 32326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsLike()Z
    .locals 1

    .prologue
    .line 32363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v0

    return v0
.end method

.method public hasLikeCreateDate()Z
    .locals 1

    .prologue
    .line 32381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 32399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;
    .locals 1

    .prologue
    .line 32087
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 32073
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 32113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 32151
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 32177
    :goto_0
    return-object p0

    .line 32152
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32153
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32155
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32156
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32158
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32159
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32161
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32162
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getCommentCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32164
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 32165
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32167
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32168
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getIsLike()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32170
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 32171
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getLikeCreateDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32173
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 32174
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    .line 32176
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32184
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 32188
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 32189
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 32194
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32196
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 32197
    :goto_1
    return-object p0

    .line 32191
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 32202
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32206
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32210
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32214
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 32215
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32216
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 32218
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 32219
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32223
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32227
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32231
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32235
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    goto :goto_0

    .line 32189
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1242 -> :sswitch_2
        0x1f50 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2a00 -> :sswitch_5
        0x2a22 -> :sswitch_6
        0x3538 -> :sswitch_7
        0x3afa -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 32142
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 32143
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object p0

    .line 32146
    .end local p0
    :goto_0
    return-object p0

    .line 32145
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
    .line 32073
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32073
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 32073
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 32073
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32073
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

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
    .line 32073
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32345
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 32347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32352
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32353
    return-object p0

    .line 32350
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32251
    if-nez p1, :cond_0

    .line 32252
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32254
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32255
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32256
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32272
    if-nez p1, :cond_0

    .line 32273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32275
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$92902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32277
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32293
    if-nez p1, :cond_0

    .line 32294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32296
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 32298
    return-object p0
.end method

.method public setCommentCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasCommentCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->commentCreateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32316
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 32340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32341
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32342
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32332
    if-nez p1, :cond_0

    .line 32333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32335
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32336
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 32337
    return-object p0
.end method

.method public setIsLike(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasIsLike:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->isLike_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32371
    return-object p0
.end method

.method public setLikeCreateDate(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32387
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasLikeCreateDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32388
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->likeCreateDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$93902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32389
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 32405
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;Z)Z

    .line 32406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;->access$94102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendCommentLike;J)J

    .line 32407
    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35377
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35372
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102500()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 35423
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35424
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 35427
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 35380
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;-><init>()V

    .line 35381
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 35382
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 35415
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35416
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 35418
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 3

    .prologue
    .line 35431
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v1, :cond_0

    .line 35432
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35435
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 35436
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 35437
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 35390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v0, :cond_0

    .line 35391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35394
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .line 35395
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 35560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35561
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35562
    return-object p0
.end method

.method public clearCount()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35636
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 35637
    return-object p0
.end method

.method public clearKeywords()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 35539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35541
    return-object p0
.end method

.method public clearSortBy()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 35581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35582
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35583
    return-object p0
.end method

.method public clearSortDescending()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35599
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35600
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35601
    return-object p0
.end method

.method public clearStart()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35617
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35618
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 35619
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 35399
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35549
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35627
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 35408
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 35404
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35528
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35570
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 35591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 35609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 35546
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 35624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasKeywords()Z
    .locals 1

    .prologue
    .line 35525
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 35567
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 35588
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 35606
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    .prologue
    .line 35386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 35372
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 35412
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 35450
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 35470
    :goto_0
    return-object p0

    .line 35451
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35452
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35454
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35455
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35457
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35458
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35460
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 35461
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35463
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 35464
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35466
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35467
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    .line 35469
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35477
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 35481
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 35482
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 35487
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35489
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 35490
    :goto_1
    return-object p0

    .line 35484
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 35495
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35499
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35503
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35507
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35511
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35515
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    .line 35482
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x270 -> :sswitch_1
        0x71a -> :sswitch_2
        0x2b60 -> :sswitch_3
        0x2e60 -> :sswitch_4
        0x318a -> :sswitch_5
        0x333a -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 35441
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 35442
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object p0

    .line 35445
    .end local p0
    :goto_0
    return-object p0

    .line 35444
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
    .line 35372
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35372
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 35372
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 35372
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35372
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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
    .line 35372
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35552
    if-nez p1, :cond_0

    .line 35553
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35555
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35557
    return-object p0
.end method

.method public setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35630
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35631
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 35632
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35531
    if-nez p1, :cond_0

    .line 35532
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35534
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35536
    return-object p0
.end method

.method public setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35573
    if-nez p1, :cond_0

    .line 35574
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35576
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35577
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 35578
    return-object p0
.end method

.method public setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35594
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35595
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35596
    return-object p0
.end method

.method public setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 35612
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    .line 35613
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    .line 35614
    return-object p0
.end method

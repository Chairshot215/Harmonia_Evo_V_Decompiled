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

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$102400(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102500()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearCount()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    return-object p0
.end method

.method public clearKeywords()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearSortBy()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearSortDescending()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    return-object p0
.end method

.method public clearStart()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasKeywords()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getSortDescending()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    goto :goto_0

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

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102902(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103002(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCount(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->count_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasKeywords:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102702(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->keywords_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$102802(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103102(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103202(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103302(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103402(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    return-object p0
.end method

.method public setStart(I)Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103502(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->start_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;->access$103602(Lcom/htc/cscore/transport/SyncProtocol$SearchRecommendCommentLike;I)I

    return-object p0
.end method

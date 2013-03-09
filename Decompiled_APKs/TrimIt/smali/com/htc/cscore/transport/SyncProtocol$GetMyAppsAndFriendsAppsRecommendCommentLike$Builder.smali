.class public final Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34509
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$99400(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34504
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$99500()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34555
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 34559
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 3

    .prologue
    .line 34512
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;-><init>()V

    .line 34513
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 34514
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 34547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 34550
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 3

    .prologue
    .line 34563
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    if-nez v1, :cond_0

    .line 34564
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34567
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 34568
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 34569
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 34522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    if-nez v0, :cond_0

    .line 34523
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34526
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .line 34527
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 34671
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34672
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34673
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 34692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99902(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34693
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100002(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34694
    return-object p0
.end method

.method public clearCount()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34767
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->count_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I

    .line 34769
    return-object p0
.end method

.method public clearSortBy()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 34713
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100102(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100202(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34715
    return-object p0
.end method

.method public clearSortDescending()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100302(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100402(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34733
    return-object p0
.end method

.method public clearStart()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100502(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->start_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100602(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I

    .line 34751
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2

    .prologue
    .line 34531
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

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
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34660
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34681
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 34540
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34536
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSortBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34702
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSortDescending()Z
    .locals 1

    .prologue
    .line 34723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortDescending()Z

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 34741
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getStart()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 34657
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 34678
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 34756
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasSortBy()Z
    .locals 1

    .prologue
    .line 34699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy()Z

    move-result v0

    return v0
.end method

.method public hasSortDescending()Z
    .locals 1

    .prologue
    .line 34720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 34738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;
    .locals 1

    .prologue
    .line 34518
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 34504
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 34544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34582
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 34602
    :goto_0
    return-object p0

    .line 34583
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34584
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34586
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34587
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34589
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34590
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34592
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34593
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getSortDescending()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34595
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34596
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34598
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34599
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    .line 34601
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34609
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 34613
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 34614
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 34619
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34621
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 34622
    :goto_1
    return-object p0

    .line 34616
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 34627
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34631
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34635
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34639
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34643
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34647
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    goto :goto_0

    .line 34614
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x270 -> :sswitch_1
        0x71a -> :sswitch_2
        0x2b60 -> :sswitch_3
        0x2e60 -> :sswitch_4
        0x318a -> :sswitch_5
        0x3c52 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34573
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    if-eqz v0, :cond_0

    .line 34574
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object p0

    .line 34577
    .end local p0
    :goto_0
    return-object p0

    .line 34576
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
    .line 34504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34504
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

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
    .line 34504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

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
    .line 34504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34504
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

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
    .line 34504
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34663
    if-nez p1, :cond_0

    .line 34664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34666
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34667
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34668
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34684
    if-nez p1, :cond_0

    .line 34685
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34687
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$99902(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34688
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100002(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34689
    return-object p0
.end method

.method public setCount(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34762
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100702(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->count_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100802(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I

    .line 34764
    return-object p0
.end method

.method public setSortBy(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34705
    if-nez p1, :cond_0

    .line 34706
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34708
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortBy:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100102(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34709
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortBy_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100202(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Ljava/lang/String;)Ljava/lang/String;

    .line 34710
    return-object p0
.end method

.method public setSortDescending(Z)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasSortDescending:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100302(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34727
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->sortDescending_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100402(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34728
    return-object p0
.end method

.method public setStart(I)Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->hasStart:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100502(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;Z)Z

    .line 34745
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->start_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;->access$100602(Lcom/htc/cscore/transport/SyncProtocol$GetMyAppsAndFriendsAppsRecommendCommentLike;I)I

    .line 34746
    return-object p0
.end method

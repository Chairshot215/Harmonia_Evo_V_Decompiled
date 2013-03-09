.class public final Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearComment()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public clearFriendsCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public clearFriendsLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public clearLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public clearLiked()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    return-object p0
.end method

.method public clearPopularCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsCommentCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    return v0
.end method

.method public getFriendsLikeCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    return v0
.end method

.method public getLiked()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    return v0
.end method

.method public getPopularCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsCommentCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsLikeCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLikeCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLiked()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    return v0
.end method

.method public hasPopularCount()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x220 -> :sswitch_1
        0x1242 -> :sswitch_2
        0x2198 -> :sswitch_3
        0x25f8 -> :sswitch_4
        0x26d0 -> :sswitch_5
        0x2a22 -> :sswitch_6
        0x2fe8 -> :sswitch_7
        0x30e8 -> :sswitch_8
        0x3afa -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

.method public setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    return-object p0
.end method

.method public setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    return-object p0
.end method

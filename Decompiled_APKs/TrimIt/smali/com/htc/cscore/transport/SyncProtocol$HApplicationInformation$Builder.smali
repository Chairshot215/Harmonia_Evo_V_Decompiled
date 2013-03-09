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

    .prologue
    .line 4501
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11500(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4496
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11600()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1

    .prologue
    .line 4496
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

    .prologue
    .line 4547
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4551
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3

    .prologue
    .line 4504
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;-><init>()V

    .line 4505
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 4506
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4540
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4542
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 3

    .prologue
    .line 4555
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v1, :cond_0

    .line 4556
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4559
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 4560
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 4561
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-nez v0, :cond_0

    .line 4515
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4518
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .line 4519
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 4684
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4685
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4686
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 4705
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4706
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4707
    return-object p0
.end method

.method public clearComment()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 4726
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4727
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4728
    return-object p0
.end method

.method public clearCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4745
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4746
    return-object p0
.end method

.method public clearFriendsCommentCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4762
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4764
    return-object p0
.end method

.method public clearFriendsLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4780
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4781
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4782
    return-object p0
.end method

.method public clearLikeCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4798
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4799
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4800
    return-object p0
.end method

.method public clearLiked()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4818
    return-object p0
.end method

.method public clearPopularCount()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4835
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4836
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2

    .prologue
    .line 4523
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4496
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

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4694
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 4532
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 4528
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsCommentCount()I
    .locals 1

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    return v0
.end method

.method public getFriendsLikeCount()I
    .locals 1

    .prologue
    .line 4772
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    return v0
.end method

.method public getLikeCount()I
    .locals 1

    .prologue
    .line 4790
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    return v0
.end method

.method public getLiked()Z
    .locals 1

    .prologue
    .line 4808
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    return v0
.end method

.method public getPopularCount()I
    .locals 1

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    return v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 4670
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .locals 1

    .prologue
    .line 4712
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    return v0
.end method

.method public hasCommentCount()Z
    .locals 1

    .prologue
    .line 4733
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsCommentCount()Z
    .locals 1

    .prologue
    .line 4751
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    return v0
.end method

.method public hasFriendsLikeCount()Z
    .locals 1

    .prologue
    .line 4769
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLikeCount()Z
    .locals 1

    .prologue
    .line 4787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    return v0
.end method

.method public hasLiked()Z
    .locals 1

    .prologue
    .line 4805
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    return v0
.end method

.method public hasPopularCount()Z
    .locals 1

    .prologue
    .line 4823
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;
    .locals 1

    .prologue
    .line 4510
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 4496
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4574
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4603
    :goto_0
    return-object p0

    .line 4575
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4576
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4578
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4579
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4581
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4582
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4584
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4585
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4587
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4588
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsCommentCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4590
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4591
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getFriendsLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4593
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4594
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLikeCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4596
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4597
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getLiked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4599
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4600
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getPopularCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    .line 4602
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4610
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 4614
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 4615
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4620
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4622
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 4623
    :goto_1
    return-object p0

    .line 4617
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 4628
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4632
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4636
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4640
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4644
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4648
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4652
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4656
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4660
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    goto :goto_0

    .line 4615
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
    .parameter "other"

    .prologue
    .line 4565
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    if-eqz v0, :cond_0

    .line 4566
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object p0

    .line 4569
    .end local p0
    :goto_0
    return-object p0

    .line 4568
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
    .line 4496
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4496
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 4496
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 4496
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4496
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

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
    .line 4496
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4676
    if-nez p1, :cond_0

    .line 4677
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4679
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$11902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4681
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4697
    if-nez p1, :cond_0

    .line 4698
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4700
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4701
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4702
    return-object p0
.end method

.method public setComment(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4718
    if-nez p1, :cond_0

    .line 4719
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4721
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasComment:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4722
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->comment_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Ljava/lang/String;)Ljava/lang/String;

    .line 4723
    return-object p0
.end method

.method public setCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4739
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4740
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->commentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4741
    return-object p0
.end method

.method public setFriendsCommentCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsCommentCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12602(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4758
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsCommentCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12702(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4759
    return-object p0
.end method

.method public setFriendsLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasFriendsLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12802(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4776
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->friendsLikeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$12902(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4777
    return-object p0
.end method

.method public setLikeCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4793
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLikeCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13002(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4794
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->likeCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13102(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4795
    return-object p0
.end method

.method public setLiked(Z)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4811
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasLiked:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13202(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4812
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->liked_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13302(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4813
    return-object p0
.end method

.method public setPopularCount(I)Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4829
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->hasPopularCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13402(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;Z)Z

    .line 4830
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->popularCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;->access$13502(Lcom/htc/cscore/transport/SyncProtocol$HApplicationInformation;I)I

    .line 4831
    return-object p0
.end method

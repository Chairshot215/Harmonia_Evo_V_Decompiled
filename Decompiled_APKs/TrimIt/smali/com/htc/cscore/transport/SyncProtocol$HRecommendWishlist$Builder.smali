.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37485
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$108200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37480
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$108300()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 37531
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37532
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 37535
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 3

    .prologue
    .line 37488
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;-><init>()V

    .line 37489
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 37490
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 37523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37524
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 37526
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 3

    .prologue
    .line 37539
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    if-nez v1, :cond_0

    .line 37540
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37543
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 37544
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 37545
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37498
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    if-nez v0, :cond_0

    .line 37499
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37502
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 37503
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37652
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37653
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37654
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37674
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37675
    return-object p0
.end method

.method public clearAppURL()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37694
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37695
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37696
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37732
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37733
    return-object p0
.end method

.method public clearIsHTCHubContent()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37750
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37751
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 3

    .prologue
    .line 37767
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37768
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;J)J

    .line 37769
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 37507
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

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
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37641
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37662
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 37516
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 37512
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37704
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 37741
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37759
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 37638
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 37659
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v0

    return v0
.end method

.method public hasAppURL()Z
    .locals 1

    .prologue
    .line 37680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 37701
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsHTCHubContent()Z
    .locals 1

    .prologue
    .line 37738
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 37756
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 37494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 37480
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 37520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 37558
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 37578
    :goto_0
    return-object p0

    .line 37559
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37560
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37562
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37563
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37565
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37566
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getAppURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37568
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37569
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37571
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37572
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getIsHTCHubContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setIsHTCHubContent(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37574
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37575
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 37577
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37585
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 37589
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37590
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 37595
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37597
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 37598
    :goto_1
    return-object p0

    .line 37592
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 37603
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37607
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37611
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setIsHTCHubContent(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37615
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37619
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 37620
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37621
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 37623
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 37624
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37628
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    goto :goto_0

    .line 37590
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1242 -> :sswitch_2
        0x16f8 -> :sswitch_3
        0x1c4a -> :sswitch_4
        0x2892 -> :sswitch_5
        0x3afa -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 37549
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    if-eqz v0, :cond_0

    .line 37550
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object p0

    .line 37553
    .end local p0
    :goto_0
    return-object p0

    .line 37552
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
    .line 37480
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37480
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

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
    .line 37480
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

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
    .line 37480
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37480
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

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
    .line 37480
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37720
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37722
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109200(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37727
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37728
    return-object p0

    .line 37725
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37644
    if-nez p1, :cond_0

    .line 37645
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37647
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37649
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37665
    if-nez p1, :cond_0

    .line 37666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37668
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37669
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37670
    return-object p0
.end method

.method public setAppURL(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37686
    if-nez p1, :cond_0

    .line 37687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37689
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasAppURL:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$108902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37690
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->appURL_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 37691
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 37715
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37716
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37717
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37707
    if-nez p1, :cond_0

    .line 37708
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37710
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37711
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37712
    return-object p0
.end method

.method public setIsHTCHubContent(Z)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37744
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasIsHTCHubContent:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37745
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->isHTCHubContent_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37746
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37762
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;Z)Z

    .line 37763
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->access$109602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;J)J

    .line 37764
    return-object p0
.end method

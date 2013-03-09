.class public final Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34135
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$98500(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34130
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$98600()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 34181
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34182
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 34185
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 3

    .prologue
    .line 34138
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;-><init>()V

    .line 34139
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 34140
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 34173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34174
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 34176
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 3

    .prologue
    .line 34189
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    if-nez v1, :cond_0

    .line 34190
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34193
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 34194
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 34195
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2

    .prologue
    .line 34148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    if-nez v0, :cond_0

    .line 34149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34152
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .line 34153
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAppId()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2

    .prologue
    .line 34269
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$98802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z

    .line 34270
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appId_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$98902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 34271
    return-object p0
.end method

.method public clearAppType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2

    .prologue
    .line 34290
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$99002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z

    .line 34291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$99102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 34292
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2

    .prologue
    .line 34157
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

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
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34258
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34279
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 34166
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 34162
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .locals 1

    .prologue
    .line 34255
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public hasAppType()Z
    .locals 1

    .prologue
    .line 34276
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;
    .locals 1

    .prologue
    .line 34144
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 34130
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 34170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34208
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 34216
    :goto_0
    return-object p0

    .line 34209
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34210
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    .line 34212
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34213
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getAppType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    .line 34215
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34223
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 34227
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 34228
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 34233
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 34235
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 34236
    :goto_1
    return-object p0

    .line 34230
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 34241
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    goto :goto_0

    .line 34245
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    goto :goto_0

    .line 34228
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x318a -> :sswitch_1
        0x3c52 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 34199
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    if-eqz v0, :cond_0

    .line 34200
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object p0

    .line 34203
    .end local p0
    :goto_0
    return-object p0

    .line 34202
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
    .line 34130
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34130
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

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
    .line 34130
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

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
    .line 34130
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34130
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

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
    .line 34130
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34261
    if-nez p1, :cond_0

    .line 34262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34264
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$98802(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z

    .line 34265
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appId_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$98902(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 34266
    return-object p0
.end method

.method public setAppType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 34282
    if-nez p1, :cond_0

    .line 34283
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34285
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->hasAppType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$99002(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Z)Z

    .line 34286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->appType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;->access$99102(Lcom/htc/cscore/transport/SyncProtocol$DeleteRecommendedWishlist;Ljava/lang/String;)Ljava/lang/String;

    .line 34287
    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33181
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$96000(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33176
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$96100()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 33227
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 33231
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 3

    .prologue
    .line 33184
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;-><init>()V

    .line 33185
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 33186
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 33219
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33220
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 33222
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 3

    .prologue
    .line 33235
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-nez v1, :cond_0

    .line 33236
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33239
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 33240
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 33241
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 33194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-nez v0, :cond_0

    .line 33195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33198
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .line 33199
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearWishlist()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 33329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 33330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 33331
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2

    .prologue
    .line 33203
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 33212
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 33208
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    .locals 1

    .prologue
    .line 33302
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public hasWishlist()Z
    .locals 1

    .prologue
    .line 33299
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;
    .locals 1

    .prologue
    .line 33190
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 33176
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 33216
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33254
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 33259
    :goto_0
    return-object p0

    .line 33255
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33256
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    .line 33258
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33266
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 33270
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 33271
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 33276
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33278
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 33279
    :goto_1
    return-object p0

    .line 33273
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 33284
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v0

    .line 33285
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->hasWishlist()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33286
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->getWishlist()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    .line 33288
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 33289
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    goto :goto_0

    .line 33271
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x367a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 33245
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    if-eqz v0, :cond_0

    .line 33246
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object p0

    .line 33249
    .end local p0
    :goto_0
    return-object p0

    .line 33248
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
    .line 33176
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33176
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 33176
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 33176
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33176
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

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
    .line 33176
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33318
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 33320
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96400(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 33325
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 33326
    return-object p0

    .line 33323
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    goto :goto_0
.end method

.method public setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 33313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 33314
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 33315
    return-object p0
.end method

.method public setWishlist(Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 33305
    if-nez p1, :cond_0

    .line 33306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 33308
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->hasWishlist:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96302(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Z)Z

    .line 33309
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->wishlist_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;->access$96402(Lcom/htc/cscore/transport/SyncProtocol$AddRecommendWishlist;Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendWishlist;

    .line 33310
    return-object p0
.end method

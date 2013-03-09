.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36236
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$105100(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36231
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$105200()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36282
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 36286
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 3

    .prologue
    .line 36239
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;-><init>()V

    .line 36240
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 36241
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 36274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36275
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 36277
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 3

    .prologue
    .line 36290
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    if-nez v1, :cond_0

    .line 36291
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36294
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 36295
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 36296
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 36249
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    if-nez v0, :cond_0

    .line 36250
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36253
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .line 36254
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 36384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105402(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Z)Z

    .line 36385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 36386
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2

    .prologue
    .line 36258
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

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
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 36267
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 36263
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 36357
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public hasRecommendAppsOnPhone()Z
    .locals 1

    .prologue
    .line 36354
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;
    .locals 1

    .prologue
    .line 36245
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 36231
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 36271
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 36309
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 36314
    :goto_0
    return-object p0

    .line 36310
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36311
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    .line 36313
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36321
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 36325
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 36326
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 36331
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36333
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 36334
    :goto_1
    return-object p0

    .line 36328
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 36339
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v0

    .line 36340
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->hasRecommendAppsOnPhone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 36341
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->getRecommendAppsOnPhone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    .line 36343
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 36344
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->setRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    goto :goto_0

    .line 36326
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1ec2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 36300
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    if-eqz v0, :cond_0

    .line 36301
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object p0

    .line 36304
    .end local p0
    :goto_0
    return-object p0

    .line 36303
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
    .line 36231
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36231
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

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
    .line 36231
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

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
    .line 36231
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36231
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

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
    .line 36231
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 36373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105500(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 36375
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105500(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 36380
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105402(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Z)Z

    .line 36381
    return-object p0

    .line 36378
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    goto :goto_0
.end method

.method public setRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 36368
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105402(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Z)Z

    .line 36369
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 36370
    return-object p0
.end method

.method public setRecommendAppsOnPhone(Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 36360
    if-nez p1, :cond_0

    .line 36361
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36363
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->hasRecommendAppsOnPhone:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105402(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Z)Z

    .line 36364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->recommendAppsOnPhone_:Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;->access$105502(Lcom/htc/cscore/transport/SyncProtocol$UpdateRecommendAppsOnPhone;Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendAppsOnPhone;

    .line 36365
    return-object p0
.end method

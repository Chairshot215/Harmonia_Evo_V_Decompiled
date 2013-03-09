.class public final Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46324
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$133400(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46319
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$133500()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46370
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46371
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46374
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 3

    .prologue
    .line 46327
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;-><init>()V

    .line 46328
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 46329
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    .prologue
    .line 46362
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46363
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 46365
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 3

    .prologue
    .line 46378
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    if-nez v1, :cond_0

    .line 46379
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46382
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 46383
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 46384
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 2

    .prologue
    .line 46337
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    if-nez v0, :cond_0

    .line 46338
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46341
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .line 46342
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearVoiceMailCount()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->hasVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->access$133702(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;Z)Z

    .line 46449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->voiceMailCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->access$133802(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;I)I

    .line 46450
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 2

    .prologue
    .line 46346
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

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
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    .prologue
    .line 46355
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46351
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailCount()I
    .locals 1

    .prologue
    .line 46440
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getVoiceMailCount()I

    move-result v0

    return v0
.end method

.method public hasVoiceMailCount()Z
    .locals 1

    .prologue
    .line 46437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->hasVoiceMailCount()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;
    .locals 1

    .prologue
    .line 46333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 46319
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 46359
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46397
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46402
    :goto_0
    return-object p0

    .line 46398
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->hasVoiceMailCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46399
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getVoiceMailCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->setVoiceMailCount(I)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    .line 46401
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46409
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 46413
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 46414
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 46419
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46421
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 46422
    :goto_1
    return-object p0

    .line 46416
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 46427
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->setVoiceMailCount(I)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    goto :goto_0

    .line 46414
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2ec0 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46388
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    if-eqz v0, :cond_0

    .line 46389
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object p0

    .line 46392
    .end local p0
    :goto_0
    return-object p0

    .line 46391
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
    .line 46319
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46319
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

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
    .line 46319
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

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
    .line 46319
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46319
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

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
    .line 46319
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setVoiceMailCount(I)Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46443
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->hasVoiceMailCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->access$133702(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;Z)Z

    .line 46444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->voiceMailCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;->access$133802(Lcom/htc/cscore/transport/SyncProtocol$SetNewVoiceMailCount;I)I

    .line 46445
    return-object p0
.end method

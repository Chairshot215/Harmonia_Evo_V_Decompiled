.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13278
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$37700(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13273
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37800()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13324
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13328
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 3

    .prologue
    .line 13281
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;-><init>()V

    .line 13282
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 13283
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 13316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13317
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 13319
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 3

    .prologue
    .line 13332
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    if-nez v1, :cond_0

    .line 13333
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13336
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 13337
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 13338
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2

    .prologue
    .line 13291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    if-nez v0, :cond_0

    .line 13292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13295
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .line 13296
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMessage()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2

    .prologue
    .line 13426
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38002(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Z)Z

    .line 13427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 13428
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2

    .prologue
    .line 13300
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

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
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 13309
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13305
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    .locals 1

    .prologue
    .line 13399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasMessage()Z
    .locals 1

    .prologue
    .line 13396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;
    .locals 1

    .prologue
    .line 13287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 13273
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 13313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13351
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13356
    :goto_0
    return-object p0

    .line 13352
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13353
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    .line 13355
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13363
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 13367
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13368
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 13373
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13375
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 13376
    :goto_1
    return-object p0

    .line 13370
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 13381
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v0

    .line 13382
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->hasMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13383
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->getMessage()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    .line 13385
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 13386
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    goto :goto_0

    .line 13368
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1d5a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13342
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    if-eqz v0, :cond_0

    .line 13343
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object p0

    .line 13346
    .end local p0
    :goto_0
    return-object p0

    .line 13345
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
    .line 13273
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13273
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

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
    .line 13273
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

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
    .line 13273
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13273
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

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
    .line 13273
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13415
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38100(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38100(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 13422
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38002(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Z)Z

    .line 13423
    return-object p0

    .line 13420
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    goto :goto_0
.end method

.method public setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 13410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38002(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Z)Z

    .line 13411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 13412
    return-object p0
.end method

.method public setMessage(Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13402
    if-nez p1, :cond_0

    .line 13403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13405
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->hasMessage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38002(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Z)Z

    .line 13406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->message_:Lcom/htc/cscore/transport/SyncProtocol$HMessage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;->access$38102(Lcom/htc/cscore/transport/SyncProtocol$UpdateMessage;Lcom/htc/cscore/transport/SyncProtocol$HMessage;)Lcom/htc/cscore/transport/SyncProtocol$HMessage;

    .line 13407
    return-object p0
.end method

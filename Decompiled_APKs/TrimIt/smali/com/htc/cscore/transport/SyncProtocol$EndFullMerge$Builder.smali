.class public final Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44317
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$129200(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44312
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$129300()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 44363
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44364
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 44367
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 3

    .prologue
    .line 44320
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;-><init>()V

    .line 44321
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 44322
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 44355
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 44358
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 3

    .prologue
    .line 44371
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    if-nez v1, :cond_0

    .line 44372
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44375
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 44376
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 44377
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 2

    .prologue
    .line 44330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    if-nez v0, :cond_0

    .line 44331
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44334
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .line 44335
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 2

    .prologue
    .line 44339
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

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
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 44348
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 44344
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;
    .locals 1

    .prologue
    .line 44326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 44312
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 44352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44390
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 44392
    :goto_0
    return-object p0

    .line 44391
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44399
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 44403
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 44404
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 44409
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44411
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 44412
    :goto_0
    return-object p0

    .line 44406
    :pswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 44404
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 44381
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    if-eqz v0, :cond_0

    .line 44382
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object p0

    .line 44385
    .end local p0
    :goto_0
    return-object p0

    .line 44384
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
    .line 44312
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44312
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

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
    .line 44312
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

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
    .line 44312
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44312
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

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
    .line 44312
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$EndFullMerge$Builder;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$Image;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;)Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;-><init>()V

    .line 414
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$Image;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$Image;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    .line 415
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 3

    .prologue
    .line 464
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    if-nez v1, :cond_0

    .line 465
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    .line 469
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$Image;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    .line 470
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$Image;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Image;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    .line 428
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearValue()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->access$1202(Lcom/htc/cscore/transport/SyncProtocol$Image;Z)Z

    .line 538
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Image;->value_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->access$1302(Lcom/htc/cscore/transport/SyncProtocol$Image;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 539
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 2

    .prologue
    .line 432
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

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
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1

    .prologue
    .line 441
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$Image;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$Image;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 483
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$Image;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 488
    :goto_0
    return-object p0

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getValue()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    .line 487
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    .line 499
    .local v1, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 500
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 505
    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 508
    :goto_1
    return-object p0

    .line 502
    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 513
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 474
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$Image;

    if-eqz v0, :cond_0

    .line 475
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$Image;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$Image;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object p0

    .line 478
    .end local p0
    :goto_0
    return-object p0

    .line 477
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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

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
    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Image;->hasValue:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->access$1202(Lcom/htc/cscore/transport/SyncProtocol$Image;Z)Z

    .line 533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$Image$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$Image;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$Image;->value_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$Image;->access$1302(Lcom/htc/cscore/transport/SyncProtocol$Image;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 534
    return-object p0
.end method

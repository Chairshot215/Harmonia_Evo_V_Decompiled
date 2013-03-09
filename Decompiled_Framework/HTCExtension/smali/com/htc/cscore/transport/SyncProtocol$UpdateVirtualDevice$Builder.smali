.class public final Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$134100(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$134200()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public hasVirtualDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->hasVirtualDevice()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->getVirtualDevice()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x13e2 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134500(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134500(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    goto :goto_0
.end method

.method public setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object p0
.end method

.method public setVirtualDevice(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->hasVirtualDevice:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134402(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->virtualDevice_:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;->access$134502(Lcom/htc/cscore/transport/SyncProtocol$UpdateVirtualDevice;Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDevice;

    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$129700(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$129800()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearExternalError()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130002(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public hasExternalError()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeExternalError(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130100(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130100(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130002(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeExternalError(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->hasExternalError()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->getExternalError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->setExternalError(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d32 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setExternalError(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130002(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object p0
.end method

.method public setExternalError(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->hasExternalError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130002(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->externalError_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;->access$130102(Lcom/htc/cscore/transport/SyncProtocol$LogRemoteError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object p0
.end method

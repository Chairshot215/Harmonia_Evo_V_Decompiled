.class public final Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$13800(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13900()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearErrorCode()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I

    return-object p0
.end method

.method public clearErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->GeneralError:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object p0
.end method

.method public clearErrorString()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearIsServerError()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsServerError()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v0

    return v0
.end method

.method public hasErrorCode()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    return v0
.end method

.method public hasErrorCodeType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    return v0
.end method

.method public hasErrorString()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    return v0
.end method

.method public hasIsServerError()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorCodeType()Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getErrorString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getIsServerError()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    move-result-object v3

    if-nez v3, :cond_1

    const/16 v4, 0x7bf

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x588 -> :sswitch_1
        0x20c8 -> :sswitch_2
        0x39f2 -> :sswitch_3
        0x3df8 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(I)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14102(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCode_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14202(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;I)I

    return-object p0
.end method

.method public setErrorCodeType(Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorCodeType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14302(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorCodeType_:Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14402(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$HErrorCode;

    return-object p0
.end method

.method public setErrorString(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasErrorString:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14502(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->errorString_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14602(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setIsServerError(Z)Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->hasIsServerError:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14702(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HExternalError$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HExternalError;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->isServerError_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HExternalError;->access$14802(Lcom/htc/cscore/transport/SyncProtocol$HExternalError;Z)Z

    return-object p0
.end method

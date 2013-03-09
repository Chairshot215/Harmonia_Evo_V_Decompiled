.class public final Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$142100(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$142200()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$143002(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$143102(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    return-object p0
.end method

.method public clearOrdinal()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142802(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->ordinal_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142902(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;I)I

    return-object p0
.end method

.method public clearQueueName()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142402(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getQueueName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->queueName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142502(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142602(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142702(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getOrdinal()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getOrdinal()I

    move-result v0

    return v0
.end method

.method public getQueueName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getQueueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasOrdinal()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal()Z

    move-result v0

    return v0
.end method

.method public hasQueueName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getQueueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setQueueName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getOrdinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setOrdinal(I)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v1}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setQueueName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setOrdinal(I)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1ea -> :sswitch_1
        0x1c50 -> :sswitch_2
        0x31d2 -> :sswitch_3
        0x3990 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$143002(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$143102(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    return-object p0
.end method

.method public setOrdinal(I)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasOrdinal:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142802(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->ordinal_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142902(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;I)I

    return-object p0
.end method

.method public setQueueName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasQueueName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142402(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->queueName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142502(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142602(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;->access$142702(Lcom/htc/cscore/transport/SyncProtocol$MessageQueueTestMessage;J)J

    return-object p0
.end method

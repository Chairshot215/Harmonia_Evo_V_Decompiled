.class public final Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPudData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30950
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$89100(Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30945
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$89200()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30996
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 31000
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 3

    .prologue
    .line 30953
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;-><init>()V

    .line 30954
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 30955
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 30988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30989
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 30991
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 3

    .prologue
    .line 31004
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    if-nez v1, :cond_0

    .line 31005
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31008
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 31009
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 31010
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2

    .prologue
    .line 30963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    if-nez v0, :cond_0

    .line 30964
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30967
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .line 30968
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2

    .prologue
    .line 31108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89402(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31109
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89502(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 31110
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2

    .prologue
    .line 31145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89602(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31146
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31147
    return-object p0
.end method

.method public clearMessageId()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2

    .prologue
    .line 31182
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89802(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31184
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 3

    .prologue
    .line 31200
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$90002(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31201
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$90102(Lcom/htc/cscore/transport/SyncProtocol$HPudData;J)J

    .line 31202
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2

    .prologue
    .line 30972
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

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
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 31097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 30981
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 30977
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 31155
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 31192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 31094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 31115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 31152
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 31189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPudData;
    .locals 1

    .prologue
    .line 30959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 30945
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 30985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 31023
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 31037
    :goto_0
    return-object p0

    .line 31024
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31025
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 31027
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31028
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 31030
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 31031
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 31033
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31034
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    .line 31036
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31044
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 31048
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 31049
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 31054
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31056
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 31057
    :goto_1
    return-object p0

    .line 31051
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 31062
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    goto :goto_0

    .line 31066
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 31067
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->hasMessageId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 31070
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 31071
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    goto :goto_0

    .line 31075
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    goto :goto_0

    .line 31079
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 31080
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 31081
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 31083
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 31084
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    goto :goto_0

    .line 31049
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1182 -> :sswitch_2
        0x1e72 -> :sswitch_3
        0x2892 -> :sswitch_4
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 31014
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    if-eqz v0, :cond_0

    .line 31015
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object p0

    .line 31018
    .end local p0
    :goto_0
    return-object p0

    .line 31017
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
    .line 30945
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30945
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

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
    .line 30945
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

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
    .line 30945
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30945
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

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
    .line 30945
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31134
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89700(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 31136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89700(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31141
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89602(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31142
    return-object p0

    .line 31139
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89900(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 31173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89900(Lcom/htc/cscore/transport/SyncProtocol$HPudData;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31178
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89802(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31179
    return-object p0

    .line 31176
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31100
    if-nez p1, :cond_0

    .line 31101
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31103
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89402(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89502(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 31105
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 31129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89602(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31131
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31121
    if-nez p1, :cond_0

    .line 31122
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31124
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89602(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89702(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31126
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 31166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89802(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31168
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31158
    if-nez p1, :cond_0

    .line 31159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 31161
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89802(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31162
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$89902(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 31163
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 31195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$90002(Lcom/htc/cscore/transport/SyncProtocol$HPudData;Z)Z

    .line 31196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPudData$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPudData;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPudData;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPudData;->access$90102(Lcom/htc/cscore/transport/SyncProtocol$HPudData;J)J

    .line 31197
    return-object p0
.end method

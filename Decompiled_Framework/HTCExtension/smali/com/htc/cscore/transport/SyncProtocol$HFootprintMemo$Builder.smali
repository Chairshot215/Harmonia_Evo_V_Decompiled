.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$27800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27900()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearFootprintId()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearMemoTime()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoTime_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;I)I

    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMemoTime()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getMemoTime()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasFootprintId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMemoTime()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28600(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getMemoTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->hasFootprintId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1888 -> :sswitch_4
        0x1e72 -> :sswitch_5
        0x223a -> :sswitch_6
        0x2892 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28800(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setMemoTime(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasMemoTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$28902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->memoTime_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;I)I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;->access$29402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintMemo;J)J

    return-object p0
.end method

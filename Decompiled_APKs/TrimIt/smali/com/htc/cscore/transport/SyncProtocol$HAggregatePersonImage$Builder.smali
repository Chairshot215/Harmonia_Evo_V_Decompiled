.class public final Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3912
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$9600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3907
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3958
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3959
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3962
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 3915
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;-><init>()V

    .line 3916
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3917
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 3950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3953
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 3

    .prologue
    .line 3966
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-nez v1, :cond_0

    .line 3967
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3970
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3971
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3972
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 3925
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-nez v0, :cond_0

    .line 3926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3929
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 3930
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4107
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4109
    return-object p0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4130
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 4151
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4172
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4207
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4209
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 4228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4230
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 3

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4247
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;J)J

    .line 4248
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2

    .prologue
    .line 3934
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 4138
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 3943
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 3939
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 4238
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAggregatePersonId()Z
    .locals 1

    .prologue
    .line 4077
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    return v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 4135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 4156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 4177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 4214
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 3921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 3907
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10000(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4098
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10000(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4103
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4104
    return-object p0

    .line 4101
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 3985
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4008
    :goto_0
    return-object p0

    .line 3986
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3987
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 3989
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3990
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 3992
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3993
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 3995
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3996
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 3998
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3999
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 4001
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4002
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 4004
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4005
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 4007
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4015
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 4019
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4020
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 4025
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4027
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 4028
    :goto_1
    return-object p0

    .line 4022
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 4033
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4037
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4041
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4045
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4049
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4053
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 4054
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 4057
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 4058
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4062
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 4063
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->hasAggregatePersonId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4064
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->getAggregatePersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 4066
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 4067
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    goto :goto_0

    .line 4020
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
        0x3dea -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 3976
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    if-eqz v0, :cond_0

    .line 3977
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object p0

    .line 3980
    .end local p0
    :goto_0
    return-object p0

    .line 3979
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
    .line 3907
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3907
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 3907
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 3907
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3907
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

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
    .line 3907
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4196
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10800(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10800(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4203
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4204
    return-object p0

    .line 4201
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4091
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4093
    return-object p0
.end method

.method public setAggregatePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4083
    if-nez p1, :cond_0

    .line 4084
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4086
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasAggregatePersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$9902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4087
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->aggregatePersonId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4088
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4120
    if-nez p1, :cond_0

    .line 4121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4123
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4124
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4125
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4141
    if-nez p1, :cond_0

    .line 4142
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4144
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 4146
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4162
    if-nez p1, :cond_0

    .line 4163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4165
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4167
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4193
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4183
    if-nez p1, :cond_0

    .line 4184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 4188
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4220
    if-nez p1, :cond_0

    .line 4221
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4223
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$10902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4224
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 4225
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;Z)Z

    .line 4242
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->access$11202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;J)J

    .line 4243
    return-object p0
.end method

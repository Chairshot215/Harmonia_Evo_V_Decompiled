.class public final Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9197
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$25700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9192
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$25800()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9243
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9244
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9247
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 3

    .prologue
    .line 9200
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;-><init>()V

    .line 9201
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9202
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 9235
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9238
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 3

    .prologue
    .line 9251
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    if-nez v1, :cond_0

    .line 9252
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9255
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9256
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9257
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    if-nez v0, :cond_0

    .line 9211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9214
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .line 9215
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9390
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9391
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9411
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 9412
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9431
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9432
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9433
    return-object p0
.end method

.method public clearFootprintId()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9468
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9469
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9470
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9505
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9506
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9507
    return-object p0
.end method

.method public clearImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9526
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9527
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->Web:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    .line 9528
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9547
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9548
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9549
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 3

    .prologue
    .line 9565
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9566
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;J)J

    .line 9567
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2

    .prologue
    .line 9219
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

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
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9378
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 9399
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 9228
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 9224
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9420
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 9441
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 9478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    .locals 1

    .prologue
    .line 9515
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9536
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 9557
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 9375
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 9396
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 9417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasFootprintId()Z
    .locals 1

    .prologue
    .line 9438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 9475
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 9512
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 9533
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 9554
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;
    .locals 1

    .prologue
    .line 9206
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 9192
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9457
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26700(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9464
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9465
    return-object p0

    .line 9462
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9270
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 9296
    :goto_0
    return-object p0

    .line 9271
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9272
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9274
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9275
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9277
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9278
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9280
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9281
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9283
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9284
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9286
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9287
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getImageType()Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setImageType(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9289
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9290
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9292
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9293
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    .line 9295
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9303
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 9307
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 9308
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 9313
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9315
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 9316
    :goto_1
    return-object p0

    .line 9310
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 9321
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 9322
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->hasFootprintId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9323
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->getFootprintId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 9325
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 9326
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9330
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9334
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9338
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9342
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9346
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9350
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 9351
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9352
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 9354
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 9355
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto :goto_0

    .line 9359
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 9360
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    move-result-object v4

    .line 9361
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    if-nez v4, :cond_3

    .line 9362
    const/16 v5, 0x719

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 9364
    :cond_3
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->setImageType(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    goto/16 :goto_0

    .line 9308
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xee2 -> :sswitch_2
        0x1088 -> :sswitch_3
        0x15a2 -> :sswitch_4
        0x1e72 -> :sswitch_5
        0x223a -> :sswitch_6
        0x2892 -> :sswitch_7
        0x38c8 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 9261
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    if-eqz v0, :cond_0

    .line 9262
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object p0

    .line 9265
    .end local p0
    :goto_0
    return-object p0

    .line 9264
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
    .line 9192
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9192
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

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
    .line 9192
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

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
    .line 9192
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9192
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

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
    .line 9192
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26900(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9496
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26900(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9501
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9502
    return-object p0

    .line 9499
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9381
    if-nez p1, :cond_0

    .line 9382
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9384
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9386
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9402
    if-nez p1, :cond_0

    .line 9403
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9405
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9406
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 9407
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9423
    if-nez p1, :cond_0

    .line 9424
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9426
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9427
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9428
    return-object p0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9452
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9453
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9454
    return-object p0
.end method

.method public setFootprintId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9444
    if-nez p1, :cond_0

    .line 9445
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9447
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasFootprintId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26602(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9448
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->footprintId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26702(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9449
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9491
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9481
    if-nez p1, :cond_0

    .line 9482
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9484
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26802(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9485
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$26902(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 9486
    return-object p0
.end method

.method public setImageType(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9518
    if-nez p1, :cond_0

    .line 9519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9521
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasImageType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27002(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9522
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->imageType_:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27102(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$HFootprintImageType;

    .line 9523
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9539
    if-nez p1, :cond_0

    .line 9540
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9542
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27202(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9543
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27302(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Ljava/lang/String;)Ljava/lang/String;

    .line 9544
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27402(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;Z)Z

    .line 9561
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;->access$27502(Lcom/htc/cscore/transport/SyncProtocol$HFootprintImage;J)J

    .line 9562
    return-object p0
.end method

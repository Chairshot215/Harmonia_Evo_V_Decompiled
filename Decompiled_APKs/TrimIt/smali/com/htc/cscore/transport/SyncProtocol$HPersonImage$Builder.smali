.class public final Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28313
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$81000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28308
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$81100()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28359
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28360
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 28363
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 3

    .prologue
    .line 28316
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;-><init>()V

    .line 28317
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 28318
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 28351
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 28354
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 3

    .prologue
    .line 28367
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    if-nez v1, :cond_0

    .line 28368
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28371
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 28372
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 28373
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    if-nez v0, :cond_0

    .line 28327
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28330
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .line 28331
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28493
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28494
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28513
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28514
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 28515
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28534
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81702(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28535
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81802(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28536
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28571
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81902(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28572
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28573
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28592
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82102(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28593
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82202(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28594
    return-object p0
.end method

.method public clearPersonId()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28629
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28630
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28631
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 3

    .prologue
    .line 28647
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28648
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;J)J

    .line 28649
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2

    .prologue
    .line 28335
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

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
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28481
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 28502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 28344
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 28340
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28523
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28544
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28581
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 28602
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 28639
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 28478
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 28499
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 28520
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 28541
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 28578
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPersonId()Z
    .locals 1

    .prologue
    .line 28599
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 28636
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;
    .locals 1

    .prologue
    .line 28322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 28308
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 28348
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 28386
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 28409
    :goto_0
    return-object p0

    .line 28387
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28388
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28390
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28391
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28393
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28394
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28396
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28397
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28399
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28400
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28402
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 28403
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28405
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28406
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    .line 28408
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28416
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 28420
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 28421
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 28426
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 28428
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 28429
    :goto_1
    return-object p0

    .line 28423
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 28434
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28438
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28442
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28446
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28450
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28454
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 28455
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->hasPersonId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28456
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->getPersonId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 28458
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 28459
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28463
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 28464
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 28465
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 28467
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 28468
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    goto :goto_0

    .line 28421
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2512 -> :sswitch_6
        0x2892 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 28377
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    if-eqz v0, :cond_0

    .line 28378
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object p0

    .line 28381
    .end local p0
    :goto_0
    return-object p0

    .line 28380
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
    .line 28308
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28308
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

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
    .line 28308
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

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
    .line 28308
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28308
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

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
    .line 28308
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28560
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 28562
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82000(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28567
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81902(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28568
    return-object p0

    .line 28565
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28618
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82400(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 28620
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82400(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28625
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28626
    return-object p0

    .line 28623
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28484
    if-nez p1, :cond_0

    .line 28485
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28487
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28489
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28505
    if-nez p1, :cond_0

    .line 28506
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28508
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28509
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 28510
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28526
    if-nez p1, :cond_0

    .line 28527
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28529
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81702(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28530
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81802(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28531
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 28555
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81902(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28556
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28557
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28547
    if-nez p1, :cond_0

    .line 28548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28550
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$81902(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28551
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82002(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28552
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28584
    if-nez p1, :cond_0

    .line 28585
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28587
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82102(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28588
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82202(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Ljava/lang/String;)Ljava/lang/String;

    .line 28589
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 28613
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28614
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28615
    return-object p0
.end method

.method public setPersonId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28605
    if-nez p1, :cond_0

    .line 28606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 28608
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasPersonId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82302(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->personId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82402(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 28610
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 28642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82502(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;Z)Z

    .line 28643
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;->access$82602(Lcom/htc/cscore/transport/SyncProtocol$HPersonImage;J)J

    .line 28644
    return-object p0
.end method

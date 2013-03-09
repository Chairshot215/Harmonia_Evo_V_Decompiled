.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13645
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$38400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13640
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38500()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13691
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13692
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 13695
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 3

    .prologue
    .line 13648
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;-><init>()V

    .line 13649
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 13650
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 13683
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13684
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 13686
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 3

    .prologue
    .line 13699
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-nez v1, :cond_0

    .line 13700
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13703
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 13704
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 13705
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13658
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-nez v0, :cond_0

    .line 13659
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13662
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .line 13663
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContentType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13818
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13819
    return-object p0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38902(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13839
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39002(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 13840
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13859
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39102(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13860
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39202(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13861
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13896
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13897
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13898
    return-object p0
.end method

.method public clearMessageId()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13935
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13956
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2

    .prologue
    .line 13667
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13806
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 13827
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 13676
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 13672
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13848
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 13869
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 13906
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13943
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 13803
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 13824
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 13845
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 13866
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMessageId()Z
    .locals 1

    .prologue
    .line 13903
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 13940
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;
    .locals 1

    .prologue
    .line 13654
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 13640
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 13680
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13718
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 13738
    :goto_0
    return-object p0

    .line 13719
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13720
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13722
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13723
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13725
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13726
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13728
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13729
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13731
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13732
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13734
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13735
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    .line 13737
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13745
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 13749
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 13750
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 13755
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13757
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 13758
    :goto_1
    return-object p0

    .line 13752
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 13763
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13767
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 13768
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->hasMessageId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13769
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getMessageId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 13771
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 13772
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13776
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13780
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13784
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13788
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 13789
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13790
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 13792
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 13793
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    goto :goto_0

    .line 13750
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1182 -> :sswitch_2
        0x15a2 -> :sswitch_3
        0x1e72 -> :sswitch_4
        0x223a -> :sswitch_5
        0x2892 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 13709
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    if-eqz v0, :cond_0

    .line 13710
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object p0

    .line 13713
    .end local p0
    :goto_0
    return-object p0

    .line 13712
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
    .line 13640
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13640
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 13640
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 13640
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13640
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

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
    .line 13640
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13885
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39400(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13892
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13893
    return-object p0

    .line 13890
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13922
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39600(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39600(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13929
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13930
    return-object p0

    .line 13927
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13809
    if-nez p1, :cond_0

    .line 13810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13812
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasContentType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13813
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->contentType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13814
    return-object p0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13830
    if-nez p1, :cond_0

    .line 13831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13833
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$38902(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13834
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39002(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 13835
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13851
    if-nez p1, :cond_0

    .line 13852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13854
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39102(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13855
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39202(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13856
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 13880
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13881
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13882
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13872
    if-nez p1, :cond_0

    .line 13873
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13875
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39302(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39402(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13877
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 13917
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13918
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13919
    return-object p0
.end method

.method public setMessageId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13909
    if-nez p1, :cond_0

    .line 13910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13912
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasMessageId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39502(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13913
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->messageId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39602(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 13914
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 13946
    if-nez p1, :cond_0

    .line 13947
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 13949
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39702(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Z)Z

    .line 13950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;->access$39802(Lcom/htc/cscore/transport/SyncProtocol$HMessageAttachment;Ljava/lang/String;)Ljava/lang/String;

    .line 13951
    return-object p0
.end method

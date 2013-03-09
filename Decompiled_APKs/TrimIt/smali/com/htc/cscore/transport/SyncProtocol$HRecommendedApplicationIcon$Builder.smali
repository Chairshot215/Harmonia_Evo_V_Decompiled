.class public final Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36896
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$106500(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36891
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$106600()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36942
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36943
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 36946
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 3

    .prologue
    .line 36899
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;-><init>()V

    .line 36900
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 36901
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 36934
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36935
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 36937
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 3

    .prologue
    .line 36950
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-nez v1, :cond_0

    .line 36951
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36954
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 36955
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 36956
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 36909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-nez v0, :cond_0

    .line 36910
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36913
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .line 36914
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearData()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 37068
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 37070
    return-object p0
.end method

.method public clearFileType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 37089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 37091
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 37126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37128
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 37147
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 37149
    return-object p0
.end method

.method public clearPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 37184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37185
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37186
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 3

    .prologue
    .line 37202
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37203
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;J)J

    .line 37204
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2

    .prologue
    .line 36918
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/htc/protobuf/ByteString;
    .locals 1

    .prologue
    .line 37057
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 36927
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 36923
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 37157
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 37194
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 37054
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v0

    return v0
.end method

.method public hasFileType()Z
    .locals 1

    .prologue
    .line 37075
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 37096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 37133
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPhoneAppId()Z
    .locals 1

    .prologue
    .line 37154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 37191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;
    .locals 1

    .prologue
    .line 36905
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 36891
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 36931
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 36969
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 36989
    :goto_0
    return-object p0

    .line 36970
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36971
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getData()Lcom/htc/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36973
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36974
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getFileType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36976
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36977
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36979
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 36980
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36982
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36983
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergePhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36985
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36986
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    .line 36988
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36996
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 37000
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 37001
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 37006
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 37008
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 37009
    :goto_1
    return-object p0

    .line 37003
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 37014
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37018
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37022
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBytes()Lcom/htc/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37026
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37030
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 37031
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37032
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 37034
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 37035
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37039
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 37040
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->hasPhoneAppId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 37041
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->getPhoneAppId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 37043
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 37044
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    goto :goto_0

    .line 37001
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xee2 -> :sswitch_1
        0x1088 -> :sswitch_2
        0x1e72 -> :sswitch_3
        0x223a -> :sswitch_4
        0x2892 -> :sswitch_5
        0x29ea -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 36960
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    if-eqz v0, :cond_0

    .line 36961
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object p0

    .line 36964
    .end local p0
    :goto_0
    return-object p0

    .line 36963
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
    .line 36891
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36891
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 36891
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 36891
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36891
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

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
    .line 36891
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107300(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37122
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37123
    return-object p0

    .line 37120
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergePhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37173
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107700(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37175
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107700(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37180
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37181
    return-object p0

    .line 37178
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setData(Lcom/htc/protobuf/ByteString;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37060
    if-nez p1, :cond_0

    .line 37061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37063
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasData:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->data_:Lcom/htc/protobuf/ByteString;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$106902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/protobuf/ByteString;)Lcom/htc/protobuf/ByteString;

    .line 37065
    return-object p0
.end method

.method public setFileType(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37081
    if-nez p1, :cond_0

    .line 37082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37084
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasFileType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107002(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->fileType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107102(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 37086
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 37110
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37111
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37112
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37102
    if-nez p1, :cond_0

    .line 37103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37105
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107202(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107302(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37107
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37139
    if-nez p1, :cond_0

    .line 37140
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37142
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107402(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107502(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Ljava/lang/String;)Ljava/lang/String;

    .line 37144
    return-object p0
.end method

.method public setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 37168
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37169
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37170
    return-object p0
.end method

.method public setPhoneAppId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37160
    if-nez p1, :cond_0

    .line 37161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 37163
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasPhoneAppId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107602(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37164
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->phoneAppId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107702(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 37165
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 37197
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107802(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;Z)Z

    .line 37198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;->access$107902(Lcom/htc/cscore/transport/SyncProtocol$HRecommendedApplicationIcon;J)J

    .line 37199
    return-object p0
.end method

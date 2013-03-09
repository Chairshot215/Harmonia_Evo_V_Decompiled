.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21934
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$63100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21929
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$63200()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 21980
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 21984
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 3

    .prologue
    .line 21937
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;-><init>()V

    .line 21938
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 21939
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 21972
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 21975
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 3

    .prologue
    .line 21988
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-nez v1, :cond_0

    .line 21989
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 21992
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 21993
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 21994
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 21947
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-nez v0, :cond_0

    .line 21948
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21951
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .line 21952
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 22115
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22116
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22117
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 22152
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22153
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22154
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;I)I

    .line 22172
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 3

    .prologue
    .line 22188
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22189
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;J)J

    .line 22190
    return-object p0
.end method

.method public clearWebSite()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 22209
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22210
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Ljava/lang/String;)Ljava/lang/String;

    .line 22211
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2

    .prologue
    .line 21956
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 21965
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 21961
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 22088
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 22125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 22162
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 22180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWebSite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 22085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 22122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 22159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 22177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasWebSite()Z
    .locals 1

    .prologue
    .line 22195
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;
    .locals 1

    .prologue
    .line 21943
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 21929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 21969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 22007
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 22024
    :goto_0
    return-object p0

    .line 22008
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22009
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 22011
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22012
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 22014
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22015
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 22017
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22018
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 22020
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22021
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getWebSite()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    .line 22023
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22031
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 22035
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 22036
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 22041
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 22043
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 22044
    :goto_1
    return-object p0

    .line 22038
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 22049
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 22053
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 22057
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 22058
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22059
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 22061
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 22062
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 22066
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 22067
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 22068
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 22070
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 22071
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 22075
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    goto :goto_0

    .line 22036
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1d5a -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 21998
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    if-eqz v0, :cond_0

    .line 21999
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object p0

    .line 22002
    .end local p0
    :goto_0
    return-object p0

    .line 22001
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
    .line 21929
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21929
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 21929
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 21929
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21929
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

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
    .line 21929
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22104
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22111
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22112
    return-object p0

    .line 22109
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22141
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22143
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22148
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22149
    return-object p0

    .line 22146
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 22099
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22101
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22091
    if-nez p1, :cond_0

    .line 22092
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22094
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22095
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22096
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 22136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22137
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22138
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22128
    if-nez p1, :cond_0

    .line 22129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22131
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22132
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 22133
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22165
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$63902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;I)I

    .line 22167
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22183
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22184
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;J)J

    .line 22185
    return-object p0
.end method

.method public setWebSite(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 22201
    if-nez p1, :cond_0

    .line 22202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 22204
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->hasWebSite:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Z)Z

    .line 22205
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->webSite_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;->access$64302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileWebSite;Ljava/lang/String;)Ljava/lang/String;

    .line 22206
    return-object p0
.end method

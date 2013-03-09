.class public final Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$40100(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$40200()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCanonicalPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40402(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->canonicalPhoneNumber_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40502(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;J)J

    return-object p0
.end method

.method public clearDisplayPhoneNumber()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40602(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40702(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40802(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40902(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearThreadId()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41002(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41102(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41202(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41302(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPhoneNumber()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getCanonicalPhoneNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCanonicalPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasCanonicalPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasDisplayPhoneNumber()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasDisplayPhoneNumber()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasThreadId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasCanonicalPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getCanonicalPhoneNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasDisplayPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getDisplayPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->hasThreadId()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->getThreadId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1f5a -> :sswitch_2
        0x2640 -> :sswitch_3
        0x2892 -> :sswitch_4
        0x2bd2 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40900(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40900(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40902(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40802(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40902(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41100(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41100(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41102(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41002(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41102(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setCanonicalPhoneNumber(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasCanonicalPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40402(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->canonicalPhoneNumber_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40502(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;J)J

    return-object p0
.end method

.method public setDisplayPhoneNumber(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasDisplayPhoneNumber:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40602(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->displayPhoneNumber_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40702(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40802(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40902(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40802(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$40902(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41002(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41102(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setThreadId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasThreadId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41002(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->threadId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41102(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41202(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;->access$41302(Lcom/htc/cscore/transport/SyncProtocol$HMessageRecipient;J)J

    return-object p0
.end method

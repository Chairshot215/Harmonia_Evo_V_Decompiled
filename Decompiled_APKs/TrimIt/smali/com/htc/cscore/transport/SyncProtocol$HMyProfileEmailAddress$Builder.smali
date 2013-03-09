.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17844
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$50600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17839
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$50700()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 17890
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 17894
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 3

    .prologue
    .line 17847
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;-><init>()V

    .line 17848
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 17849
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 17882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17883
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 17885
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 3

    .prologue
    .line 17898
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-nez v1, :cond_0

    .line 17899
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17902
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 17903
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 17904
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 17857
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-nez v0, :cond_0

    .line 17858
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17861
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .line 17862
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEmailAddress()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 18022
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$50902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 18024
    return-object p0
.end method

.method public clearEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 18043
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18044
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->EmailHome:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    .line 18045
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 18080
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18081
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18082
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 18117
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18118
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18119
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18135
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18136
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;I)I

    .line 18137
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 3

    .prologue
    .line 18153
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18154
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$52002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;J)J

    .line 18155
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2

    .prologue
    .line 17866
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 17875
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 17871
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18011
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    .locals 1

    .prologue
    .line 18032
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 18127
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 18145
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEmailAddress()Z
    .locals 1

    .prologue
    .line 18008
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v0

    return v0
.end method

.method public hasEmailAddressType()Z
    .locals 1

    .prologue
    .line 18029
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 18050
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 18087
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 18124
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 18142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;
    .locals 1

    .prologue
    .line 17853
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 17839
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 17879
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 17917
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 17937
    :goto_0
    return-object p0

    .line 17918
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17919
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17921
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17922
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getEmailAddressType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17924
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17925
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17927
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17928
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17930
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17931
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17933
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17934
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    .line 17936
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17944
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 17948
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 17949
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 17954
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 17956
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 17957
    :goto_1
    return-object p0

    .line 17951
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 17962
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17966
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 17967
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    move-result-object v4

    .line 17968
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    if-nez v4, :cond_1

    .line 17969
    const/16 v5, 0x246

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 17971
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17976
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 17977
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17978
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 17980
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 17981
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17985
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 17986
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->hasMyProfileId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17987
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 17989
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 17990
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17994
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17998
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    goto :goto_0

    .line 17949
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x1230 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3ac2 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 17908
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    if-eqz v0, :cond_0

    .line 17909
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object p0

    .line 17912
    .end local p0
    :goto_0
    return-object p0

    .line 17911
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
    .line 17839
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17839
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 17839
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 17839
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17839
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

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
    .line 17839
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18069
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18071
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18076
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18077
    return-object p0

    .line 18074
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18106
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18108
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18113
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18114
    return-object p0

    .line 18111
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18014
    if-nez p1, :cond_0

    .line 18015
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18017
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddress:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$50902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18018
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddress_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Ljava/lang/String;)Ljava/lang/String;

    .line 18019
    return-object p0
.end method

.method public setEmailAddressType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18035
    if-nez p1, :cond_0

    .line 18036
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18038
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasEmailAddressType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18039
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->emailAddressType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$HProfileEmailAddressType;

    .line 18040
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18065
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18066
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18056
    if-nez p1, :cond_0

    .line 18057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18059
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18061
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18101
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18102
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18103
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18093
    if-nez p1, :cond_0

    .line 18094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18096
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18098
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18130
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18131
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;I)I

    .line 18132
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18148
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$51902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;Z)Z

    .line 18149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;->access$52002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEmailAddress;J)J

    .line 18150
    return-object p0
.end method

.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19714
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$56300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19709
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$56400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 19760
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19761
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 19764
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 3

    .prologue
    .line 19717
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;-><init>()V

    .line 19718
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 19719
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 19752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19753
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 19755
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 3

    .prologue
    .line 19768
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-nez v1, :cond_0

    .line 19769
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19772
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 19773
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 19774
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 19727
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-nez v0, :cond_0

    .line 19728
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19731
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .line 19732
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 19902
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19903
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19904
    return-object p0
.end method

.method public clearInstantMessagingID()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 19923
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19924
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Ljava/lang/String;)Ljava/lang/String;

    .line 19925
    return-object p0
.end method

.method public clearInstantMessagingType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19941
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19942
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 19943
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 19978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19979
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19980
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19997
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 19998
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 3

    .prologue
    .line 20014
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 20015
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;J)J

    .line 20016
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2

    .prologue
    .line 19736
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 19745
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 19741
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19875
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getInstantMessagingID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19912
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstantMessagingType()I
    .locals 1

    .prologue
    .line 19933
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v0

    return v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 19951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 19988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20006
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 19872
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasInstantMessagingID()Z
    .locals 1

    .prologue
    .line 19909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v0

    return v0
.end method

.method public hasInstantMessagingType()Z
    .locals 1

    .prologue
    .line 19930
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 19948
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 19985
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 20003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;
    .locals 1

    .prologue
    .line 19723
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 19709
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 19749
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 19787
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 19807
    :goto_0
    return-object p0

    .line 19788
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19789
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19791
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19792
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19794
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19795
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getInstantMessagingType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19797
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19798
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19800
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19801
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19803
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19804
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    .line 19806
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19814
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 19818
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 19819
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 19824
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 19826
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 19827
    :goto_1
    return-object p0

    .line 19821
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 19832
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19836
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19840
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 19841
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19842
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 19844
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19845
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19849
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 19850
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 19851
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 19853
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 19854
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19858
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19862
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    goto :goto_0

    .line 19819
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x2872 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3198 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 19778
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    if-eqz v0, :cond_0

    .line 19779
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object p0

    .line 19782
    .end local p0
    :goto_0
    return-object p0

    .line 19781
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
    .line 19709
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19709
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 19709
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 19709
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19709
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

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
    .line 19709
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19891
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19893
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56700(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19898
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19899
    return-object p0

    .line 19896
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19967
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19969
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19974
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19975
    return-object p0

    .line 19972
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19886
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19887
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19888
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19878
    if-nez p1, :cond_0

    .line 19879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19881
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19882
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19883
    return-object p0
.end method

.method public setInstantMessagingID(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19915
    if-nez p1, :cond_0

    .line 19916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19918
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingID:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19919
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingID_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$56902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Ljava/lang/String;)Ljava/lang/String;

    .line 19920
    return-object p0
.end method

.method public setInstantMessagingType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasInstantMessagingType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19937
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->instantMessagingType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 19938
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 19962
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19963
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19964
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19954
    if-nez p1, :cond_0

    .line 19955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19957
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19958
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 19959
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 19991
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 19992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;I)I

    .line 19993
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20009
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;Z)Z

    .line 20010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;->access$57702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileInstantMessagingID;J)J

    .line 20011
    return-object p0
.end method

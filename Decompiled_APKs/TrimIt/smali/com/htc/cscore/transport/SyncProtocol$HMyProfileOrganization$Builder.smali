.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20778
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$59500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20773
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$59600()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20825
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 20828
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 3

    .prologue
    .line 20781
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;-><init>()V

    .line 20782
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 20783
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 20816
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20817
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 20819
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 3

    .prologue
    .line 20832
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    if-nez v1, :cond_0

    .line 20833
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20836
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 20837
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 20838
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    .line 20791
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    if-nez v0, :cond_0

    .line 20792
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20795
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .line 20796
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    .line 20966
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20967
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20968
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    .line 21003
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21004
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 21005
    return-object p0
.end method

.method public clearOrganizationName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    .line 21024
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21025
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Ljava/lang/String;)Ljava/lang/String;

    .line 21026
    return-object p0
.end method

.method public clearOrganizationType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21042
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21043
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I

    .line 21044
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21061
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I

    .line 21062
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 3

    .prologue
    .line 21078
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21079
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;J)J

    .line 21080
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2

    .prologue
    .line 20800
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 20809
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 20805
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20939
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20976
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21013
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationType()I
    .locals 1

    .prologue
    .line 21034
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 21052
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 21070
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 20936
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 20973
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasOrganizationName()Z
    .locals 1

    .prologue
    .line 21010
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v0

    return v0
.end method

.method public hasOrganizationType()Z
    .locals 1

    .prologue
    .line 21031
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 21049
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 21067
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;
    .locals 1

    .prologue
    .line 20787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 20773
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 20813
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 20851
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 20871
    :goto_0
    return-object p0

    .line 20852
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20853
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20855
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20856
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20858
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20859
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setOrganizationName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20861
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20862
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getOrganizationType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setOrganizationType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20864
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20865
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20867
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20868
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    .line 20870
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 20882
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20883
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 20888
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20890
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 20891
    :goto_1
    return-object p0

    .line 20885
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 20896
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20900
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setOrganizationType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20904
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20905
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20906
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20908
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20909
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20913
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20914
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20915
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20917
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20918
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20922
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20926
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->setOrganizationName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    goto :goto_0

    .line 20883
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x14d8 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
        0x3ce2 -> :sswitch_6
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 20842
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    if-eqz v0, :cond_0

    .line 20843
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object p0

    .line 20846
    .end local p0
    :goto_0
    return-object p0

    .line 20845
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
    .line 20773
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20773
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 20773
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 20773
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20773
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

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
    .line 20773
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20955
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59900(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20962
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20963
    return-object p0

    .line 20960
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20992
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20994
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60100(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20999
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21000
    return-object p0

    .line 20997
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20950
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20952
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20942
    if-nez p1, :cond_0

    .line 20943
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20945
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20946
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$59902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20947
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20987
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20988
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20989
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20979
    if-nez p1, :cond_0

    .line 20980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20982
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 20983
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20984
    return-object p0
.end method

.method public setOrganizationName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21016
    if-nez p1, :cond_0

    .line 21017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 21019
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21020
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Ljava/lang/String;)Ljava/lang/String;

    .line 21021
    return-object p0
.end method

.method public setOrganizationType(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21037
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasOrganizationType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21038
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->organizationType_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I

    .line 21039
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21055
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21056
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;I)I

    .line 21057
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 21073
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;Z)Z

    .line 21074
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;->access$60902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileOrganization;J)J

    .line 21075
    return-object p0
.end method

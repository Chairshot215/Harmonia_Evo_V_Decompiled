.class public final Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23051
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$66700(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23046
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$66800()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23097
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23098
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 23101
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 23054
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;-><init>()V

    .line 23055
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 23056
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 23089
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23090
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 23092
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 3

    .prologue
    .line 23105
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-nez v1, :cond_0

    .line 23106
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23109
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 23110
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 23111
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23064
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-nez v0, :cond_0

    .line 23065
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23068
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .line 23069
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23236
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23237
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->AccountGmail:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    .line 23238
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23273
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23275
    return-object p0
.end method

.method public clearIsDefault()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23291
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67402(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67502(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23293
    return-object p0
.end method

.method public clearName()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23312
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67602(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23313
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67702(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 23314
    return-object p0
.end method

.method public clearPersonCount()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23330
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67802(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23331
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67902(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;I)I

    .line 23332
    return-object p0
.end method

.method public clearRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23367
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23368
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23369
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 23385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23386
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;J)J

    .line 23387
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 23073
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    .locals 1

    .prologue
    .line 23225
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 23082
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 23078
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 23246
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 23283
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23301
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonCount()I
    .locals 1

    .prologue
    .line 23322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v0

    return v0
.end method

.method public getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 23340
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 23377
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAccountType()Z
    .locals 1

    .prologue
    .line 23222
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 23243
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 23280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 23298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasPersonCount()Z
    .locals 1

    .prologue
    .line 23319
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v0

    return v0
.end method

.method public hasRollupGroupId()Z
    .locals 1

    .prologue
    .line 23337
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 23374
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1

    .prologue
    .line 23060
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 23046
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 23086
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 23124
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 23147
    :goto_0
    return-object p0

    .line 23125
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23126
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getAccountType()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23128
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23129
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23131
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23132
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getIsDefault()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23134
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 23135
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23137
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23138
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getPersonCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23140
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23141
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23143
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23144
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    .line 23146
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23154
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 23158
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 23159
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 23164
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 23166
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 23167
    :goto_1
    return-object p0

    .line 23161
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 23172
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 23173
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    move-result-object v4

    .line 23174
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    if-nez v4, :cond_1

    .line 23175
    const/16 v5, 0x8f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 23177
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23182
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23186
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23190
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23194
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 23195
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 23196
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 23198
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23199
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23203
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto :goto_0

    .line 23207
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 23208
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->hasRollupGroupId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 23209
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->getRollupGroupId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 23211
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23212
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    goto/16 :goto_0

    .line 23159
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x478 -> :sswitch_1
        0xee2 -> :sswitch_2
        0x1088 -> :sswitch_3
        0x1238 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2a80 -> :sswitch_6
        0x348a -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 23115
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    if-eqz v0, :cond_0

    .line 23116
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object p0

    .line 23119
    .end local p0
    :goto_0
    return-object p0

    .line 23118
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
    .line 23046
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23046
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 23046
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 23046
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23046
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

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
    .line 23046
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23262
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67300(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23264
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67300(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23269
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23270
    return-object p0

    .line 23267
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23356
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68100(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23358
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68100(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23363
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23364
    return-object p0

    .line 23361
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAccountType(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23228
    if-nez p1, :cond_0

    .line 23229
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23231
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasAccountType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->accountType_:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$HPeopleGroupAccountType;

    .line 23233
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23258
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23259
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23249
    if-nez p1, :cond_0

    .line 23250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23252
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23253
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23254
    return-object p0
.end method

.method public setIsDefault(Z)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasIsDefault:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67402(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23287
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->isDefault_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67502(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23288
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23304
    if-nez p1, :cond_0

    .line 23305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23307
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67602(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23308
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->name_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67702(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Ljava/lang/String;)Ljava/lang/String;

    .line 23309
    return-object p0
.end method

.method public setPersonCount(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasPersonCount:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67802(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23326
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->personCount_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$67902(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;I)I

    .line 23327
    return-object p0
.end method

.method public setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23351
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23352
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23353
    return-object p0
.end method

.method public setRollupGroupId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23343
    if-nez p1, :cond_0

    .line 23344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23346
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasRollupGroupId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68002(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23347
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->rollupGroupId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68102(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 23348
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68202(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;Z)Z

    .line 23381
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->access$68302(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;J)J

    .line 23382
    return-object p0
.end method

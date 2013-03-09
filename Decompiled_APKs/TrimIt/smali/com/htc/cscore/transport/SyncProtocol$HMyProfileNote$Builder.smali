.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20219
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$58000(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20214
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$58100()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 20265
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 20269
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 3

    .prologue
    .line 20222
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;-><init>()V

    .line 20223
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 20224
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 20257
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20258
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 20260
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 3

    .prologue
    .line 20273
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-nez v1, :cond_0

    .line 20274
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20277
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 20278
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 20279
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 20232
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-nez v0, :cond_0

    .line 20233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20236
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .line 20237
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 20400
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20401
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20402
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 20437
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20438
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20439
    return-object p0
.end method

.method public clearNote()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 20458
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20459
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Ljava/lang/String;)Ljava/lang/String;

    .line 20460
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20477
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;I)I

    .line 20478
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 3

    .prologue
    .line 20494
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20495
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;J)J

    .line 20496
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2

    .prologue
    .line 20241
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 20250
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 20246
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20373
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 20410
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20447
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 20468
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 20486
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 20370
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 20407
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasNote()Z
    .locals 1

    .prologue
    .line 20444
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 20465
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 20483
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;
    .locals 1

    .prologue
    .line 20228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 20214
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 20254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 20292
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 20309
    :goto_0
    return-object p0

    .line 20293
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20294
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 20296
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20297
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 20299
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20300
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getNote()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 20302
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20303
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 20305
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 20306
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    .line 20308
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20316
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 20320
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 20321
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 20326
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 20328
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 20329
    :goto_1
    return-object p0

    .line 20323
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 20334
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 20338
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 20342
    :sswitch_3
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20343
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->hasId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 20344
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20346
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20347
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 20351
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v0

    .line 20352
    .restart local v0       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->hasMyProfileId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20353
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 20355
    :cond_2
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 20356
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 20360
    .end local v0           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    goto :goto_0

    .line 20321
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x16c2 -> :sswitch_2
        0x2892 -> :sswitch_3
        0x2d3a -> :sswitch_4
        0x2eb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 20283
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    if-eqz v0, :cond_0

    .line 20284
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object p0

    .line 20287
    .end local p0
    :goto_0
    return-object p0

    .line 20286
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
    .line 20214
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20214
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 20214
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 20214
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20214
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

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
    .line 20214
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20389
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20391
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58400(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20396
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20397
    return-object p0

    .line 20394
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20426
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20428
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58600(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20433
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20434
    return-object p0

    .line 20431
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20384
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20385
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20386
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20376
    if-nez p1, :cond_0

    .line 20377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20379
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20380
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20381
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 20421
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20422
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20423
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20413
    if-nez p1, :cond_0

    .line 20414
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20416
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20417
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 20418
    return-object p0
.end method

.method public setNote(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20450
    if-nez p1, :cond_0

    .line 20451
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 20453
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasNote:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20454
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->note_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Ljava/lang/String;)Ljava/lang/String;

    .line 20455
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20471
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$58902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;I)I

    .line 20473
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 20489
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;Z)Z

    .line 20490
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;->access$59202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileNote;J)J

    .line 20491
    return-object p0
.end method

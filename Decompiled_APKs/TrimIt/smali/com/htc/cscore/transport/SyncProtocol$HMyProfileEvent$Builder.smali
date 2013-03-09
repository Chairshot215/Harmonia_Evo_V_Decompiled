.class public final Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18453
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$52300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18448
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$52400()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18499
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18500
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 18503
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 18456
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;-><init>()V

    .line 18457
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 18458
    return-object v0
.end method


# virtual methods
.method public build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 18491
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18492
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 18494
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 3

    .prologue
    .line 18507
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-nez v1, :cond_0

    .line 18508
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18511
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 18512
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 18513
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18466
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-nez v0, :cond_0

    .line 18467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18470
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .line 18471
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearEventDate()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 18635
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18636
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 18637
    return-object p0
.end method

.method public clearEventName()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18656
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18657
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 18658
    return-object p0
.end method

.method public clearEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18677
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18678
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->Birthday:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18679
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18714
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18715
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18716
    return-object p0
.end method

.method public clearMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18751
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18752
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18753
    return-object p0
.end method

.method public clearPriority()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18769
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18770
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;I)I

    .line 18771
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 3

    .prologue
    .line 18787
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18788
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 18789
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2

    .prologue
    .line 18475
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 18484
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 18480
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEventDate()J
    .locals 2

    .prologue
    .line 18627
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18645
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    .locals 1

    .prologue
    .line 18666
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18687
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 18724
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 18761
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 18779
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasEventDate()Z
    .locals 1

    .prologue
    .line 18624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v0

    return v0
.end method

.method public hasEventName()Z
    .locals 1

    .prologue
    .line 18642
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v0

    return v0
.end method

.method public hasEventType()Z
    .locals 1

    .prologue
    .line 18663
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 18684
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasMyProfileId()Z
    .locals 1

    .prologue
    .line 18721
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .prologue
    .line 18758
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 18776
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;
    .locals 1

    .prologue
    .line 18462
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 18448
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 18488
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 18526
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 18549
    :goto_0
    return-object p0

    .line 18527
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18528
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventDate()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18530
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18531
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18533
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18534
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getEventType()Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18536
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18537
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18539
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18540
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18542
    :cond_5
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18543
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18545
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18546
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    .line 18548
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18556
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 18560
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 18561
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 18566
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 18568
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 18569
    :goto_1
    return-object p0

    .line 18563
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 18574
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18578
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18582
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18586
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 18587
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    move-result-object v4

    .line 18588
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    if-nez v4, :cond_1

    .line 18589
    const/16 v5, 0x3de

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 18591
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18596
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 18597
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 18598
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 18600
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18601
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18605
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_6
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 18606
    .restart local v1       #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->hasMyProfileId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 18607
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->getMyProfileId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 18609
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 18610
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto :goto_0

    .line 18614
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_7
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    goto/16 :goto_0

    .line 18561
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1088 -> :sswitch_1
        0x184a -> :sswitch_2
        0x1ba8 -> :sswitch_3
        0x1ef0 -> :sswitch_4
        0x2892 -> :sswitch_5
        0x2d3a -> :sswitch_6
        0x2eb0 -> :sswitch_7
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 18517
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    if-eqz v0, :cond_0

    .line 18518
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object p0

    .line 18521
    .end local p0
    :goto_0
    return-object p0

    .line 18520
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
    .line 18448
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18448
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 18448
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 18448
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18448
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

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
    .line 18448
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18703
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18705
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53300(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18710
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18711
    return-object p0

    .line 18708
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18740
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 18742
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53500(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18747
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18748
    return-object p0

    .line 18745
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setEventDate(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18630
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventDate:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18631
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventDate_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 18632
    return-object p0
.end method

.method public setEventName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18648
    if-nez p1, :cond_0

    .line 18649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18651
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18652
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$52902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 18653
    return-object p0
.end method

.method public setEventType(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18669
    if-nez p1, :cond_0

    .line 18670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18672
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasEventType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53002(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18673
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->eventType_:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53102(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$HEventKind;

    .line 18674
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18698
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18699
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18700
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18690
    if-nez p1, :cond_0

    .line 18691
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18693
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53202(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18694
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53302(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18695
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 18735
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18736
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18737
    return-object p0
.end method

.method public setMyProfileId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18727
    if-nez p1, :cond_0

    .line 18728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 18730
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasMyProfileId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53402(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18731
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->myProfileId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53502(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 18732
    return-object p0
.end method

.method public setPriority(I)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18764
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasPriority:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53602(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18765
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->priority_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53702(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;I)I

    .line 18766
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 18782
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53802(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;Z)Z

    .line 18783
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;->access$53902(Lcom/htc/cscore/transport/SyncProtocol$HMyProfileEvent;J)J

    .line 18784
    return-object p0
.end method

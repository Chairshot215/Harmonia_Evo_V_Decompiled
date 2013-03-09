.class public final Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "ImmediateModeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;-><init>()V

    .line 347
    .local v0, builder:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    new-instance v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 348
    return-object v0
.end method


# virtual methods
.method public addAllQueuesWithData(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;)",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 609
    return-object p0
.end method

.method public addQueuesWithData(Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->build()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 3

    .prologue
    .line 397
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-nez v1, :cond_0

    .line 398
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 402
    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    iget-object v2, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 406
    .local v0, returnMe:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 407
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->buildPartial()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;-><init>(Lcom/htc/cscore/transport/ImmediateModeProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .line 361
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clear()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMaximumInterval()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1002(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 554
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1102(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 555
    return-object p0
.end method

.method public clearMinimumInterval()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$802(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 536
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$902(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 537
    return-object p0
.end method

.method public clearQueuesWithData()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 613
    return-object p0
.end method

.method public clearServerTime()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1202(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 572
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1302(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;J)J

    .line 573
    return-object p0
.end method

.method public clearType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 518
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    sget-object v1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->Nop:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 519
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2

    .prologue
    .line 365
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->create()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->clone()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 374
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumInterval()I
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v0

    return v0
.end method

.method public getMinimumInterval()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v0

    return v0
.end method

.method public getQueuesWithData(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    .locals 1
    .parameter "index"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithData(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getQueuesWithDataCount()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getQueuesWithDataCount()I

    move-result v0

    return v0
.end method

.method public getQueuesWithDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v0

    return-object v0
.end method

.method public hasMaximumInterval()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v0

    return v0
.end method

.method public hasMinimumInterval()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v0

    return v0
.end method

.method public hasServerTime()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->internalGetResult()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 420
    invoke-static {}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getDefaultInstance()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 440
    :goto_0
    return-object p0

    .line 421
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getType()Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMinimumInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 427
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getMaximumInterval()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 430
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getServerTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    .line 433
    :cond_4
    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 434
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$502(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Ljava/util/List;)Ljava/util/List;

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    :cond_6
    invoke-virtual {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 451
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 452
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 457
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 459
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 460
    :goto_1
    return-object p0

    .line 454
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 465
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 466
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;->valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    move-result-object v3

    .line 467
    .local v3, value:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    if-nez v3, :cond_1

    .line 468
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 475
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    :sswitch_2
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 479
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 483
    :sswitch_4
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 487
    :sswitch_5
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 488
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;->valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;

    move-result-object v3

    .line 489
    .local v3, value:Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;
    if-nez v3, :cond_2

    .line 490
    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->addQueuesWithData(Lcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    goto :goto_0

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 411
    instance-of v0, p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    if-eqz v0, :cond_0

    .line 412
    check-cast p1, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object p0

    .line 415
    .end local p0
    :goto_0
    return-object p0

    .line 414
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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

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
    .line 338
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMaximumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMaximumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1002(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 549
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->maximumInterval_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1102(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 550
    return-object p0
.end method

.method public setMinimumInterval(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasMinimumInterval:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$802(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 531
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->minimumInterval_:I
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$902(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;I)I

    .line 532
    return-object p0
.end method

.method public setQueuesWithData(ILcom/htc/cscore/transport/ImmediateModeProtocol$QueueIdentifier;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 587
    if-nez p2, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #getter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->queuesWithData_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$500(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-object p0
.end method

.method public setServerTime(J)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasServerTime:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1202(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 567
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->serverTime_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$1302(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;J)J

    .line 568
    return-object p0
.end method

.method public setType(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->hasType:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$602(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Z)Z

    .line 513
    iget-object v0, p0, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$Builder;->result:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;

    #setter for: Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->type_:Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;->access$702(Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient;Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;)Lcom/htc/cscore/transport/ImmediateModeProtocol$ServerToClient$MessageType;

    .line 514
    return-object p0
.end method

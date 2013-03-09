.class public final Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24463
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$70500(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24458
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$70600()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 24509
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24510
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 24513
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 3

    .prologue
    .line 24466
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;-><init>()V

    .line 24467
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 24468
    return-object v0
.end method


# virtual methods
.method public addAllMapping(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 24623
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24624
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24626
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 24627
    return-object p0
.end method

.method public addMapping(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 24615
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24616
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24618
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24619
    return-object p0
.end method

.method public addMapping(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 24605
    if-nez p1, :cond_0

    .line 24606
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24608
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24609
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24611
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24612
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 24501
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24502
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 24504
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 3

    .prologue
    .line 24517
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    if-nez v1, :cond_0

    .line 24518
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24521
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 24522
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24525
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 24526
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 24527
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24476
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    if-nez v0, :cond_0

    .line 24477
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24480
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .line 24481
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMapping()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24630
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24631
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2

    .prologue
    .line 24485
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

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
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 24494
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 24490
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMapping(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 24591
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getMapping(I)Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getMappingCount()I
    .locals 1

    .prologue
    .line 24588
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getMappingCount()I

    move-result v0

    return v0
.end method

.method public getMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24585
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;
    .locals 1

    .prologue
    .line 24472
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 24458
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 24498
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 24540
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 24548
    :goto_0
    return-object p0

    .line 24541
    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24542
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24543
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70802(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;Ljava/util/List;)Ljava/util/List;

    .line 24545
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24547
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24555
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 24559
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 24560
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 24565
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 24567
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 24568
    :goto_1
    return-object p0

    .line 24562
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 24573
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;

    move-result-object v0

    .line 24574
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 24575
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->addMapping(Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    goto :goto_0

    .line 24560
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3d32 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 24531
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    if-eqz v0, :cond_0

    .line 24532
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object p0

    .line 24535
    .end local p0
    :goto_0
    return-object p0

    .line 24534
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
    .line 24458
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24458
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

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
    .line 24458
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

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
    .line 24458
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24458
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

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
    .line 24458
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMapping(ILcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 24601
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24602
    return-object p0
.end method

.method public setMapping(ILcom/htc/cscore/transport/SyncProtocol$HPersonToPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 24594
    if-nez p2, :cond_0

    .line 24595
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 24597
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->mapping_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;->access$70800(Lcom/htc/cscore/transport/SyncProtocol$DeletePeopleFromPeopleGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 24598
    return-object p0
.end method

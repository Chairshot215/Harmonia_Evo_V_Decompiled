.class public final Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method


# virtual methods
.method public addAllPersons(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object p0
.end method

.method public clearCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearDisplayName()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public clearFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public clearPersons()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clearPersonsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0
.end method

.method public clearSendToVoiceMail()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getPersonsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsCount()I

    move-result v0

    return v0
.end method

.method public getPersonsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPerson;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPersonsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public getSendToVoiceMail()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAggregatePersonImage()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasCustomRingtoneId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasFriendStatus()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonsUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasSendToVoiceMail()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2100(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2100(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2300(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2300(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_5
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    :cond_6
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasCustomRingtoneId()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v4

    if-nez v4, :cond_4

    const/16 v5, 0x72f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc50 -> :sswitch_1
        0xed2 -> :sswitch_2
        0x1088 -> :sswitch_3
        0x14ca -> :sswitch_4
        0x1eb2 -> :sswitch_5
        0x20fa -> :sswitch_6
        0x2892 -> :sswitch_7
        0x3978 -> :sswitch_8
        0x3a58 -> :sswitch_9
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object p0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0
.end method

.method public setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    return-object p0
.end method

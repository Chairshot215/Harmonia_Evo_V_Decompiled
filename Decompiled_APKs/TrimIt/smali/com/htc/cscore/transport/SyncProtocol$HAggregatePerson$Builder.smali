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

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1

    .prologue
    .line 878
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

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 886
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;-><init>()V

    .line 887
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 888
    return-object v0
.end method


# virtual methods
.method public addAllPersons(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 1273
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPerson;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1277
    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    return-object p0
.end method

.method public addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1255
    if-nez p1, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1258
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 3

    .prologue
    .line 937
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v1, :cond_0

    .line 938
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 942
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 946
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 947
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-nez v0, :cond_0

    .line 897
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .line 901
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1113
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1114
    return-object p0
.end method

.method public clearCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1150
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1151
    return-object p0
.end method

.method public clearDisplayName()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1171
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    .line 1172
    return-object p0
.end method

.method public clearFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1192
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    sget-object v1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->FriendUnknown:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    .line 1193
    return-object p0
.end method

.method public clearId()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1229
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1230
    return-object p0
.end method

.method public clearPersons()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 1281
    return-object p0
.end method

.method public clearPersonsUpdated()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1297
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1298
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1299
    return-object p0
.end method

.method public clearSendToVoiceMail()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1315
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1316
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1317
    return-object p0
.end method

.method public clearTimestamp()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 3

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1334
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const-wide/16 v1, 0x0

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    .line 1335
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2

    .prologue
    .line 905
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 878
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

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    .locals 1

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    return-object v0
.end method

.method public getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 914
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 910
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    .locals 1

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method public getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;
    .locals 1
    .parameter "index"

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersons(I)Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v0

    return-object v0
.end method

.method public getPersonsCount()I
    .locals 1

    .prologue
    .line 1238
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

    .prologue
    .line 1235
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

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public getSendToVoiceMail()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAggregatePersonImage()Z
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    return v0
.end method

.method public hasCustomRingtoneId()Z
    .locals 1

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    return v0
.end method

.method public hasDisplayName()Z
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    return v0
.end method

.method public hasFriendStatus()Z
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasPersonsUpdated()Z
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    return v0
.end method

.method public hasSendToVoiceMail()Z
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1101
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

    .line 1103
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

    .line 1108
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1109
    return-object p0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    goto :goto_0
.end method

.method public mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1138
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

    .line 1140
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

    .line 1145
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1146
    return-object p0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 960
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 992
    :goto_0
    return-object p0

    .line 961
    :cond_0
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 964
    :cond_1
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 965
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 967
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 970
    :cond_3
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 971
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getFriendStatus()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 973
    :cond_4
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 974
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 976
    :cond_5
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 977
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 978
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/util/List;)Ljava/util/List;

    .line 980
    :cond_6
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 982
    :cond_7
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 983
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getPersonsUpdated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 985
    :cond_8
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 986
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getSendToVoiceMail()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 988
    :cond_9
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 989
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    .line 991
    :cond_a
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v3

    .line 1003
    .local v3, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1004
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_0

    .line 1009
    invoke-virtual {p0, p1, v3, p2, v2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1011
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 1012
    :goto_1
    return-object p0

    .line 1006
    :sswitch_0
    invoke-virtual {v3}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 1017
    :sswitch_1
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1021
    :sswitch_2
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 1022
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasCustomRingtoneId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1023
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getCustomRingtoneId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 1025
    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1026
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1030
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_3
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1034
    :sswitch_4
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPerson;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;

    move-result-object v1

    .line 1035
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1036
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->addPersons(Lcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1040
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;
    :sswitch_5
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    move-result-object v1

    .line 1041
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasAggregatePersonImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1042
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getAggregatePersonImage()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;

    .line 1044
    :cond_2
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1045
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1049
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;
    :sswitch_6
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto :goto_0

    .line 1053
    :sswitch_7
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    move-result-object v1

    .line 1054
    .local v1, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->hasId()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1055
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->getId()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;

    .line 1057
    :cond_3
    invoke-virtual {p1, v1, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 1058
    invoke-virtual {v1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1062
    .end local v1           #subBuilder:Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;
    :sswitch_8
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1063
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;->valueOf(I)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    move-result-object v4

    .line 1064
    .local v4, value:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    if-nez v4, :cond_4

    .line 1065
    const/16 v5, 0x72f

    invoke-virtual {v3, v5, v0}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 1067
    :cond_4
    invoke-virtual {p0, v4}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1072
    .end local v0           #rawValue:I
    .end local v4           #value:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    :sswitch_9
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    goto/16 :goto_0

    .line 1004
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
    .parameter "other"

    .prologue
    .line 951
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    if-eqz v0, :cond_0

    .line 952
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object p0

    .line 955
    .end local p0
    :goto_0
    return-object p0

    .line 954
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
    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

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
    .line 878
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1217
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

    .line 1219
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

    .line 1224
    :goto_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1225
    return-object p0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    goto :goto_0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1097
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1098
    return-object p0
.end method

.method public setAggregatePersonImage(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1088
    if-nez p1, :cond_0

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasAggregatePersonImage:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1092
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->aggregatePersonImage_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePersonImage;

    .line 1093
    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1134
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1135
    return-object p0
.end method

.method public setCustomRingtoneId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1125
    if-nez p1, :cond_0

    .line 1126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasCustomRingtoneId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1129
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->customRingtoneId_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1130
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1162
    if-nez p1, :cond_0

    .line 1163
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasDisplayName:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->displayName_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Ljava/lang/String;)Ljava/lang/String;

    .line 1167
    return-object p0
.end method

.method public setFriendStatus(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1183
    if-nez p1, :cond_0

    .line 1184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasFriendStatus:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2602(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1187
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->friendStatus_:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2702(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$HAggregatePersonFriendStatusType;

    .line 1188
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1213
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$UniqueId$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1214
    return-object p0
.end method

.method public setId(Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1204
    if-nez p1, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasId:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2802(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1208
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->id_:Lcom/htc/cscore/transport/SyncProtocol$UniqueId;
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$2902(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Lcom/htc/cscore/transport/SyncProtocol$UniqueId;)Lcom/htc/cscore/transport/SyncProtocol$UniqueId;

    .line 1209
    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPerson$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPerson;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1252
    return-object p0
.end method

.method public setPersons(ILcom/htc/cscore/transport/SyncProtocol$HPerson;)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1244
    if-nez p2, :cond_0

    .line 1245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->persons_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$1900(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1248
    return-object p0
.end method

.method public setPersonsUpdated(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasPersonsUpdated:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3002(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1293
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->personsUpdated_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3102(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1294
    return-object p0
.end method

.method public setSendToVoiceMail(Z)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasSendToVoiceMail:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3202(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1311
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->sendToVoiceMail_:Z
    invoke-static {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3302(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1312
    return-object p0
.end method

.method public setTimestamp(J)Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    const/4 v1, 0x1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->hasTimestamp:Z
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3402(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;Z)Z

    .line 1329
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->timestamp_:J
    invoke-static {v0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;->access$3502(Lcom/htc/cscore/transport/SyncProtocol$HAggregatePerson;J)J

    .line 1330
    return-object p0
.end method

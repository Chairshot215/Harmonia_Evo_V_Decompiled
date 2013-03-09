.class public final Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45087
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$130900(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45082
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$131000()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 45133
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45134
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 45137
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 3

    .prologue
    .line 45090
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;-><init>()V

    .line 45091
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 45092
    return-object v0
.end method


# virtual methods
.method public addAllSyncList(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;"
        }
    .end annotation

    .prologue
    .line 45247
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45248
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45250
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 45251
    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 45239
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45240
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45242
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45243
    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 45229
    if-nez p1, :cond_0

    .line 45230
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45232
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45233
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45235
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45236
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    .prologue
    .line 45125
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45126
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 45128
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 3

    .prologue
    .line 45141
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    if-nez v1, :cond_0

    .line 45142
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45145
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 45146
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45149
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 45150
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 45151
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2

    .prologue
    .line 45100
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    if-nez v0, :cond_0

    .line 45101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45104
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .line 45105
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSyncList()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2

    .prologue
    .line 45254
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45255
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2

    .prologue
    .line 45109
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

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
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    .prologue
    .line 45118
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 45114
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 45215
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getSyncListCount()I
    .locals 1

    .prologue
    .line 45212
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getSyncListCount()I

    move-result v0

    return v0
.end method

.method public getSyncListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45209
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;
    .locals 1

    .prologue
    .line 45096
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 45082
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 45122
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 45164
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 45172
    :goto_0
    return-object p0

    .line 45165
    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131202(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;Ljava/util/List;)Ljava/util/List;

    .line 45169
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45171
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45179
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 45183
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 45184
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 45189
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 45191
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 45192
    :goto_1
    return-object p0

    .line 45186
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 45197
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    .line 45198
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 45199
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    goto :goto_0

    .line 45184
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x162 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 45155
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    if-eqz v0, :cond_0

    .line 45156
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object p0

    .line 45159
    .end local p0
    :goto_0
    return-object p0

    .line 45158
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
    .line 45082
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45082
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

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
    .line 45082
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

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
    .line 45082
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45082
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

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
    .line 45082
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 45225
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45226
    return-object p0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 45218
    if-nez p2, :cond_0

    .line 45219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45221
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;->access$131200(Lcom/htc/cscore/transport/SyncProtocol$RequestForAdd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45222
    return-object p0
.end method

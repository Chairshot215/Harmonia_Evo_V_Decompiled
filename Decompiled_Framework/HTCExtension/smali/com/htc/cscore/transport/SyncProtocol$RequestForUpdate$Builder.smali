.class public final Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$131500(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$131600()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method


# virtual methods
.method public addAllSyncList(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearSyncList()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getSyncList(I)Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v0

    return-object v0
.end method

.method public getSyncListCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getSyncListCount()I

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

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131802(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->addSyncList(Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x162 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HSyncItem$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HSyncItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSyncList(ILcom/htc/cscore/transport/SyncProtocol$HSyncItem;)Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->syncList_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;->access$131800(Lcom/htc/cscore/transport/SyncProtocol$RequestForUpdate;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

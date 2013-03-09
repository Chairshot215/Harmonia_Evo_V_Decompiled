.class public final Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$132800(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$132900()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 3

    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;-><init>()V

    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method


# virtual methods
.method public addAllMissedCalls(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-object p0
.end method

.method public addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 3

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCalls(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getMissedCalls(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCallsCount()I
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getMissedCallsCount()I

    move-result v0

    return v0
.end method

.method public getMissedCallsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    :goto_1
    return-object p0

    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x272 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1

    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMissedCalls(ILcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMissedCalls(ILcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

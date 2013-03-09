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

    .prologue
    .line 46014
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$132800(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 46009
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$132900()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1

    .prologue
    .line 46009
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

    .prologue
    .line 46060
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46061
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 46064
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 3

    .prologue
    .line 46017
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;-><init>()V

    .line 46018
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 46019
    return-object v0
.end method


# virtual methods
.method public addAllMissedCalls(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .parameter
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

    .prologue
    .line 46174
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46175
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46177
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 46178
    return-object p0
.end method

.method public addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 46166
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46167
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46169
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46170
    return-object p0
.end method

.method public addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 46156
    if-nez p1, :cond_0

    .line 46157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46159
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46160
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46162
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46163
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    .prologue
    .line 46052
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46053
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 46055
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 3

    .prologue
    .line 46068
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-nez v1, :cond_0

    .line 46069
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46072
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 46073
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46076
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 46077
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 46078
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    .prologue
    .line 46027
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-nez v0, :cond_0

    .line 46028
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46031
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .line 46032
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearMissedCalls()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    .prologue
    .line 46181
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46182
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2

    .prologue
    .line 46036
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 46009
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

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;
    .locals 1

    .prologue
    .line 46045
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 46041
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCalls(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;
    .locals 1
    .parameter "index"

    .prologue
    .line 46142
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getMissedCalls(I)Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v0

    return-object v0
.end method

.method public getMissedCallsCount()I
    .locals 1

    .prologue
    .line 46139
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

    .prologue
    .line 46136
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

    .prologue
    .line 46023
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 46009
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 46049
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 46091
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 46099
    :goto_0
    return-object p0

    .line 46092
    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 46093
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46094
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133102(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;Ljava/util/List;)Ljava/util/List;

    .line 46096
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46098
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46106
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 46110
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 46111
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 46116
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46118
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 46119
    :goto_1
    return-object p0

    .line 46113
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 46124
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;

    move-result-object v0

    .line 46125
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 46126
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->addMissedCalls(Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    goto :goto_0

    .line 46111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x272 -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 46082
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    if-eqz v0, :cond_0

    .line 46083
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object p0

    .line 46086
    .end local p0
    :goto_0
    return-object p0

    .line 46085
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
    .line 46009
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46009
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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
    .line 46009
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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
    .line 46009
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46009
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

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
    .line 46009
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMissedCalls(ILcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 46152
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46153
    return-object p0
.end method

.method public setMissedCalls(ILcom/htc/cscore/transport/SyncProtocol$HVirtualDeviceMissedCall;)Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 46145
    if-nez p2, :cond_0

    .line 46146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46148
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->missedCalls_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;->access$133100(Lcom/htc/cscore/transport/SyncProtocol$SetMissedCallsAsViewed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46149
    return-object p0
.end method

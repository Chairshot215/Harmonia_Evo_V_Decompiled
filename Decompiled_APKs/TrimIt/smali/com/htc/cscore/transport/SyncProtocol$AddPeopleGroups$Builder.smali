.class public final Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
.super Lcom/htc/protobuf/GeneratedMessage$Builder;
.source "SyncProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23829
    invoke-direct {p0}, Lcom/htc/protobuf/GeneratedMessage$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$69300(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23824
    invoke-direct {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$69400()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 23875
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23876
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/htc/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 23879
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 3

    .prologue
    .line 23832
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    invoke-direct {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;-><init>()V

    .line 23833
    .local v0, builder:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    new-instance v1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v1, v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 23834
    return-object v0
.end method


# virtual methods
.method public addAllPeopleGroups(Ljava/lang/Iterable;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;",
            ">;)",
            "Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;"
        }
    .end annotation

    .prologue
    .line 23989
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;>;"
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23990
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23992
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/htc/protobuf/GeneratedMessage$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 23993
    return-object p0
.end method

.method public addPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 23981
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23982
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23984
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23985
    return-object p0
.end method

.method public addPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 23971
    if-nez p1, :cond_0

    .line 23972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23974
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23975
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23977
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23978
    return-object p0
.end method

.method public build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    .prologue
    .line 23867
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23868
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->newUninitializedMessageException(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 23870
    :cond_0
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 3

    .prologue
    .line 23883
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    if-nez v1, :cond_0

    .line 23884
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23887
    :cond_0
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 23888
    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    iget-object v2, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23891
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 23892
    .local v0, returnMe:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 23893
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2

    .prologue
    .line 23842
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    if-nez v0, :cond_0

    .line 23843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23846
    :cond_0
    new-instance v0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;-><init>(Lcom/htc/cscore/transport/SyncProtocol$1;)V

    iput-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .line 23847
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clear()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPeopleGroups()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2

    .prologue
    .line 23996
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23997
    return-object p0
.end method

.method public clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2

    .prologue
    .line 23851
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->create()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-virtual {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/htc/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

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
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->clone()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    .prologue
    .line 23860
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/htc/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->getDefaultInstanceForType()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 23856
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDescriptor()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroups(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 23957
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-virtual {v0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getPeopleGroups(I)Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPeopleGroupsCount()I
    .locals 1

    .prologue
    .line 23954
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getPeopleGroupsCount()I

    move-result v0

    return v0
.end method

.method public getPeopleGroupsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23951
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;
    .locals 1

    .prologue
    .line 23838
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/htc/protobuf/GeneratedMessage;
    .locals 1

    .prologue
    .line 23824
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->internalGetResult()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 23864
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 23906
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getDefaultInstance()Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 23914
    :goto_0
    return-object p0

    .line 23907
    :cond_0
    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23908
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23909
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69602(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;Ljava/util/List;)Ljava/util/List;

    .line 23911
    :cond_1
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23913
    :cond_2
    invoke-virtual {p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23921
    invoke-virtual {p0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/protobuf/UnknownFieldSet;->newBuilder(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    .line 23925
    .local v2, unknownFields:Lcom/htc/protobuf/UnknownFieldSet$Builder;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 23926
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 23931
    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->parseUnknownField(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/UnknownFieldSet$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23933
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    .line 23934
    :goto_1
    return-object p0

    .line 23928
    :sswitch_0
    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet$Builder;->build()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->setUnknownFields(Lcom/htc/protobuf/UnknownFieldSet;)Lcom/htc/protobuf/GeneratedMessage$Builder;

    goto :goto_1

    .line 23939
    :sswitch_1
    invoke-static {}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;->newBuilder()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;

    move-result-object v0

    .line 23940
    .local v0, subBuilder:Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/htc/protobuf/CodedInputStream;->readMessage(Lcom/htc/protobuf/MessageLite$Builder;Lcom/htc/protobuf/ExtensionRegistryLite;)V

    .line 23941
    invoke-virtual {v0}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->buildPartial()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->addPeopleGroups(Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    goto :goto_0

    .line 23926
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x338a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 23897
    instance-of v0, p1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    if-eqz v0, :cond_0

    .line 23898
    check-cast p1, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object p0

    .line 23901
    .end local p0
    :goto_0
    return-object p0

    .line 23900
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
    .line 23824
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23824
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

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
    .line 23824
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

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
    .line 23824
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23824
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/Message;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

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
    .line 23824
    invoke-virtual {p0, p1, p2}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->mergeFrom(Lcom/htc/protobuf/CodedInputStream;Lcom/htc/protobuf/ExtensionRegistryLite;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeopleGroups(ILcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 23967
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup$Builder;->build()Lcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23968
    return-object p0
.end method

.method public setPeopleGroups(ILcom/htc/cscore/transport/SyncProtocol$HPeopleGroup;)Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 23960
    if-nez p2, :cond_0

    .line 23961
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23963
    :cond_0
    iget-object v0, p0, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups$Builder;->result:Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;

    #getter for: Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->peopleGroups_:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;->access$69600(Lcom/htc/cscore/transport/SyncProtocol$AddPeopleGroups;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23964
    return-object p0
.end method

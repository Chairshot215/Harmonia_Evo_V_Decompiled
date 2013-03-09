.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9352
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$23000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9346
    invoke-direct {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->buildParsed()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$23100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 1

    .prologue
    .line 9346
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9393
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9394
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 9397
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 3

    .prologue
    .line 9355
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;-><init>()V

    .line 9356
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .line 9357
    return-object v0
.end method


# virtual methods
.method public addAllMigratedDataTypeId(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 9961
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9962
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/util/List;)Ljava/util/List;

    .line 9964
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9965
    return-object p0
.end method

.method public addMigratedDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9953
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9954
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/util/List;)Ljava/util/List;

    .line 9956
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9957
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1

    .prologue
    .line 9385
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9386
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 9388
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9346
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 3

    .prologue
    .line 9401
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    if-nez v1, :cond_0

    .line 9402
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9405
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 9406
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/util/List;)Ljava/util/List;

    .line 9409
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .line 9410
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .line 9411
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2

    .prologue
    .line 9374
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 9346
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 9346
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

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
    .line 9346
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    .locals 1

    .prologue
    .line 9658
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    .locals 1

    .prologue
    .line 9695
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v0

    return-object v0
.end method

.method public getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    .locals 1

    .prologue
    .line 9869
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    return-object v0
.end method

.method public getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 9584
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;
    .locals 1

    .prologue
    .line 9378
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 9346
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 9621
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    .locals 1

    .prologue
    .line 9906
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    return-object v0
.end method

.method public getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 9769
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 9732
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasAuthenticate()Z
    .locals 1

    .prologue
    .line 9655
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v0

    return v0
.end method

.method public hasClearUserData()Z
    .locals 1

    .prologue
    .line 9692
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData()Z

    move-result v0

    return v0
.end method

.method public hasClientCommand()Z
    .locals 1

    .prologue
    .line 9866
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v0

    return v0
.end method

.method public hasCommit()Z
    .locals 1

    .prologue
    .line 9581
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v0

    return v0
.end method

.method public hasGetUpdates()Z
    .locals 1

    .prologue
    .line 9618
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    return v0
.end method

.method public hasProfilingData()Z
    .locals 1

    .prologue
    .line 9903
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData()Z

    move-result v0

    return v0
.end method

.method public hasStreamData()Z
    .locals 1

    .prologue
    .line 9766
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v0

    return v0
.end method

.method public hasStreamMetadata()Z
    .locals 1

    .prologue
    .line 9729
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata()Z

    move-result v0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 9382
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9674
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9676
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23900(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 9681
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9682
    return-object p0

    .line 9679
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    goto :goto_0
.end method

.method public mergeClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9711
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9713
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    .line 9718
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9719
    return-object p0

    .line 9716
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    goto :goto_0
.end method

.method public mergeClientCommand(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9885
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9887
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 9892
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9893
    return-object p0

    .line 9890
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    goto :goto_0
.end method

.method public mergeCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9600
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9602
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 9607
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9608
    return-object p0

    .line 9605
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 9415
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 9455
    :cond_0
    :goto_0
    return-object p0

    .line 9416
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9417
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9419
    :cond_2
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9420
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9422
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9423
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9425
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9426
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9428
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9429
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeStreamMetadata(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9431
    :cond_6
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9432
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeStreamData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9434
    :cond_7
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 9435
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorCode()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setErrorCode(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9437
    :cond_8
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9438
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9440
    :cond_9
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 9441
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getStoreBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9443
    :cond_a
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 9444
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeClientCommand(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9446
    :cond_b
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 9447
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeProfilingData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    .line 9449
    :cond_c
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9450
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 9451
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/util/List;)Ljava/util/List;

    .line 9453
    :cond_d
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9463
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 9464
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 9468
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9469
    :sswitch_0
    return-object p0

    .line 9474
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v3

    .line 9475
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasCommit()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9476
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getCommit()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    .line 9478
    :cond_1
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9479
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9483
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    :sswitch_2
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v3

    .line 9484
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasGetUpdates()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9485
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getGetUpdates()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    .line 9487
    :cond_2
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9488
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9492
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    :sswitch_3
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    move-result-object v3

    .line 9493
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasAuthenticate()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9494
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getAuthenticate()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;

    .line 9496
    :cond_3
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9497
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9501
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 9502
    .local v2, rawValue:I
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;->valueOf(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    move-result-object v5

    .line 9503
    .local v5, value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    if-eqz v5, :cond_0

    .line 9504
    invoke-virtual {p0, v5}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setErrorCode(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9509
    .end local v2           #rawValue:I
    .end local v5           #value:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9513
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_0

    .line 9517
    :sswitch_7
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    move-result-object v3

    .line 9518
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasClientCommand()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 9519
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getClientCommand()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;

    .line 9521
    :cond_4
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9522
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setClientCommand(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9526
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;
    :sswitch_8
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v3

    .line 9527
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasProfilingData()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 9528
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getProfilingData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    .line 9530
    :cond_5
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9531
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setProfilingData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9535
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;
    :sswitch_9
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    move-result-object v3

    .line 9536
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasClearUserData()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 9537
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getClearUserData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;

    .line 9539
    :cond_6
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9540
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9544
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;
    :sswitch_a
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v3

    .line 9545
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasStreamMetadata()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 9546
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getStreamMetadata()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    .line 9548
    :cond_7
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9549
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setStreamMetadata(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9553
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    :sswitch_b
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v3

    .line 9554
    .local v3, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->hasStreamData()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 9555
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->getStreamData()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    .line 9557
    :cond_8
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9558
    invoke-virtual {v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->setStreamData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9562
    .end local v3           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->addMigratedDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto/16 :goto_0

    .line 9566
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 9567
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 9568
    .local v1, limit:I
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_9

    .line 9569
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->addMigratedDataTypeId(I)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    goto :goto_1

    .line 9571
    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 9464
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x62 -> :sswitch_d
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9346
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9346
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9346
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9637
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9639
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 9644
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9645
    return-object p0

    .line 9642
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    goto :goto_0
.end method

.method public mergeProfilingData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9922
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9924
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 9929
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9930
    return-object p0

    .line 9927
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    goto :goto_0
.end method

.method public mergeStreamData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9785
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9787
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24500(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 9792
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9793
    return-object p0

    .line 9790
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    goto :goto_0
.end method

.method public mergeStreamMetadata(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9748
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9750
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newBuilder(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 9755
    :goto_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9756
    return-object p0

    .line 9753
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    goto :goto_0
.end method

.method public setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9669
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9670
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 9671
    return-object p0
.end method

.method public setAuthenticate(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9661
    if-nez p1, :cond_0

    .line 9662
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9664
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasAuthenticate:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9665
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->authenticate_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$AuthenticateResponse;

    .line 9666
    return-object p0
.end method

.method public setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9706
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9707
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    .line 9708
    return-object p0
.end method

.method public setClearUserData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9698
    if-nez p1, :cond_0

    .line 9699
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9701
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClearUserData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9702
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clearUserData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClearUserDataResponse;

    .line 9703
    return-object p0
.end method

.method public setClientCommand(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9880
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9881
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 9882
    return-object p0
.end method

.method public setClientCommand(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9872
    if-nez p1, :cond_0

    .line 9873
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9875
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasClientCommand:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9876
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->clientCommand_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientCommand;

    .line 9877
    return-object p0
.end method

.method public setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9595
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9596
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 9597
    return-object p0
.end method

.method public setCommit(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9587
    if-nez p1, :cond_0

    .line 9588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9590
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasCommit:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9591
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->commit_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 9592
    return-object p0
.end method

.method public setErrorCode(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9809
    if-nez p1, :cond_0

    .line 9810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9812
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorCode:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9813
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorCode_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$ErrorType;

    .line 9814
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9830
    if-nez p1, :cond_0

    .line 9831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9833
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasErrorMessage:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9834
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->errorMessage_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 9835
    return-object p0
.end method

.method public setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9632
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9633
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 9634
    return-object p0
.end method

.method public setGetUpdates(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9624
    if-nez p1, :cond_0

    .line 9625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9627
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasGetUpdates:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9628
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->getUpdates_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 9629
    return-object p0
.end method

.method public setMigratedDataTypeId(II)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9949
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->migratedDataTypeId_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$23300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9950
    return-object p0
.end method

.method public setProfilingData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9917
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9918
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 9919
    return-object p0
.end method

.method public setProfilingData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9909
    if-nez p1, :cond_0

    .line 9910
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9912
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasProfilingData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9913
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->profilingData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ProfilingData;

    .line 9914
    return-object p0
.end method

.method public setStoreBirthday(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9851
    if-nez p1, :cond_0

    .line 9852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9854
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStoreBirthday:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9855
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->storeBirthday_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$25102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 9856
    return-object p0
.end method

.method public setStreamData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9780
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9781
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 9782
    return-object p0
.end method

.method public setStreamData(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9772
    if-nez p1, :cond_0

    .line 9773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9775
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamData:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24402(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9776
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamData_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24502(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 9777
    return-object p0
.end method

.method public setStreamMetadata(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 9743
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9744
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 9745
    return-object p0
.end method

.method public setStreamMetadata(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 9735
    if-nez p1, :cond_0

    .line 9736
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9738
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->hasStreamMetadata:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Z)Z

    .line 9739
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->streamMetadata_:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;->access$24302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ClientToServerResponse;Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 9740
    return-object p0
.end method

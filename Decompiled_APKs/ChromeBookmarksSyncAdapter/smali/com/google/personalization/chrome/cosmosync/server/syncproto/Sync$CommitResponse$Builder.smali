.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6308
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17000()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1

    .prologue
    .line 6302
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 3

    .prologue
    .line 6311
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;-><init>()V

    .line 6312
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 6313
    return-object v0
.end method


# virtual methods
.method public addAllEntryResponse(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 6447
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6448
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;

    .line 6450
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6451
    return-object p0
.end method

.method public addEntryResponse(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6439
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6440
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;

    .line 6442
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6443
    return-object p0
.end method

.method public addEntryResponse(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6429
    if-nez p1, :cond_0

    .line 6430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6432
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6433
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;

    .line 6435
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6436
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 6341
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6342
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6344
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 3

    .prologue
    .line 6357
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    if-nez v1, :cond_0

    .line 6358
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6361
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6362
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;

    .line 6365
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 6366
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .line 6367
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2

    .prologue
    .line 6330
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

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
    .line 6302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;
    .locals 1

    .prologue
    .line 6334
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6302
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6338
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6371
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6378
    :cond_0
    :goto_0
    return-object p0

    .line 6372
    :cond_1
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6373
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6374
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;Ljava/util/List;)Ljava/util/List;

    .line 6376
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6387
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6391
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6392
    :sswitch_0
    return-object p0

    .line 6397
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;

    move-result-object v0

    .line 6398
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6399
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->addEntryResponse(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    goto :goto_0

    .line 6387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
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
    .line 6302
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6302
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

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
    .line 6302
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEntryResponse(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6425
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6426
    return-object p0
.end method

.method public setEntryResponse(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$EntryResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6418
    if-nez p2, :cond_0

    .line 6419
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6421
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->entryResponse_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;->access$17200(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6422
    return-object p0
.end method

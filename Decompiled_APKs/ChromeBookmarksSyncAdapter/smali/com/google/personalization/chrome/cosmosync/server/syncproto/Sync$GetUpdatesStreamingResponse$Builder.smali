.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7453
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$19100()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1

    .prologue
    .line 7447
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 3

    .prologue
    .line 7456
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;-><init>()V

    .line 7457
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 7458
    return-object v0
.end method


# virtual methods
.method public addAllEntries(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 7592
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7593
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;

    .line 7595
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7596
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7584
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7585
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;

    .line 7587
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7588
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7574
    if-nez p1, :cond_0

    .line 7575
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7577
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7578
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;

    .line 7580
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7581
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 7486
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7487
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7489
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7447
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 3

    .prologue
    .line 7502
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    if-nez v1, :cond_0

    .line 7503
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7506
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 7507
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;

    .line 7510
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 7511
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .line 7512
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2

    .prologue
    .line 7475
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7447
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7447
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

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
    .line 7447
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;
    .locals 1

    .prologue
    .line 7479
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7447
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7483
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7516
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7523
    :cond_0
    :goto_0
    return-object p0

    .line 7517
    :cond_1
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7518
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7519
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;Ljava/util/List;)Ljava/util/List;

    .line 7521
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7532
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 7536
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7537
    :sswitch_0
    return-object p0

    .line 7542
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    .line 7543
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7544
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    goto :goto_0

    .line 7532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 7447
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7447
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

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
    .line 7447
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7570
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7571
    return-object p0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7563
    if-nez p2, :cond_0

    .line 7564
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7566
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;->access$19300(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesStreamingResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7567
    return-object p0
.end method

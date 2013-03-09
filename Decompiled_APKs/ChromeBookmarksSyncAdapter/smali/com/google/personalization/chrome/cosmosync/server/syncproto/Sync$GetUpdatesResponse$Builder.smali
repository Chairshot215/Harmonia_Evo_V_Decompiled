.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6671
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$17400()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1

    .prologue
    .line 6665
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 3

    .prologue
    .line 6674
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;-><init>()V

    .line 6675
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 6676
    return-object v0
.end method


# virtual methods
.method public addAllEntries(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 6847
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6848
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6850
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6851
    return-object p0
.end method

.method public addAllNewProgressMarker(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 6952
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6953
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6955
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 6956
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6839
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6840
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6842
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6843
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6829
    if-nez p1, :cond_0

    .line 6830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6832
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6833
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6835
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6836
    return-object p0
.end method

.method public addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 6944
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6945
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6947
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6948
    return-object p0
.end method

.method public addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6934
    if-nez p1, :cond_0

    .line 6935
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6937
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6938
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6940
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6941
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 6704
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6705
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 6707
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6665
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 3

    .prologue
    .line 6720
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    if-nez v1, :cond_0

    .line 6721
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6724
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 6725
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6728
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 6729
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6732
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 6733
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .line 6734
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2

    .prologue
    .line 6693
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6665
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6665
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

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
    .line 6665
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;
    .locals 1

    .prologue
    .line 6697
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 6665
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 6701
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 6738
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6760
    :cond_0
    :goto_0
    return-object p0

    .line 6739
    :cond_1
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6740
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6741
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17602(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6743
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6745
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6746
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getNewTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setNewTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    .line 6748
    :cond_4
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6749
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getDeprecatedNewestTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setDeprecatedNewestTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    .line 6751
    :cond_5
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6752
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->getChangesRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    .line 6754
    :cond_6
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6755
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6756
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Ljava/util/List;)Ljava/util/List;

    .line 6758
    :cond_7
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6769
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6773
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6774
    :sswitch_0
    return-object p0

    .line 6779
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    .line 6780
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6781
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    goto :goto_0

    .line 6785
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setNewTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    goto :goto_0

    .line 6789
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setDeprecatedNewestTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    goto :goto_0

    .line 6793
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    goto :goto_0

    .line 6797
    :sswitch_5
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    .line 6798
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 6799
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    goto :goto_0

    .line 6769
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 6665
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6665
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

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
    .line 6665
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6902
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasChangesRemaining:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$18202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z

    .line 6903
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->changesRemaining_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$18302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J

    .line 6904
    return-object p0
.end method

.method public setDeprecatedNewestTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6884
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasDeprecatedNewestTimestamp:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$18002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z

    .line 6885
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->deprecatedNewestTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$18102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J

    .line 6886
    return-object p0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6825
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6826
    return-object p0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6818
    if-nez p2, :cond_0

    .line 6819
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6821
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17600(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6822
    return-object p0
.end method

.method public setNewProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 6930
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6931
    return-object p0
.end method

.method public setNewProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6923
    if-nez p2, :cond_0

    .line 6924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6926
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6927
    return-object p0
.end method

.method public setNewTimestamp(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 6866
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->hasNewTimestamp:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;Z)Z

    .line 6867
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->newTimestamp_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;->access$17902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesResponse;J)J

    .line 6868
    return-object p0
.end method

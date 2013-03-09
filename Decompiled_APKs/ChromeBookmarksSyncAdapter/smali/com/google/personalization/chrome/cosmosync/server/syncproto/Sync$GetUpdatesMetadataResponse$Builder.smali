.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7126
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$18500()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1

    .prologue
    .line 7120
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 3

    .prologue
    .line 7129
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;-><init>()V

    .line 7130
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 7131
    return-object v0
.end method


# virtual methods
.method public addAllNewProgressMarker(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 7290
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7291
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;

    .line 7293
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 7294
    return-object p0
.end method

.method public addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 7282
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7283
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;

    .line 7285
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7286
    return-object p0
.end method

.method public addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7272
    if-nez p1, :cond_0

    .line 7273
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7275
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7276
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;

    .line 7278
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7279
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 7159
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7160
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 7162
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7120
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 3

    .prologue
    .line 7175
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    if-nez v1, :cond_0

    .line 7176
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7179
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 7180
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;

    .line 7183
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 7184
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .line 7185
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2

    .prologue
    .line 7148
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 7120
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 7120
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

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
    .line 7120
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;
    .locals 1

    .prologue
    .line 7152
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 7120
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 7156
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 7189
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 7199
    :cond_0
    :goto_0
    return-object p0

    .line 7190
    :cond_1
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7191
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->getChangesRemaining()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    .line 7193
    :cond_2
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7194
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7195
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18702(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Ljava/util/List;)Ljava/util/List;

    .line 7197
    :cond_3
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 7208
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 7212
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7213
    :sswitch_0
    return-object p0

    .line 7218
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    goto :goto_0

    .line 7222
    :sswitch_2
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;

    move-result-object v0

    .line 7223
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 7224
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->addNewProgressMarker(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    goto :goto_0

    .line 7208
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 7120
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7120
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

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
    .line 7120
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setChangesRemaining(J)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 7240
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->hasChangesRemaining:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18802(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;Z)Z

    .line 7241
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->changesRemaining_:J
    invoke-static {v0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18902(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;J)J

    .line 7242
    return-object p0
.end method

.method public setNewProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 7268
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7269
    return-object p0
.end method

.method public setNewProgressMarker(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$DataTypeProgressMarker;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7261
    if-nez p2, :cond_0

    .line 7262
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7264
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->newProgressMarker_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;->access$18700(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$GetUpdatesMetadataResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7265
    return-object p0
.end method

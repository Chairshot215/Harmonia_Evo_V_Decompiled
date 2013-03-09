.class public final Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Sync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;",
        "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2588
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7800()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1

    .prologue
    .line 2582
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 3

    .prologue
    .line 2591
    new-instance v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    invoke-direct {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;-><init>()V

    .line 2592
    .local v0, builder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    new-instance v1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;-><init>(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$1;)V

    iput-object v1, v0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 2593
    return-object v0
.end method


# virtual methods
.method public addAllEntries(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 2750
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2753
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2754
    return-object p0
.end method

.method public addAllExtensionsActivity(Ljava/lang/Iterable;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;",
            ">;)",
            "Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 2822
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;>;"
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2823
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2825
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2826
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    return-object p0
.end method

.method public addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2732
    if-nez p1, :cond_0

    .line 2733
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2735
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2736
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2738
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2739
    return-object p0
.end method

.method public addExtensionsActivity(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2818
    return-object p0
.end method

.method public addExtensionsActivity(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2804
    if-nez p1, :cond_0

    .line 2805
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2807
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2808
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2810
    :cond_1
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2811
    return-object p0
.end method

.method public build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2624
    :cond_0
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 3

    .prologue
    .line 2637
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    if-nez v1, :cond_0

    .line 2638
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2641
    :cond_0
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 2642
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2645
    :cond_1
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_2

    .line 2646
    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    iget-object v2, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2649
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 2650
    .local v0, returnMe:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .line 2651
    return-object v0
.end method

.method public clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2

    .prologue
    .line 2610
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->create()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    invoke-virtual {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

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
    .line 2582
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->clone()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;
    .locals 1

    .prologue
    .line 2614
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2582
    invoke-virtual {p0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->getDefaultInstanceForType()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 2655
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getDefaultInstance()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2671
    :cond_0
    :goto_0
    return-object p0

    .line 2656
    :cond_1
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2657
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2658
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8002(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2660
    :cond_2
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2662
    :cond_3
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2663
    invoke-virtual {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->getCacheGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->setCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    .line 2665
    :cond_4
    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2666
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2667
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8102(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/util/List;)Ljava/util/List;

    .line 2669
    :cond_5
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2679
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2680
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2684
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2685
    :sswitch_0
    return-object p0

    .line 2690
    :sswitch_1
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;

    move-result-object v0

    .line 2691
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2692
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->addEntries(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    goto :goto_0

    .line 2696
    .end local v0           #subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->setCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    goto :goto_0

    .line 2700
    :sswitch_3
    invoke-static {}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;->newBuilder()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;

    move-result-object v0

    .line 2701
    .local v0, subBuilder:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2702
    invoke-virtual {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->buildPartial()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->addExtensionsActivity(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    goto :goto_0

    .line 2680
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 2582
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2582
    check-cast p1, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

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
    .line 2582
    invoke-virtual {p0, p1, p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCacheGuid(Ljava/lang/String;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 2769
    if-nez p1, :cond_0

    .line 2770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2772
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    const/4 v1, 0x1

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->hasCacheGuid:Z
    invoke-static {v0, v1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8202(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Z)Z

    .line 2773
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #setter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->cacheGuid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8302(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;Ljava/lang/String;)Ljava/lang/String;

    .line 2774
    return-object p0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2728
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2729
    return-object p0
.end method

.method public setEntries(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$SyncEntity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2721
    if-nez p2, :cond_0

    .line 2722
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->entries_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8000(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2725
    return-object p0
.end method

.method public setExtensionsActivity(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2800
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity$Builder;->build()Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2801
    return-object p0
.end method

.method public setExtensionsActivity(ILcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$ChromiumExtensionsActivity;)Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2793
    if-nez p2, :cond_0

    .line 2794
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2796
    :cond_0
    iget-object v0, p0, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage$Builder;->result:Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;

    #getter for: Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->extensionsActivity_:Ljava/util/List;
    invoke-static {v0}, Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;->access$8100(Lcom/google/personalization/chrome/cosmosync/server/syncproto/Sync$CommitMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2797
    return-object p0
.end method

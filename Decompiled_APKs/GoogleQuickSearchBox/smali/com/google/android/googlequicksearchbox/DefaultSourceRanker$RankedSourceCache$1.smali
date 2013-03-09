.class Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;
.super Ljava/lang/Object;
.source "DefaultSourceRanker.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;->this$1:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;->consume(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/util/Map;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, clickScores:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;->this$1:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    iget-object v4, v4, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    #getter for: Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSources:Lcom/google/android/googlequicksearchbox/Sources;
    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->access$200(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/Sources;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/googlequicksearchbox/Sources;->getSources()Ljava/util/Collection;

    move-result-object v3

    .line 87
    .local v3, sources:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/googlequicksearchbox/Source;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v1, ordered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/googlequicksearchbox/Source;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/Source;

    .line 89
    .local v2, source:Lcom/google/android/googlequicksearchbox/Source;
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;->this$1:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    iget-object v4, v4, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    #getter for: Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;
    invoke-static {v4}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->access$300(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)Lcom/google/android/googlequicksearchbox/SearchSettings;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/googlequicksearchbox/SearchSettings;->isSourceEnabled(Lcom/google/android/googlequicksearchbox/Source;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v2           #source:Lcom/google/android/googlequicksearchbox/Source;
    :cond_1
    new-instance v4, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;

    invoke-direct {v4, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourceComparator;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache$1;->this$1:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;

    #calls: Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->store(Ljava/lang/Object;)V
    invoke-static {v4, v1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;->access$400(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$RankedSourceCache;Ljava/lang/Object;)V

    .line 100
    const/4 v4, 0x1

    return v4
.end method

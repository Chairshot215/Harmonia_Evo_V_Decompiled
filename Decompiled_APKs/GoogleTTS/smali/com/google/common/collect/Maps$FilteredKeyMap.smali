.class Lcom/google/common/collect/Maps$FilteredKeyMap;
.super Lcom/google/common/collect/Maps$AbstractFilteredMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FilteredKeyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$AbstractFilteredMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field keyPredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<-TK;>;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 1130
    .local p0, this:Lcom/google/common/collect/Maps$FilteredKeyMap;,"Lcom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1111
    .local p0, this:Lcom/google/common/collect/Maps$FilteredKeyMap;,"Lcom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    .line 1112
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p0, this:Lcom/google/common/collect/Maps$FilteredKeyMap;,"Lcom/google/common/collect/Maps$FilteredKeyMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    .line 1121
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keyPredicate:Lcom/google/common/base/Predicate;

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #result:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    iput-object v0, p0, Lcom/google/common/collect/Maps$FilteredKeyMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.class Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;
.super Ljava/util/AbstractCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$AbstractFilteredMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AbstractFilteredMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1022
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1040
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1041
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1044
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1024
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1025
    .local v0, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;-><init>(Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 1048
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v2, v2, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1049
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1051
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v2, v2, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1053
    const/4 v2, 0x1

    .line 1056
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1063
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1064
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1065
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1066
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1067
    const/4 v0, 0x1

    goto :goto_0

    .line 1070
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1074
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    const/4 v0, 0x0

    .line 1076
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1077
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1078
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1079
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1081
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1082
    const/4 v0, 0x1

    goto :goto_0

    .line 1085
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1036
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1090
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, this:Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;,"Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

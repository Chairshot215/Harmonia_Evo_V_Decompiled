.class Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;
.super Ljava/util/AbstractSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$FilteredEntryMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$FilteredEntryMap;Lcom/google/common/collect/Maps$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1189
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1207
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1208
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1211
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, v1, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1192
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet$1;-><init>(Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1215
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$FilteredEntryMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const/4 v0, 0x1

    .line 1219
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 1223
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const/4 v0, 0x0

    .line 1225
    .local v0, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1226
    .local v2, obj:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    .line 1228
    .end local v2           #obj:Ljava/lang/Object;
    :cond_0
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
    .line 1232
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const/4 v0, 0x0

    .line 1234
    .local v0, changed:Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$FilteredEntryMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1235
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1237
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$FilteredEntryMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1239
    const/4 v0, 0x1

    goto :goto_0

    .line 1242
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1203
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->this$0:Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v0, v0, Lcom/google/common/collect/Maps$FilteredEntryMap;->filteredEntrySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1247
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

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
    .line 1251
    .local p0, this:Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;,"Lcom/google/common/collect/Maps$FilteredEntryMap<TK;TV;>.KeySet;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$FilteredEntryMap$KeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

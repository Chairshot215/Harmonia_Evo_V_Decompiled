.class Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;
.super Ljava/util/AbstractSet;
.source "AbstractMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1373
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1363
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapEntries;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;-><init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 1377
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapEntries;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1378
    const/4 v1, 0x0

    .line 1382
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 1380
    check-cast v0, Ljava/util/Map$Entry;

    .line 1381
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v1, v1, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/google/common/collect/AbstractMultimap;->removeValuesForKey(Ljava/lang/Object;)I
    invoke-static {v1, v2}, Lcom/google/common/collect/AbstractMultimap;->access$500(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;)I

    .line 1382
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1367
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapEntries;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapEntries;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

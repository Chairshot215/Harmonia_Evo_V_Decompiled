.class Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap$AsMap;)V
    .locals 1
    .parameter

    .prologue
    .line 1387
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1393
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1387
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1397
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1398
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 1399
    .local v1, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    iput-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1400
    iget-object v2, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v2, v2, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    #calls: Lcom/google/common/collect/AbstractMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    invoke-static {v2, v1, v3}, Lcom/google/common/collect/AbstractMultimap;->access$1300(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    return-object v2
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1404
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.AsMap.AsMapIterator;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1405
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->this$1:Lcom/google/common/collect/AbstractMultimap$AsMap;

    iget-object v0, v0, Lcom/google/common/collect/AbstractMultimap$AsMap;->this$0:Lcom/google/common/collect/AbstractMultimap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/AbstractMultimap;->access$220(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 1406
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1407
    return-void
.end method

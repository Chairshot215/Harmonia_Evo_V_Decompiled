.class Lcom/google/common/collect/AbstractMultimap$SortedKeySet;
.super Lcom/google/common/collect/AbstractMultimap$KeySet;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.KeySet;",
        "Ljava/util/SortedSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    .local p2, subMap:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;Ljava/util/Collection<TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/Map;)V

    .line 909
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 920
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 924
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    .local p1, toElement:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 928
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 912
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->subMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    .local p1, fromElement:Ljava/lang/Object;,"TK;"
    .local p2, toElement:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 936
    .local p0, this:Lcom/google/common/collect/AbstractMultimap$SortedKeySet;,"Lcom/google/common/collect/AbstractMultimap<TK;TV;>.SortedKeySet;"
    .local p1, fromElement:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/util/SortedMap;)V

    return-object v0
.end method

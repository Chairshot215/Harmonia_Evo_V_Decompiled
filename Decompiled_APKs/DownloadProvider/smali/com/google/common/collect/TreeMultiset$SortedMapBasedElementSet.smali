.class Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;
.super Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortedMapBasedElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMapBasedMultiset",
        "<TE;>.MapBasedElementSet;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    .local p2, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->this$0:Lcom/google/common/collect/TreeMultiset;

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    .line 145
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

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
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    const/4 v1, 0x0

    .line 178
    :try_start_0
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 182
    :goto_0
    return v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 181
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method sortedMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;,"Lcom/google/common/collect/TreeMultiset<TE;>.SortedMapBasedElementSet;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->this$0:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;->sortedMap()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$SortedMapBasedElementSet;-><init>(Lcom/google/common/collect/TreeMultiset;Ljava/util/SortedMap;)V

    return-object v0
.end method

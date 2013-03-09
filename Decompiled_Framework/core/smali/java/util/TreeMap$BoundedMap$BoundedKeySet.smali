.class final Ljava/util/TreeMap$BoundedMap$BoundedKeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap$BoundedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BoundedKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/TreeMap$BoundedMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap$BoundedMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #calls: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Ljava/util/TreeMap$BoundedMap;->access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v0, v0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->findByObject(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x0

    #calls: Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;
    invoke-static {v1, v2}, Ljava/util/TreeMap$BoundedMap;->access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$2;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$Node;)V

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v1, v1, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    iget-object v2, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->ascending:Z
    invoke-static {v2}, Ljava/util/TreeMap$BoundedMap;->access$800(Ljava/util/TreeMap$BoundedMap;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->from:Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/TreeMap$BoundedMap;->access$1000(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->fromBound:Ljava/util/TreeMap$Bound;
    invoke-static {v4}, Ljava/util/TreeMap$BoundedMap;->access$600(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    move-result-object v4

    iget-object v5, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->to:Ljava/lang/Object;
    invoke-static {v5}, Ljava/util/TreeMap$BoundedMap;->access$1100(Ljava/util/TreeMap$BoundedMap;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #getter for: Ljava/util/TreeMap$BoundedMap;->toBound:Ljava/util/TreeMap$Bound;
    invoke-static {v6}, Ljava/util/TreeMap$BoundedMap;->access$400(Ljava/util/TreeMap$BoundedMap;)Ljava/util/TreeMap$Bound;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    const/4 v2, 0x1

    #calls: Ljava/util/TreeMap$BoundedMap;->endpoint(Z)Ljava/util/TreeMap$Node;
    invoke-static {v1, v2}, Ljava/util/TreeMap$BoundedMap;->access$700(Ljava/util/TreeMap$BoundedMap;Z)Ljava/util/TreeMap$Node;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/util/TreeMap$BoundedMap$BoundedKeySet$1;-><init>(Ljava/util/TreeMap$BoundedMap$BoundedKeySet;Ljava/util/TreeMap$Node;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v1}, Ljava/util/TreeMap$BoundedMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v1, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v1}, Ljava/util/TreeMap$BoundedMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    #calls: Ljava/util/TreeMap$BoundedMap;->isInBounds(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Ljava/util/TreeMap$BoundedMap;->access$900(Ljava/util/TreeMap$BoundedMap;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    iget-object v0, v0, Ljava/util/TreeMap$BoundedMap;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->removeInternalByKey(Ljava/lang/Object;)Ljava/util/TreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$BoundedMap$BoundedKeySet;->this$1:Ljava/util/TreeMap$BoundedMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$BoundedMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

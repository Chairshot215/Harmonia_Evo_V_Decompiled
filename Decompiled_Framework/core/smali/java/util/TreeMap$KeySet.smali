.class Ljava/util/TreeMap$KeySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySet"
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
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0

    iput-object p1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/TreeMap$KeySet$2;

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p0, v0}, Ljava/util/TreeMap$KeySet$2;-><init>(Ljava/util/TreeMap$KeySet;Ljava/util/TreeMap$Node;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->last()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0
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

    const/4 v3, 0x0

    new-instance v0, Ljava/util/TreeMap$BoundedMap;

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    const/4 v2, 0x0

    sget-object v4, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    sget-object v6, Ljava/util/TreeMap$Bound;->NO_BOUND:Ljava/util/TreeMap$Bound;

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$BoundedMap;-><init>(Ljava/util/TreeMap;ZLjava/lang/Object;Ljava/util/TreeMap$Bound;Ljava/lang/Object;Ljava/util/TreeMap$Bound;)V

    invoke-virtual {v0}, Ljava/util/TreeMap$BoundedMap;->navigableKeySet()Ljava/util/NavigableSet;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    new-instance v1, Ljava/util/TreeMap$KeySet$1;

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p0, v0}, Ljava/util/TreeMap$KeySet$1;-><init>(Ljava/util/TreeMap$KeySet;Ljava/util/TreeMap$Node;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    iget-object v0, v0, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Node;

    invoke-virtual {v0}, Ljava/util/TreeMap$Node;->first()Ljava/util/TreeMap$Node;

    move-result-object v0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #calls: Ljava/util/TreeMap;->internalPollFirstEntry()Ljava/util/Map$Entry;
    invoke-static {v1}, Ljava/util/TreeMap;->access$000(Ljava/util/TreeMap;)Ljava/util/Map$Entry;

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

    iget-object v1, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    #calls: Ljava/util/TreeMap;->internalPollLastEntry()Ljava/util/Map$Entry;
    invoke-static {v1}, Ljava/util/TreeMap;->access$100(Ljava/util/TreeMap;)Ljava/util/Map$Entry;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->size:I

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

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

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/TreeMap$KeySet;->this$0:Ljava/util/TreeMap;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

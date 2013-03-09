.class final Lcom/google/common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v2, p1, Ljava/util/SortedSet;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 50
    check-cast v1, Ljava/util/SortedSet;

    .line 51
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 52
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 60
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 55
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_1
    instance-of v2, p1, Lcom/google/common/collect/SortedIterable;

    if-eqz v2, :cond_2

    .line 56
    check-cast p1, Lcom/google/common/collect/SortedIterable;

    .end local p1           #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    goto :goto_0

    .line 58
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local p1       #elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    goto :goto_0
.end method

.method public static sortedUnique(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;

    move-result-object v0

    .line 71
    .local v0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 72
    return-object v0
.end method

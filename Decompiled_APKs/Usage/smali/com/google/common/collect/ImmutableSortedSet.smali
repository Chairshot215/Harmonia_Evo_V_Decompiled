.class public abstract Lcom/google/common/collect/ImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSetFauxverideShim",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 92
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 573
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 574
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 277
    .local v0, naturalOrder:Lcom/google/common/collect/Ordering;,"Lcom/google/common/collect/Ordering<TE;>;"
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedSet;
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
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
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
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 297
    .local v0, naturalOrder:Lcom/google/common/collect/Ordering;,"Lcom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 8
    .parameter
    .parameter
    .parameter "fromSortedSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TE;>;"
    if-nez p2, :cond_0

    invoke-static {p1, p0}, Lcom/google/common/collect/ImmutableSortedSet;->hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 359
    .local v3, hasSameComparator:Z
    :goto_0
    if-eqz v3, :cond_2

    instance-of v7, p1, Lcom/google/common/collect/ImmutableSortedSet;

    if-eqz v7, :cond_2

    move-object v6, p1

    .line 361
    check-cast v6, Lcom/google/common/collect/ImmutableSortedSet;

    .line 362
    .local v6, result:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableSortedSet;->hasPartialArray()Z

    move-result v7

    if-nez v7, :cond_2

    .line 379
    .end local v6           #result:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    :goto_1
    return-object v6

    .line 356
    .end local v3           #hasSameComparator:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 367
    .restart local v3       #hasSameComparator:Z
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->newObjectArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, array:[Ljava/lang/Object;
    array-length v7, v1

    if-nez v7, :cond_3

    .line 369
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v6

    goto :goto_1

    .line 372
    :cond_3
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v2, v0, v4

    .line 373
    .local v2, e:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 375
    .end local v2           #e:Ljava/lang/Object;
    :cond_4
    if-nez v3, :cond_5

    .line 376
    invoke-static {v1, p0}, Lcom/google/common/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 377
    invoke-static {v1, p0}, Lcom/google/common/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v1

    .line 379
    :cond_5
    new-instance v6, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v6, v1, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
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
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 402
    :goto_0
    return-object v2

    .line 395
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 396
    .local v1, list:Ljava/util/List;,"Ljava/util/List<TE;>;"
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 399
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 400
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 401
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    .line 402
    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v2, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 347
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 350
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/lang/Iterable;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method private static emptySet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method static emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method static hasSameComparator(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/util/Comparator",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, elements:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    const/4 v2, 0x0

    .line 414
    instance-of v3, p0, Ljava/util/SortedSet;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 415
    check-cast v1, Ljava/util/SortedSet;

    .line 416
    .local v1, sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 417
    .local v0, comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 421
    .end local v0           #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .end local v1           #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    :cond_0
    :goto_0
    return v2

    .line 417
    .restart local v0       #comparator2:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    .restart local v1       #sortedSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<*>;"
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static newObjectArray(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    check-cast p0, Ljava/util/Collection;

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    move-object v1, p0

    .line 386
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .end local p0           #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    move-result v2

    new-array v0, v2, [Ljava/lang/Object;

    .line 387
    .local v0, array:[Ljava/lang/Object;
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 384
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #collection:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .restart local p0       #iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, element:Ljava/lang/Comparable;,"TE;"
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 122
    .local v0, array:[Ljava/lang/Object;
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    .local p3, e4:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, e1:Ljava/lang/Comparable;,"TE;"
    .local p1, e2:Ljava/lang/Comparable;,"TE;"
    .local p2, e3:Ljava/lang/Comparable;,"TE;"
    .local p3, e4:Ljava/lang/Comparable;,"TE;"
    .local p4, e5:Ljava/lang/Comparable;,"TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, elements:[Ljava/lang/Comparable;,"[TE;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static varargs ofInternal(Ljava/util/Comparator;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;[TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:[Ljava/lang/Object;,"[TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 204
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 205
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 206
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0           #array:[Ljava/lang/Object;
    .end local v1           #i:I
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 210
    :goto_1
    return-object v2

    .line 208
    .restart local v0       #array:[Ljava/lang/Object;
    .restart local v1       #i:I
    :cond_0
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 209
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet;->removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    .line 210
    new-instance v2, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v2, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_1

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .prologue
    .line 678
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static removeDupes([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;
    .locals 6
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    const/4 v5, 0x0

    .line 228
    const/4 v3, 0x1

    .line 229
    .local v3, size:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 230
    aget-object v1, p0, v2

    .line 231
    .local v1, element:Ljava/lang/Object;
    add-int/lit8 v4, v3, -0x1

    aget-object v4, p0, v4

    invoke-static {p1, v4, v1}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    aput-object v1, p0, v3

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v1           #element:Ljava/lang/Object;
    :cond_1
    array-length v4, p0

    if-ne v3, v4, :cond_2

    .line 243
    .end local p0
    :goto_1
    return-object p0

    .line 241
    .restart local p0
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 242
    .local v0, copy:[Ljava/lang/Object;
    invoke-static {p0, v5, v0, v5, v3}, Lcom/google/common/collect/Platform;->unsafeArrayCopy([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    move-object p0, v0

    .line 243
    goto :goto_1
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/ImmutableSortedSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 0
    .parameter "array"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 219
    return-void
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter
    .parameter "a"
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    move-object v0, p0

    .line 567
    .local v0, unsafeComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
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
    .line 584
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract hasPartialArray()Z
.end method

.method public headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract headSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 619
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract subSetImpl(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 634
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 557
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 682
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method

.class public abstract Lcom/google/common/collect/ImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Lcom/google/common/collect/SortedIterable;
.implements Ljava/util/SortedSet;


# annotations
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
        "<TE;>;",
        "Lcom/google/common/collect/SortedIterable",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_SET:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


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
    .line 92
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 95
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
    .line 566
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 567
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 568
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
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
    .line 411
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    .local p1, elements:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/SortedIterables;->sortedUnique(Ljava/util/Comparator;Ljava/util/Iterator;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 413
    .local v0, list:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
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
    .line 100
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
    .line 105
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    sget-object v0, Lcom/google/common/collect/ImmutableSortedSet;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/EmptyImmutableSortedSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/EmptyImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
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
    .line 692
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 560
    .local p0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<*>;"
    move-object v0, p0

    .line 561
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
    .line 579
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
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
    .line 598
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 602
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract indexOf(Ljava/lang/Object;)I
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
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
    .line 620
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p2, toElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter "fromInclusive"
    .parameter
    .parameter "toInclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    .local p3, toElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 628
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
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
    .line 644
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .parameter
    .parameter "inclusive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 648
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, fromElement:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
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
    .line 551
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lcom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 696
    .local p0, this:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method

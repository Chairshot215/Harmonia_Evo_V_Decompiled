.class final Lcom/google/common/collect/ImmutableSortedAsList;
.super Lcom/google/common/collect/ImmutableList;
.source "ImmutableSortedAsList.java"

# interfaces
.implements Lcom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;",
        "Lcom/google/common/collect/SortedIterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient backingList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient backingSet:Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    .local p1, backingSet:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p2, backingList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    .line 37
    iput-object p2, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    .line 38
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
    .line 41
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 48
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 95
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 99
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 52
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 103
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 56
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedAsList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 91
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedAsList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 63
    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedAsList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    .local p0, this:Lcom/google/common/collect/ImmutableSortedAsList;,"Lcom/google/common/collect/ImmutableSortedAsList<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableAsList$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedAsList;->backingSet:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableAsList$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    return-object v0
.end method

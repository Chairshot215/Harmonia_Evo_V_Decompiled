.class abstract Lcom/google/common/collect/TransformedImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TransformedImmutableList$TransformedView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient backingList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    .local p1, backingList:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 102
    check-cast v0, Ljava/util/List;

    .line 103
    .local v0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_3
    move v1, v2

    .line 106
    goto :goto_0
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
    .line 78
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 110
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v1, 0x1

    .line 111
    .local v1, hashCode:I
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, e:Ljava/lang/Object;,"TE;"
    mul-int/lit8 v4, v1, 0x1f

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    add-int v1, v4, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 114
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v1, -0x1

    .line 54
    if-nez p1, :cond_1

    move v0, v1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 126
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    const/4 v1, -0x1

    .line 66
    if-nez p1, :cond_1

    move v0, v1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_2

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/UnmodifiableListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    new-instance v0, Lcom/google/common/collect/TransformedImmutableList$1;

    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/TransformedImmutableList$1;-><init>(Lcom/google/common/collect/TransformedImmutableList;II)V

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 90
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 2
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
    .line 94
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    new-instance v0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;

    iget-object v1, p0, Lcom/google/common/collect/TransformedImmutableList;->backingList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TransformedImmutableList$TransformedView;-><init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    invoke-static {p0}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/google/common/collect/TransformedImmutableList;,"Lcom/google/common/collect/TransformedImmutableList<TD;TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method

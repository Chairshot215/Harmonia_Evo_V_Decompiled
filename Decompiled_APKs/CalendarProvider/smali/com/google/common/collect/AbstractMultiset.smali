.class abstract Lcom/google/common/collect/AbstractMultiset;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiset.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMultiset$1;,
        Lcom/google/common/collect/AbstractMultiset$ElementSet;,
        Lcom/google/common/collect/AbstractMultiset$MultisetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 224
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "occurrences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;I)I

    .line 133
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, elementsToAdd:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const/4 v3, 0x0

    .line 175
    :goto_0
    return v3

    .line 166
    :cond_0
    instance-of v3, p1, Lcom/google/common/collect/Multiset;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 168
    check-cast v2, Lcom/google/common/collect/Multiset;

    .line 169
    .local v2, that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 170
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/AbstractMultiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 173
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<+TE;>;"
    :cond_1
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 201
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 202
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 70
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, elements:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .parameter "element"

    .prologue
    .line 121
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 122
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 126
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMultiset$ElementSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMultiset$ElementSet;-><init>(Lcom/google/common/collect/AbstractMultiset;Lcom/google/common/collect/AbstractMultiset$1;)V

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 210
    .local v0, result:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->createElementSet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 213
    :cond_0
    return-object v0
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    if-ne p1, p0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v3

    .line 257
    :cond_1
    instance-of v5, p1, Lcom/google/common/collect/Multiset;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 258
    check-cast v2, Lcom/google/common/collect/Multiset;

    .line 265
    .local v2, that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v5

    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    move v3, v4

    .line 266
    goto :goto_0

    .line 268
    :cond_2
    invoke-interface {v2}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 269
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/common/collect/AbstractMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 270
    goto :goto_0

    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    :cond_4
    move v3, v4

    .line 275
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 285
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 66
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMultiset$MultisetIterator;-><init>(Lcom/google/common/collect/AbstractMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .parameter "element"
    .parameter "occurrences"

    .prologue
    .line 145
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/AbstractMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1           #elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 182
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .restart local p1       #elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 179
    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    const/4 v2, 0x0

    .line 190
    .local v2, modified:Z
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 192
    .local v1, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 194
    const/4 v2, 0x1

    goto :goto_0

    .line 197
    .end local v1           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_1
    return v2
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter "oldCount"
    .parameter "newCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/Multisets;->setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 58
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    const-wide/16 v2, 0x0

    .line 59
    .local v2, sum:J
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 60
    .local v0, entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 62
    .end local v0           #entry:Lcom/google/common/collect/Multiset$Entry;,"Lcom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_0
    const-wide/32 v4, 0x7fffffff

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    .local p0, this:Lcom/google/common/collect/AbstractMultiset;,"Lcom/google/common/collect/AbstractMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

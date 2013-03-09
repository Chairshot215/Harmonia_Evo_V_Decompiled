.class Lcom/google/common/collect/Multisets$SetMultiset;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multisets.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMultiset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;,
        Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<TE;>;",
        "Lcom/google/common/collect/Multiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


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
    .line 206
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .parameter "element"

    .prologue
    .line 202
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

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
    .line 220
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    .line 221
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$ElementSet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    .line 228
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {v0, p0}, Lcom/google/common/collect/Multisets$SetMultiset$EntrySet;-><init>(Lcom/google/common/collect/Multisets$SetMultiset;)V

    iput-object v0, p0, Lcom/google/common/collect/Multisets$SetMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    const/4 v1, 0x0

    .line 257
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 258
    check-cast v0, Lcom/google/common/collect/Multiset;

    .line 259
    .local v0, that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->size()I

    move-result v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Multisets$SetMultiset;->delegate:Ljava/util/Set;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 261
    .end local v0           #that:Lcom/google/common/collect/Multiset;,"Lcom/google/common/collect/Multiset<*>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 265
    .local p0, this:Lcom/google/common/collect/Multisets$SetMultiset;,"Lcom/google/common/collect/Multisets$SetMultiset<TE;>;"
    const/4 v2, 0x0

    .line 266
    .local v2, sum:I
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$SetMultiset;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, e:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    .line 269
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    :cond_1
    return v2
.end method

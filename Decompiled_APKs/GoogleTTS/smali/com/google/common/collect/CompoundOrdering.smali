.class final Lcom/google/common/collect/CompoundOrdering;
.super Lcom/google/common/collect/Ordering;
.source "CompoundOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Ordering",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparators:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Comparator",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<TT;>;"
    .local p1, left:Ljava/lang/Object;,"TT;"
    .local p2, right:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 48
    .local v0, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 49
    .local v2, result:I
    if-eqz v2, :cond_0

    .line 53
    .end local v0           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TT;>;"
    .end local v2           #result:I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 57
    .local p0, this:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<TT;>;"
    if-ne p1, p0, :cond_0

    .line 58
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 60
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/CompoundOrdering;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 61
    check-cast v0, Lcom/google/common/collect/CompoundOrdering;

    .line 62
    .local v0, that:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<*>;"
    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 64
    .end local v0           #that:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 68
    .local p0, this:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    .local p0, this:Lcom/google/common/collect/CompoundOrdering;,"Lcom/google/common/collect/CompoundOrdering<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ordering.compound("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/CompoundOrdering;->comparators:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

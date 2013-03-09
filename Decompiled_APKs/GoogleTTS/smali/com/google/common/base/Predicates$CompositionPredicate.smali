.class Lcom/google/common/base/Predicates$CompositionPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<TB;>;"
        }
    .end annotation
.end field


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, this:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    .local p1, a:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .local p0, this:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    const/4 v1, 0x0

    .line 482
    instance-of v2, p1, Lcom/google/common/base/Predicates$CompositionPredicate;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 483
    check-cast v0, Lcom/google/common/base/Predicates$CompositionPredicate;

    .line 484
    .local v0, that:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<**>;"
    iget-object v2, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    iget-object v3, v0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    iget-object v3, v0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 486
    .end local v0           #that:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<**>;"
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 503
    .local p0, this:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    .local p0, this:Lcom/google/common/base/Predicates$CompositionPredicate;,"Lcom/google/common/base/Predicates$CompositionPredicate<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

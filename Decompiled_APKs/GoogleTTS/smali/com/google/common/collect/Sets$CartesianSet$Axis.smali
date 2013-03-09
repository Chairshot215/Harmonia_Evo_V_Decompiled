.class Lcom/google/common/collect/Sets$CartesianSet$Axis;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets$CartesianSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Axis"
.end annotation


# instance fields
.field final choices:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<+TB;>;"
        }
    .end annotation
.end field

.field final dividend:I

.field final synthetic this$0:Lcom/google/common/collect/Sets$CartesianSet;


# virtual methods
.method contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 919
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 923
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 924
    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    .line 925
    .local v0, that:Lcom/google/common/collect/Sets$CartesianSet$Axis;
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 928
    .end local v0           #that:Lcom/google/common/collect/Sets$CartesianSet$Axis;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getForIndex(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->dividend:I

    div-int v1, p1, v1

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 934
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    iget v0, v0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 911
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    iget-object v0, p0, Lcom/google/common/collect/Sets$CartesianSet$Axis;->choices:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    return v0
.end method

.class Lcom/google/common/collect/Sets$CartesianSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Sets$CartesianSet$Axis;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final axes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Sets$CartesianSet",
            "<TB;>.Axis;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TB;>;>;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    .local p1, sets:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 821
    const-wide/16 v2, 0x1

    .line 822
    .local v2, dividend:J
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 823
    .local v1, builder:Lcom/google/common/collect/ImmutableList$Builder;,"Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 824
    .local v5, set:Ljava/util/Set;,"Ljava/util/Set<+TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    long-to-int v6, v2

    invoke-direct {v0, p0, v5, v6}, Lcom/google/common/collect/Sets$CartesianSet$Axis;-><init>(Lcom/google/common/collect/Sets$CartesianSet;Ljava/util/Set;I)V

    .line 825
    .local v0, axis:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 826
    invoke-virtual {v0}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->size()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v2, v6

    .line 827
    goto :goto_0

    .line 828
    .end local v0           #axis:Lcom/google/common/collect/Sets$CartesianSet$Axis;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>.Axis;"
    .end local v5           #set:Ljava/util/Set;,"Ljava/util/Set<+TB;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    .line 829
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v6

    iput v6, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    .line 830
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .parameter "element"

    .prologue
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    const/4 v4, 0x0

    .line 863
    instance-of v3, p1, Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v4

    .line 876
    :goto_0
    return v3

    :cond_0
    move-object v2, p1

    .line 866
    check-cast v2, Ljava/util/List;

    .line 867
    .local v2, tuple:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 868
    .local v0, dimensions:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v3, v4

    .line 869
    goto :goto_0

    .line 871
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 872
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 873
    goto :goto_0

    .line 871
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 876
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 882
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    instance-of v1, p1, Lcom/google/common/collect/Sets$CartesianSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 883
    check-cast v0, Lcom/google/common/collect/Sets$CartesianSet;

    .line 884
    .local v0, that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    iget-object v1, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    iget-object v2, v0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 886
    .end local v0           #that:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<*>;"
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 894
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 895
    .local v0, adjust:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 896
    mul-int/lit8 v0, v0, 0x1f

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 898
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 837
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    new-instance v0, Lcom/google/common/collect/Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$CartesianSet$1;-><init>(Lcom/google/common/collect/Sets$CartesianSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 816
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 833
    .local p0, this:Lcom/google/common/collect/Sets$CartesianSet;,"Lcom/google/common/collect/Sets$CartesianSet<TB;>;"
    iget v0, p0, Lcom/google/common/collect/Sets$CartesianSet;->size:I

    return v0
.end method

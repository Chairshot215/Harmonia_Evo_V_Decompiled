.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;
.super Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;
.source "ConstrainedMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConstrainedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstrainedEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries",
        "<TK;TV;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet<TK;TV;>;"
    .local p1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;-><init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V

    .line 143
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 148
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet<TK;TV;>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->setEquals(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntrySet<TK;TV;>;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

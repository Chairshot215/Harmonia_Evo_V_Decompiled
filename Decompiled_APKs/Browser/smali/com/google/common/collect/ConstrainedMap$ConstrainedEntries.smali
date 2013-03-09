.class Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;
.super Lcom/google/common/collect/ForwardingCollection;
.source "ConstrainedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConstrainedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConstrainedEntries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final constraint:Lcom/google/common/collect/MapConstraint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    .local p1, entries:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    .local p2, constraint:Lcom/google/common/collect/MapConstraint;,"Lcom/google/common/collect/MapConstraint<-TK;-TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->entries:Ljava/util/Collection;

    .line 95
    iput-object p2, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->constraint:Lcom/google/common/collect/MapConstraint;

    .line 96
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 122
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->containsEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

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
    .line 125
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->entries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries$1;-><init>(Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 128
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->removeEntryImpl(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
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
    .line 131
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
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
    .line 134
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
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
    .line 119
    .local p0, this:Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries;,"Lcom/google/common/collect/ConstrainedMap$ConstrainedEntries<TK;TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

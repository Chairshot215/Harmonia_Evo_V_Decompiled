.class Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;
.super Lcom/google/common/collect/ForwardingCollection;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableAsMapValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, delegate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    .line 581
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 606
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

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
    .line 609
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 576
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate()Ljava/util/Collection;

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
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 587
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Collection<TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues$1;-><init>(Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
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
    .line 603
    .local p0, this:Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues;,"Lcom/google/common/collect/Multimaps$UnmodifiableAsMapValues<TV;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

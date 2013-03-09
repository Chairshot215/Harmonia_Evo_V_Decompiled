.class Lcom/google/common/collect/ImmutableSortedMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final transient map:Lcom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 464
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    .local p1, map:Lcom/google/common/collect/ImmutableSortedMap;,"Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 465
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    .line 466
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "target"

    .prologue
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 477
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 478
    check-cast v0, Ljava/util/Map$Entry;

    .line 479
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 480
    .local v1, mappedValue:Ljava/lang/Object;,"TV;"
    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 482
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    .end local v1           #mappedValue:Ljava/lang/Object;,"TV;"
    :cond_0
    return v2
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    #getter for: Lcom/google/common/collect/ImmutableSortedMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->access$200(Lcom/google/common/collect/ImmutableSortedMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    #getter for: Lcom/google/common/collect/ImmutableSortedMap;->fromIndex:I
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$300(Lcom/google/common/collect/ImmutableSortedMap;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 460
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 469
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 486
    .local p0, this:Lcom/google/common/collect/ImmutableSortedMap$EntrySet;,"Lcom/google/common/collect/ImmutableSortedMap$EntrySet<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$EntrySet;->map:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$EntrySetSerializedForm;-><init>(Lcom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method

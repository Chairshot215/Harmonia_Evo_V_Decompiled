.class Lcom/google/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/SmallSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/SmallSortedMap;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 442
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 442
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const/4 v0, 0x1

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 496
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->clear()V

    .line 497
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 462
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 464
    .local v1, existing:Ljava/lang/Object;,"TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 465
    .local v2, value:Ljava/lang/Object;,"TV;"
    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
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
    .line 446
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 486
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 487
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    const/4 v1, 0x1

    .line 491
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 451
    .local p0, this:Lcom/google/protobuf/SmallSortedMap$EntrySet;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap$EntrySet;->this$0:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method

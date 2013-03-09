.class Lcom/google/protobuf/SmallSortedMap;
.super Ljava/util/AbstractMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/SmallSortedMap$EmptySet;,
        Lcom/google/protobuf/SmallSortedMap$EntryIterator;,
        Lcom/google/protobuf/SmallSortedMap$EntrySet;,
        Lcom/google/protobuf/SmallSortedMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>.Entry;>;"
        }
    .end annotation
.end field

.field private isImmutable:Z

.field private volatile lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field private final maxArraySize:I

.field private overflowEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .parameter "arraySize"

    .prologue
    .line 125
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 126
    iput p1, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/protobuf/SmallSortedMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;-><init>(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/protobuf/SmallSortedMap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/protobuf/SmallSortedMap;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/SmallSortedMap;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/SmallSortedMap;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    return-object v0
.end method

.method private binarySearchInArray(Ljava/lang/Comparable;)I
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"TK;"
    const/4 v1, 0x0

    .line 288
    .local v1, left:I
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 293
    .local v3, right:I
    if-ltz v3, :cond_2

    .line 294
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 295
    .local v0, cmp:I
    if-lez v0, :cond_1

    .line 296
    add-int/lit8 v4, v3, 0x2

    neg-int v2, v4

    .line 313
    .end local v0           #cmp:I
    :cond_0
    :goto_0
    return v2

    .line 297
    .restart local v0       #cmp:I
    :cond_1
    if-nez v0, :cond_2

    move v2, v3

    .line 298
    goto :goto_0

    .line 302
    .end local v0           #cmp:I
    :cond_2
    :goto_1
    if-gt v1, v3, :cond_4

    .line 303
    add-int v4, v1, v3

    div-int/lit8 v2, v4, 0x2

    .line 304
    .local v2, mid:I
    iget-object v4, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 305
    .restart local v0       #cmp:I
    if-gez v0, :cond_3

    .line 306
    add-int/lit8 v3, v2, -0x1

    goto :goto_1

    .line 307
    :cond_3
    if-lez v0, :cond_0

    .line 308
    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    .line 313
    .end local v0           #cmp:I
    .end local v2           #mid:I
    :cond_4
    add-int/lit8 v4, v1, 0x1

    neg-int v2, v4

    goto :goto_0
.end method

.method private checkMutable()V
    .locals 1

    .prologue
    .line 336
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-eqz v0, :cond_0

    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method private ensureEntryArrayMutable()V
    .locals 2

    .prologue
    .line 361
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 362
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    .line 365
    :cond_0
    return-void
.end method

.method private getOverflowEntriesMutable()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 350
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method static newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;
    .locals 1
    .parameter "arraySize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TFieldDescriptorType;>;>(I)",
            "Lcom/google/protobuf/SmallSortedMap",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/SmallSortedMap$1;-><init>(I)V

    return-object v0
.end method

.method private removeArrayEntryAt(I)Ljava/lang/Object;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 269
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, removed:Ljava/lang/Object;,"TV;"
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 275
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v4, p0, v2}, Lcom/google/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/protobuf/SmallSortedMap;Ljava/util/Map$Entry;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 278
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 234
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 235
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 241
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 186
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 187
    .local v0, key:Ljava/lang/Comparable;,"TK;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/google/protobuf/SmallSortedMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/SmallSortedMap$EntrySet;-><init>(Lcom/google/protobuf/SmallSortedMap;Lcom/google/protobuf/SmallSortedMap$1;)V

    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->lazyEntrySet:Lcom/google/protobuf/SmallSortedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    .line 200
    .local v1, key:Ljava/lang/Comparable;,"TK;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 201
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 202
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 204
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getArrayEntryAt(I)Ljava/util/Map$Entry;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public getNumArrayEntries()I
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOverflowEntries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/SmallSortedMap$EmptySet;->iterable()Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public isImmutable()Z
    .locals 1

    .prologue
    .line 147
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    return v0
.end method

.method public makeImmutable()V
    .locals 1

    .prologue
    .line 133
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/SmallSortedMap;->isImmutable:Z

    .line 143
    :cond_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Comparable;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 211
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-virtual {v3, p2}, Lcom/google/protobuf/SmallSortedMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 229
    :goto_0
    return-object v3

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->ensureEntryArrayMutable()V

    .line 216
    add-int/lit8 v3, v0, 0x1

    neg-int v1, v3

    .line 217
    .local v1, insertionPoint:I
    iget v3, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-lt v1, v3, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_1
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    if-ne v3, v4, :cond_2

    .line 224
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    iget v4, p0, Lcom/google/protobuf/SmallSortedMap;->maxArraySize:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/SmallSortedMap$Entry;

    .line 225
    .local v2, lastEntryInArray:Lcom/google/protobuf/SmallSortedMap$Entry;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntriesMutable()Ljava/util/SortedMap;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getKey()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/protobuf/SmallSortedMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v2           #lastEntryInArray:Lcom/google/protobuf/SmallSortedMap$Entry;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>.Entry;"
    :cond_2
    iget-object v3, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    new-instance v4, Lcom/google/protobuf/SmallSortedMap$Entry;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/protobuf/SmallSortedMap$Entry;-><init>(Lcom/google/protobuf/SmallSortedMap;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v3, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 229
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/protobuf/SmallSortedMap;->checkMutable()V

    move-object v1, p1

    .line 253
    check-cast v1, Ljava/lang/Comparable;

    .line 254
    .local v1, key:Ljava/lang/Comparable;,"TK;"
    invoke-direct {p0, v1}, Lcom/google/protobuf/SmallSortedMap;->binarySearchInArray(Ljava/lang/Comparable;)I

    move-result v0

    .line 255
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lcom/google/protobuf/SmallSortedMap;->removeArrayEntryAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 263
    :goto_0
    return-object v2

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    const/4 v2, 0x0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 174
    .local p0, this:Lcom/google/protobuf/SmallSortedMap;,"Lcom/google/protobuf/SmallSortedMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/SmallSortedMap;->overflowEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

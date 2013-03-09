.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "LinkedHashMultimap.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUES_PER_KEY:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field transient expectedValuesPerKey:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field transient linkedEntries:Ljava/util/Collection;
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
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 120
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 121
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 122
    return-void
.end method

.method private constructor <init>(II)V
    .locals 2
    .parameter "expectedKeys"
    .parameter "expectedValuesPerKey"

    .prologue
    .line 125
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 126
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 127
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 128
    new-instance v0, Ljava/util/LinkedHashSet;

    mul-int v1, p1, p2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 130
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    .local p1, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    .line 73
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 135
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 138
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedHashMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 1
    .parameter "expectedKeys"
    .parameter "expectedValuesPerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, multimap:Lcom/google/common/collect/Multimap;,"Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 364
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 365
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    .line 366
    invoke-static {p1}, Lcom/google/common/collect/Serialization;->readCount(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 367
    .local v0, distinctKeys:I
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->setMap(Ljava/util/Map;)V

    .line 368
    new-instance v4, Ljava/util/LinkedHashSet;

    iget v5, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    mul-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    .line 370
    invoke-static {p0, p1, v0}, Lcom/google/common/collect/Serialization;->populateMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 371
    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    .line 372
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 374
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 376
    .local v2, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 377
    .local v3, value:Ljava/lang/Object;,"TV;"
    iget-object v4, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 354
    iget v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 355
    invoke-static {p0, p1}, Lcom/google/common/collect/Serialization;->writeMultimap(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 356
    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 357
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->createCollection()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$SetDecorator;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0
.end method

.method createCollection()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->expectedValuesPerKey:I

    invoke-static {v1}, Lcom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method createEntryIterator()Ljava/util/Iterator;
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
    .line 282
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->linkedEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    .local v0, delegateIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
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
    .line 330
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Lcom/google/common/collect/LinkedHashMultimap;,"Lcom/google/common/collect/LinkedHashMultimap<TK;TV;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

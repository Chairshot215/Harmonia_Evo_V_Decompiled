.class abstract Lcom/google/common/collect/AbstractMapBasedMultiset;
.super Lcom/google/common/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultiset$1;,
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;,
        Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;,
        Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f3c5464cd7009c6L


# instance fields
.field private transient backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private transient entrySet:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/AbstractMapBasedMultiset",
            "<TE;>.EntrySet;"
        }
    .end annotation
.end field

.field private transient size:J


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 65
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultiset;->size()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide p1
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMapBasedMultiset;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$222(Lcom/google/common/collect/AbstractMapBasedMultiset;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/lang/Object;Ljava/util/Map;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method private static getAndSet(Ljava/util/concurrent/atomic/AtomicInteger;I)I
    .locals 1
    .parameter "i"
    .parameter "count"

    .prologue
    .line 311
    if-nez p0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    goto :goto_0
.end method

.method private readObjectNoData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 410
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Stream data required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeAllOccurrences(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 6
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p2, map:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    const/4 v1, 0x0

    .line 320
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 321
    .local v0, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    .line 326
    :goto_0
    return v1

    .line 324
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    .line 325
    .local v1, numberRemoved:I
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 11
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 241
    if-nez p2, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 259
    :goto_0
    return v3

    .line 244
    :cond_0
    if-lez p2, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "occurrences cannot be negative: %s"

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 248
    .local v0, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_2

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, oldCount:I
    iget-object v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_2
    iget-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    .end local v0           #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v3           #oldCount:I
    :cond_1
    move v4, v6

    .line 244
    goto :goto_1

    .line 252
    .restart local v0       #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 253
    .restart local v3       #oldCount:I
    int-to-long v7, v3

    int-to-long v9, p2

    add-long v1, v7, v9

    .line 254
    .local v1, newCount:J
    const-wide/32 v7, 0x7fffffff

    cmp-long v4, v1, v7

    if-gtz v4, :cond_3

    move v4, v5

    :goto_3
    const-string v7, "too many occurrences: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    goto :goto_2

    :cond_3
    move v4, v6

    .line 254
    goto :goto_3
.end method

.method backingMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    return-object v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 227
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 228
    .local v0, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    goto :goto_0
.end method

.method createElementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 332
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedElementSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 90
    .local v0, result:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .end local v0           #result:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;Lcom/google/common/collect/AbstractMapBasedMultiset$1;)V

    .restart local v0       #result:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>.EntrySet;"
    iput-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->entrySet:Lcom/google/common/collect/AbstractMapBasedMultiset$EntrySet;

    .line 93
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/google/common/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 8
    .parameter "element"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "occurrences"
    .end parameter

    .prologue
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 263
    if-nez p2, :cond_1

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v5

    .line 285
    :cond_0
    :goto_0
    return v5

    .line 266
    :cond_1
    if-lez p2, :cond_2

    move v3, v4

    :goto_1
    const-string v6, "occurrences cannot be negative: %s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v3, v6, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 269
    .local v0, frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 276
    .local v2, oldCount:I
    if-le v2, p2, :cond_3

    .line 277
    move v1, p2

    .line 283
    .local v1, numberRemoved:I
    :goto_2
    neg-int v3, v1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 284
    iget-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    move v5, v2

    .line 285
    goto :goto_0

    .end local v0           #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1           #numberRemoved:I
    .end local v2           #oldCount:I
    :cond_2
    move v3, v5

    .line 266
    goto :goto_1

    .line 279
    .restart local v0       #frequency:Ljava/util/concurrent/atomic/AtomicInteger;
    .restart local v2       #oldCount:I
    :cond_3
    move v1, v2

    .line 280
    .restart local v1       #numberRemoved:I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method setBackingMap(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TE;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, backingMap:Ljava/util/Map;,"Ljava/util/Map<TE;Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    .line 75
    return-void
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 6
    .parameter
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 290
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/Multisets;->checkNonnegative(ILjava/lang/String;)V

    .line 294
    if-nez p2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 296
    .local v0, existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v1

    .line 306
    .local v1, oldCount:I
    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    sub-int v4, p2, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    .line 307
    return v1

    .line 298
    .end local v0           #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1           #oldCount:I
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 299
    .restart local v0       #existingCounter:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0, p2}, Lcom/google/common/collect/AbstractMapBasedMultiset;->getAndSet(Ljava/util/concurrent/atomic/AtomicInteger;I)I

    move-result v1

    .line 301
    .restart local v1       #oldCount:I
    if-nez v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Ljava/util/Map;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 175
    .local p0, this:Lcom/google/common/collect/AbstractMapBasedMultiset;,"Lcom/google/common/collect/AbstractMapBasedMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

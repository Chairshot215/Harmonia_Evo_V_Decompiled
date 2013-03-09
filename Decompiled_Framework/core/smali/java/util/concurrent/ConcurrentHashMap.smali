.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentHashMap$Values;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySet;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final RETRIES_BEFORE_LOCK:I = 0x2

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    const/high16 v0, 0x3f40

    invoke-direct {p0, v1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/high16 v0, 0x3f40

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 7

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_1
    const/high16 v5, 0x1

    if-le p3, v5, :cond_2

    const/high16 p3, 0x1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v4, p3, :cond_3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    rsub-int/lit8 v5, v3, 0x20

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v5

    iput-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const/high16 v5, 0x4000

    if-le p1, v5, :cond_4

    const/high16 p1, 0x4000

    :cond_4
    div-int v0, p1, v4

    mul-int v5, v0, v4

    if-ge v5, p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_6

    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_7

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(IF)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    const/16 v2, 0x10

    const/high16 v1, 0x3f40

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private static hash(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->setTable([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    :try_start_0
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v5

    :cond_2
    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 11

    if-nez p1, :cond_0

    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    :cond_0
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v9, v7

    new-array v5, v9, [I

    const/4 v4, 0x0

    :goto_0
    const/4 v9, 0x2

    if-ge v4, v9, :cond_7

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_3

    aget-object v9, v7, v3

    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    aget-object v9, v7, v3

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v5, v3

    add-int/2addr v6, v9

    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v2, 0x1

    :cond_1
    :goto_2
    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    :goto_3
    array-length v9, v7

    if-ge v3, v9, :cond_4

    aget-object v9, v7, v3

    iget v0, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    aget v9, v5, v3

    aget-object v10, v7, v3

    iget v10, v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_5

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_4
    array-length v9, v7

    if-ge v3, v9, :cond_8

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    :try_start_0
    array-length v9, v7

    if-ge v3, v9, :cond_9

    aget-object v9, v7, v3

    invoke-virtual {v9, p1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-eqz v9, :cond_a

    const/4 v2, 0x1

    :cond_9
    const/4 v3, 0x0

    :goto_6
    array-length v9, v7

    if-ge v3, v9, :cond_1

    aget-object v9, v7, v3

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catchall_0
    move-exception v9

    const/4 v3, 0x0

    :goto_7
    array-length v10, v7

    if-ge v3, v10, :cond_b

    aget-object v10, v7, v3

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    throw v9
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v5, v3

    new-array v1, v5, [I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_2

    aget-object v5, v3, v0

    iget v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    aget-object v5, v3, v0

    iget v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v5, v1, v0

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_3

    aget-object v5, v3, v0

    iget v5, v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v5, :cond_0

    aget v5, v1, v0

    aget-object v6, v3, v0

    iget v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-ne v5, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v2

    invoke-virtual {v2, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method final segmentFor(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    iget v1, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 11

    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    const-wide/16 v7, 0x0

    const-wide/16 v0, 0x0

    array-length v9, v6

    new-array v4, v9, [I

    const/4 v3, 0x0

    :goto_0
    const/4 v9, 0x2

    if-ge v3, v9, :cond_2

    const-wide/16 v0, 0x0

    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v9, v6

    if-ge v2, v9, :cond_0

    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    aput v9, v4, v2

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :goto_2
    array-length v9, v6

    if-ge v2, v9, :cond_1

    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v0, v9

    aget v9, v4, v2

    aget-object v10, v6, v2

    iget v10, v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    if-eq v9, v10, :cond_3

    const-wide/16 v0, -0x1

    :cond_1
    cmp-long v9, v0, v7

    if-nez v9, :cond_4

    :cond_2
    cmp-long v9, v0, v7

    if-eqz v9, :cond_7

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    :goto_3
    array-length v9, v6

    if-ge v2, v9, :cond_5

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_4
    array-length v9, v6

    if-ge v2, v9, :cond_6

    aget-object v9, v6, v2

    iget v9, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_5
    array-length v9, v6

    if-ge v2, v9, :cond_7

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v7, v9

    if-lez v9, :cond_8

    const v9, 0x7fffffff

    :goto_6
    return v9

    :cond_8
    long-to-int v9, v7

    goto :goto_6
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

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Values;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$Values;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

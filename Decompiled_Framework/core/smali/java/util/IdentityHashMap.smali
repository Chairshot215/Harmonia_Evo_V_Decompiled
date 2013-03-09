.class public Ljava/util/IdentityHashMap;
.super Ljava/util/AbstractMap;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,
        Ljava/util/IdentityHashMap$IdentityHashMapIterator;,
        Ljava/util/IdentityHashMap$IdentityHashMapEntry;
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
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SIZE:I = 0x15

.field private static final NULL_OBJECT:Ljava/lang/Object; = null

.field private static final loadFactor:I = 0x1d4c

.field private static final serialVersionUID:J = 0x71a2650133f2e980L


# instance fields
.field transient elementData:[Ljava/lang/Object;

.field transient modCount:I

.field size:I

.field transient threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x15

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput v0, p0, Ljava/util/IdentityHashMap;->modCount:I

    if-ltz p1, :cond_0

    iput v0, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v0, 0xb

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 1

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    return-object v0
.end method

.method private computeElementArraySize()I
    .locals 5

    iget v1, p0, Ljava/util/IdentityHashMap;->threshold:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1d4c

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v0, v1, 0x2

    if-gez v0, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method private computeMaxSize()V
    .locals 4

    iget-object v0, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    const-wide/16 v2, 0x1d4c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/IdentityHashMap;->threshold:I

    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4

    array-length v2, p2

    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x2

    rem-int v1, v3, v2

    :goto_0
    if-eq v0, v1, :cond_0

    aget-object v3, p2, v0

    if-eq v3, p1, :cond_0

    aget-object v3, p2, v0

    if-nez v3, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v3, v0, 0x2

    rem-int v0, v3, v2

    goto :goto_0
.end method

.method private getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v0, v2, p1

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    aget-object v1, v2, v3

    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v2, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    new-instance v2, Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;-><init>(Ljava/util/IdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getEntry(Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/IdentityHashMap$IdentityHashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0}, Ljava/util/IdentityHashMap;->getEntry(I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    div-int/lit8 v1, p2, 0x2

    rem-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getThreshold(I)I
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private massageValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private newElementArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Ljava/lang/Object;

    return-object v0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    const/16 v3, 0x15

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->getThreshold(I)I

    move-result v3

    iput v3, p0, Ljava/util/IdentityHashMap;->threshold:I

    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeElementArraySize()I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput v2, p0, Ljava/util/IdentityHashMap;->size:I

    return-void
.end method

.method private rehash()V
    .locals 8

    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    mul-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0, v4}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v5, v0

    if-eqz v2, :cond_1

    invoke-direct {p0, v2, v3}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    aput-object v2, v3, v1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iput-object v3, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/IdentityHashMap;->computeMaxSize()V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget v2, p0, Ljava/util/IdentityHashMap;->size:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/MapEntry;

    iget-object v2, v0, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, v0, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v1, 0x0

    iput v1, p0, Ljava/util/IdentityHashMap;->size:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/IdentityHashMap;->modCount:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/IdentityHashMap;

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, v2}, Ljava/util/IdentityHashMap;->newElementArray(I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
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

    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;-><init>(Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v2}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    iget-object v2, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    invoke-direct {p0, v1}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$1;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eq v4, v0, :cond_3

    iget v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget v4, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/IdentityHashMap;->size:I

    iget v5, p0, Ljava/util/IdentityHashMap;->threshold:I

    if-le v4, v5, :cond_2

    invoke-direct {p0}, Ljava/util/IdentityHashMap;->rehash()V

    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    :cond_2
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v0, v4, v2

    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v4, v5

    :cond_3
    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v3, v4, v5

    iget-object v4, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aput-object v1, v4, v5

    invoke-direct {p0, v3}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/IdentityHashMap;->putAllImpl(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/IdentityHashMap;->NULL_OBJECT:Ljava/lang/Object;

    :cond_0
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    invoke-direct {p0, p1, v10}, Ljava/util/IdentityHashMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v10, v10, v2

    if-eq v10, p1, :cond_1

    move-object v7, v9

    :goto_0
    return-object v7

    :cond_1
    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    aget-object v6, v10, v11

    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v3, v10

    :cond_2
    :goto_1
    add-int/lit8 v10, v4, 0x2

    rem-int v4, v10, v3

    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aget-object v5, v10, v4

    if-nez v5, :cond_3

    iget v7, p0, Ljava/util/IdentityHashMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->size:I

    iget v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/IdentityHashMap;->modCount:I

    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v9, v7, v2

    iget-object v7, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v8, v2, 0x1

    aput-object v9, v7, v8

    invoke-direct {p0, v6}, Ljava/util/IdentityHashMap;->massageValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_3
    invoke-direct {p0, v5, v3}, Ljava/util/IdentityHashMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    if-le v0, v2, :cond_5

    move v1, v8

    :goto_2
    if-ge v4, v2, :cond_7

    if-nez v1, :cond_4

    if-gt v0, v4, :cond_6

    :cond_4
    move v1, v8

    :goto_3
    if-nez v1, :cond_2

    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    aput-object v5, v10, v2

    iget-object v10, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v11, v2, 0x1

    iget-object v12, p0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    add-int/lit8 v13, v4, 0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    move v2, v4

    goto :goto_1

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    if-gt v0, v4, :cond_8

    move v1, v8

    :goto_4
    goto :goto_3

    :cond_8
    move v1, v7

    goto :goto_4
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/IdentityHashMap;->size:I

    return v0
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

    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/IdentityHashMap$2;-><init>(Ljava/util/IdentityHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method

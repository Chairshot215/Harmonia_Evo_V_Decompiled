.class public Ljava/util/WeakHashMap;
.super Ljava/util/AbstractMap;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/WeakHashMap$HashIterator;,
        Ljava/util/WeakHashMap$Entry;
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
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x10


# instance fields
.field elementCount:I

.field elementData:[Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final loadFactor:I

.field volatile modCount:I

.field private final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/16 v0, 0x1d4c

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const v0, 0x461c4000

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->loadFactor:I

    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void

    :cond_1
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
    invoke-direct {p0, v0}, Ljava/util/WeakHashMap;-><init>(I)V

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private computeMaxSize()V
    .locals 4

    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v0, v0

    int-to-long v0, v0

    iget v2, p0, Ljava/util/WeakHashMap;->loadFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/util/WeakHashMap;->threshold:I

    return-void
.end method

.method private static newEntryArray(I)[Ljava/util/WeakHashMap$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Ljava/util/WeakHashMap$Entry;

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

.method private rehash()V
    .locals 8

    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    mul-int/lit8 v3, v6, 0x2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/util/WeakHashMap;->newEntryArray(I)[Ljava/util/WeakHashMap$Entry;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v6, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v6, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    :goto_2
    iget-object v5, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aget-object v6, v4, v2

    iput-object v6, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v0, v4, v2

    move-object v0, v5

    goto :goto_1

    :cond_1
    iget v6, v0, Ljava/util/WeakHashMap$Entry;->hash:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    rem-int v2, v6, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iput-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    invoke-direct {p0}, Ljava/util/WeakHashMap;->computeMaxSize()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget-object v0, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap;->modCount:I

    :cond_0
    iget-object v0, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    if-eqz p1, :cond_4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    return v3

    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v4

    :cond_5
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    :cond_7
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

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

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    new-instance v0, Ljava/util/WeakHashMap$1;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$1;-><init>(Ljava/util/WeakHashMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    :goto_2
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v3, :cond_3

    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2
.end method

.method getEntry(Ljava/lang/Object;)Ljava/util/WeakHashMap$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    :goto_2
    if-eqz v0, :cond_4

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

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

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap$2;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$2;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method poll()V
    .locals 2

    :goto_0
    iget-object v1, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const v6, 0x7fffffff

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    and-int/2addr v4, v6

    iget-object v5, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v5, v5

    rem-int v1, v4, v5

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v4, v3

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v4, :cond_1

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_1
    if-nez v0, :cond_4

    iget v4, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->modCount:I

    iget v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget v5, p0, Ljava/util/WeakHashMap;->threshold:I

    if-le v4, v5, :cond_2

    invoke-direct {p0}, Ljava/util/WeakHashMap;->rehash()V

    if-nez p1, :cond_3

    move v1, v3

    :cond_2
    :goto_2
    new-instance v0, Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v3}, Ljava/util/WeakHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v3, v3, v1

    iput-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aput-object v0, v3, v1

    const/4 v2, 0x0

    :goto_3
    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    and-int/2addr v3, v6

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    goto :goto_2

    :cond_4
    iget-object v2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    goto :goto_3
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

    invoke-direct {p0, p1}, Ljava/util/WeakHashMap;->putAllImpl(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v2, v0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    :goto_1
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-nez v3, :cond_1

    move-object v2, v0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    if-nez v2, :cond_2

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    :goto_2
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    :goto_3
    return-object v3

    :cond_2
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3
.end method

.method removeEntry(Ljava/util/WeakHashMap$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v3, p1, Ljava/util/WeakHashMap$Entry;->hash:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iget-object v4, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v4, v4

    rem-int v1, v3, v4

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    aget-object v0, v3, v1

    :goto_0
    if-eqz v0, :cond_0

    if-ne p1, v0, :cond_2

    iget v3, p0, Ljava/util/WeakHashMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/WeakHashMap;->modCount:I

    if-nez v2, :cond_1

    iget-object v3, p0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget-object v4, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    aput-object v4, v3, v1

    :goto_1
    iget v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/WeakHashMap;->elementCount:I

    :cond_0
    return-void

    :cond_1
    iget-object v3, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v3, v2, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_1

    :cond_2
    move-object v2, v0

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    iget v0, p0, Ljava/util/WeakHashMap;->elementCount:I

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

    invoke-virtual {p0}, Ljava/util/WeakHashMap;->poll()V

    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap$3;

    invoke-direct {v0, p0}, Ljava/util/WeakHashMap$3;-><init>(Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method

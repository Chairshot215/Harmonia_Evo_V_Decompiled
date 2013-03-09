.class public Ljava/util/HashMap;
.super Ljava/util/AbstractMap;
.source "HashMap.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/HashMap$1;,
        Ljava/util/HashMap$EntrySet;,
        Ljava/util/HashMap$Values;,
        Ljava/util/HashMap$KeySet;,
        Ljava/util/HashMap$EntryIterator;,
        Ljava/util/HashMap$ValueIterator;,
        Ljava/util/HashMap$KeyIterator;,
        Ljava/util/HashMap$HashIterator;,
        Ljava/util/HashMap$HashMapEntry;
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
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field transient entryForNullKey:Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I

.field transient table:[Ljava/util/HashMap$HashMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient threshold:I

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/HashMap$HashMapEntry;

    sput-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/HashMap;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    sget-object v0, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/HashMap;->threshold:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Ljava/util/HashMap;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/HashMap$HashMapEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    const/4 p1, 0x4

    :goto_1
    invoke-direct {p0, p1}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x4000

    if-le p1, v1, :cond_3

    const/high16 p1, 0x4000

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_1
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static capacityForInitSize(I)I
    .locals 2

    shr-int/lit8 v1, p0, 0x1

    add-int v0, v1, p0

    const/high16 v1, -0x4000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4000

    goto :goto_0
.end method

.method private constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-nez v1, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v7, p2, v6, v7}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    :goto_0
    return-void

    :cond_0
    iput-object p2, v1, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v3

    iget-object v5, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v4, v3, v6

    aget-object v2, v5, v4

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v3, :cond_2

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, v3, v2}, Ljava/util/HashMap;->constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    aput-object v6, v5, v4

    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    goto :goto_0
.end method

.method private containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v0, :cond_0

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v3, v2

    :goto_1
    if-eqz v0, :cond_0

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private doubleCapacity()[Ljava/util/HashMap$HashMapEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v8, v9

    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_1

    move-object v6, v9

    :cond_0
    return-object v6

    :cond_1
    mul-int/lit8 v5, v8, 0x2

    invoke-direct {p0, v5}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_0

    aget-object v1, v9, v3

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v10, v1, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v2, v10, v8

    const/4 v0, 0x0

    or-int v10, v3, v2

    aput-object v1, v6, v10

    iget-object v4, v1, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    :goto_2
    if-eqz v4, :cond_6

    iget v10, v4, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v7, v10, v8

    if-eq v7, v2, :cond_4

    if-nez v0, :cond_5

    or-int v10, v3, v7

    aput-object v4, v6, v10

    :goto_3
    move-object v0, v1

    move v2, v7

    :cond_4
    move-object v1, v4

    iget-object v4, v4, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    :cond_5
    iput-object v4, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method private ensureCapacity(I)V
    .locals 11

    invoke-static {p1}, Ljava/util/HashMap;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v2

    iget-object v9, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v7, v9

    if-gt v2, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_2

    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    move-result-object v6

    iget v10, p0, Ljava/util/HashMap;->size:I

    if-eqz v10, :cond_0

    add-int/lit8 v4, v2, -0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v0, v9, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v8, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iget v10, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    and-int v3, v10, v4

    aget-object v5, v6, v3

    aput-object v0, v6, v3

    iput-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    move-object v0, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private makeTable(I)[Ljava/util/HashMap$HashMapEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p1, [Ljava/util/HashMap$HashMapEntry;

    check-cast v0, [Ljava/util/HashMap$HashMapEntry;

    iput-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/HashMap;->threshold:I

    return-object v0
.end method

.method private putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->addNewEntryForNullKey(Ljava/lang/Object;)V

    iget v2, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->size:I

    iget v2, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/HashMap;->modCount:I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iput-object p1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-direct {p0, v0}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    if-gez v3, :cond_3

    new-instance v5, Ljava/io/InvalidObjectException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/high16 v5, 0x4000

    if-le v0, v5, :cond_2

    const/high16 v0, 0x4000

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/HashMap;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->init()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v0, :cond_0

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_6

    iget v7, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v7, v1, :cond_5

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-static {p2, v7}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v6, v4, v2

    :goto_2
    iget v6, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/HashMap;->modCount:I

    iget v6, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    goto :goto_0

    :cond_4
    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v6, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    :cond_5
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_6
    move v5, v6

    goto :goto_0
.end method

.method private removeNullKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget v1, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/HashMap;->modCount:I

    iget v1, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method private static roundUpToPowerOfTwo(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private static secondaryHash(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v3, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)V"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    new-instance v1, Ljava/util/HashMap$HashMapEntry;

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    aget-object v2, v2, p4

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    aput-object v1, v0, p4

    return-void
.end method

.method addNewEntryForNullKey(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v2, p1, v1, v2}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    iput-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget v0, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap;->modCount:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/HashMap;->size:I

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;->makeTable(I)[Ljava/util/HashMap$HashMapEntry;

    iput-object v3, v1, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/HashMap;->size:I

    iput-object v3, v1, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    iput-object v3, v1, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    iput-object v3, v1, Ljava/util/HashMap;->values:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/util/HashMap;->init()V

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->constructorPutAll(Ljava/util/Map;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method constructorNewEntry(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)Ljava/util/HashMap$HashMapEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$HashMapEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/util/HashMap$HashMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/HashMap$HashMapEntry;)V

    return-object v0
.end method

.method final constructorPutAll(Ljava/util/Map;)V
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

    invoke-direct {p0, v2, v3}, Ljava/util/HashMap;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_2

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v6, v2, 0x14

    ushr-int/lit8 v7, v2, 0xc

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    ushr-int/lit8 v6, v2, 0x7

    ushr-int/lit8 v7, v2, 0x4

    xor-int/2addr v6, v7

    xor-int/2addr v2, v6

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v3, v6

    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget v6, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v6, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_3
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v2, v3

    if-nez p1, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-nez v6, :cond_1

    :cond_0
    :goto_2
    return v4

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_4

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    if-eqz v6, :cond_0

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    aget-object v0, v3, v1

    :goto_4
    if-eqz v0, :cond_6

    iget-object v6, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-eqz v6, :cond_8

    iget-object v6, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    iget-object v6, v6, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_8
    move v4, v5

    goto :goto_2
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

    iget-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntrySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Ljava/util/HashMap;->entryForNullKey:Ljava/util/HashMap$HashMapEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v5, v2, 0x14

    ushr-int/lit8 v6, v2, 0xc

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    ushr-int/lit8 v5, v2, 0x7

    ushr-int/lit8 v6, v2, 0x4

    xor-int/2addr v5, v6

    xor-int/2addr v2, v5

    iget-object v3, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v2

    aget-object v0, v3, v5

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    if-eq v1, p1, :cond_3

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v4, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1
.end method

.method init()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/HashMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeySet;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method newEntryIterator()Ljava/util/Iterator;
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

    new-instance v0, Ljava/util/HashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$EntryIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$KeyIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$ValueIterator;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    return-object v0
.end method

.method postRemove(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method preModify(Ljava/util/HashMap$HashMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap$HashMapEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Ljava/util/HashMap;->putValueForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    :goto_1
    if-eqz v0, :cond_2

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->preModify(Ljava/util/HashMap$HashMapEntry;)V

    iget-object v3, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/HashMap;->size:I

    iget v6, p0, Ljava/util/HashMap;->threshold:I

    if-le v5, v6, :cond_3

    invoke-direct {p0}, Ljava/util/HashMap;->doubleCapacity()[Ljava/util/HashMap$HashMapEntry;

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    :cond_3
    invoke-virtual {p0, p1, p2, v1, v2}, Ljava/util/HashMap;->addNewEntry(Ljava/lang/Object;Ljava/lang/Object;II)V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/HashMap;->ensureCapacity(I)V

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-direct {p0}, Ljava/util/HashMap;->removeNullKey()Ljava/lang/Object;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/HashMap;->secondaryHash(I)I

    move-result v1

    iget-object v4, p0, Ljava/util/HashMap;->table:[Ljava/util/HashMap$HashMapEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_1
    if-eqz v0, :cond_3

    iget v5, v0, Ljava/util/HashMap$HashMapEntry;->hash:I

    if-ne v5, v1, :cond_2

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v3, :cond_1

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    aput-object v5, v4, v2

    :goto_2
    iget v5, p0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/HashMap;->modCount:I

    iget v5, p0, Ljava/util/HashMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/HashMap;->size:I

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->postRemove(Ljava/util/HashMap$HashMapEntry;)V

    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v5, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    iput-object v5, v3, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_2

    :cond_2
    move-object v3, v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->next:Ljava/util/HashMap$HashMapEntry;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/HashMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/HashMap$Values;-><init>(Ljava/util/HashMap;Ljava/util/HashMap$1;)V

    iput-object v0, p0, Ljava/util/HashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method

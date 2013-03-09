.class public Ljava/util/Hashtable;
.super Ljava/util/Dictionary;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Hashtable$1;,
        Ljava/util/Hashtable$EntrySet;,
        Ljava/util/Hashtable$Values;,
        Ljava/util/Hashtable$KeySet;,
        Ljava/util/Hashtable$ValueEnumeration;,
        Ljava/util/Hashtable$KeyEnumeration;,
        Ljava/util/Hashtable$EntryIterator;,
        Ljava/util/Hashtable$ValueIterator;,
        Ljava/util/Hashtable$KeyIterator;,
        Ljava/util/Hashtable$HashIterator;,
        Ljava/util/Hashtable$HashtableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Dictionary",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final CHARS_PER_ENTRY:I = 0xf

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final EMPTY_TABLE:[Ljava/util/Map$Entry; = null

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MINIMUM_CAPACITY:I = 0x4

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x13bb0f25214ae4b8L


# instance fields
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

.field private transient modCount:I

.field private transient size:I

.field private transient table:[Ljava/util/Hashtable$HashtableEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Hashtable$HashtableEntry",
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

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/util/Hashtable$HashtableEntry;

    sput-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    new-array v0, v1, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "threshold"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "loadFactor"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Hashtable;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

    sget-object v0, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Hashtable;->threshold:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/util/Dictionary;-><init>()V

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

    sget-object v1, Ljava/util/Hashtable;->EMPTY_TABLE:[Ljava/util/Map$Entry;

    check-cast v1, [Ljava/util/Hashtable$HashtableEntry;

    move-object v0, v1

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v1, -0x1

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x4

    if-ge p1, v1, :cond_2

    const/4 p1, 0x4

    :goto_1
    invoke-direct {p0, p1}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_2
    const/high16 v1, 0x4000

    if-le p1, v1, :cond_3

    const/high16 p1, 0x4000

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result p1

    goto :goto_1
.end method

.method public constructor <init>(IF)V
    .locals 3

    invoke-direct {p0, p1}, Ljava/util/Hashtable;-><init>(I)V

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

    invoke-static {v0}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/Hashtable;-><init>(I)V

    invoke-direct {p0, p1}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Ljava/util/Hashtable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/Hashtable;->removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/util/Hashtable;)I
    .locals 1

    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    return v0
.end method

.method static synthetic access$600(Ljava/util/Hashtable;)[Ljava/util/Hashtable$HashtableEntry;
    .locals 1

    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/Hashtable;)I
    .locals 1

    iget v0, p0, Ljava/util/Hashtable;->size:I

    return v0
.end method

.method private static capacityForInitSize(I)I
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v3, v2, v5

    aget-object v1, v4, v3

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v2, :cond_1

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v5, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v5, v4, v3

    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    goto :goto_1
.end method

.method private constructorPutAll(Ljava/util/Map;)V
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

    invoke-direct {p0, v2, v3}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized containsMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int v2, v1, v4

    aget-object v0, v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    :goto_1
    monitor-exit p0

    return v4

    :cond_0
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v8, v9

    const/high16 v10, 0x4000

    if-ne v8, v10, :cond_1

    move-object v6, v9

    :cond_0
    return-object v6

    :cond_1
    mul-int/lit8 v5, v8, 0x2

    invoke-direct {p0, v5}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    iget v10, p0, Ljava/util/Hashtable;->size:I

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
    iget v10, v1, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v2, v10, v8

    const/4 v0, 0x0

    or-int v10, v3, v2

    aput-object v1, v6, v10

    iget-object v4, v1, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    :goto_2
    if-eqz v4, :cond_6

    iget v10, v4, Ljava/util/Hashtable$HashtableEntry;->hash:I

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

    iget-object v4, v4, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_2

    :cond_5
    iput-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    iput-object v10, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_1
.end method

.method private ensureCapacity(I)V
    .locals 11

    invoke-static {p1}, Ljava/util/Hashtable;->capacityForInitSize(I)I

    move-result v10

    invoke-static {v10}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v2

    iget-object v9, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v7, v9

    if-gt v2, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    mul-int/lit8 v10, v7, 0x2

    if-ne v2, v10, :cond_2

    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v6

    iget v10, p0, Ljava/util/Hashtable;->size:I

    if-eqz v10, :cond_0

    add-int/lit8 v4, v2, -0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v0, v9, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v8, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iget v10, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    and-int v3, v10, v4

    aget-object v5, v6, v3

    aput-object v0, v6, v3

    iput-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    move-object v0, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private makeTable(I)[Ljava/util/Hashtable$HashtableEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljava/util/Hashtable$HashtableEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p1, [Ljava/util/Hashtable$HashtableEntry;

    check-cast v0, [Ljava/util/Hashtable$HashtableEntry;

    iput-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/Hashtable;->threshold:I

    return-object v0
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
    invoke-direct {p0, v0}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

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
    invoke-static {v0}, Ljava/util/Hashtable;->roundUpToPowerOfTwo(I)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Ljava/util/Hashtable;->constructorPut(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private declared-synchronized removeMapping(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_0

    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v1, :cond_3

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return v5

    :cond_1
    if-nez v3, :cond_2

    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    :goto_2
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_3
    move-object v3, v0

    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v5, 0x3f40

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v1

    const-string v3, "threshold"

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v3, "loadFactor"

    const/high16 v4, 0x3f40

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;F)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v3, p0, Ljava/util/Hashtable;->size:I

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/Hashtable;->modCount:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/Hashtable;->makeTable(I)[Ljava/util/Hashtable$HashtableEntry;

    const/4 v2, 0x0

    iput v2, v1, Ljava/util/Hashtable;->size:I

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->keySet:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;

    const/4 v2, 0x0

    iput-object v2, v1, Ljava/util/Hashtable;->values:Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/Hashtable;->constructorPutAll(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    monitor-exit p0

    return v4

    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v2, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, v3, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public declared-synchronized elements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable$ValueEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$ValueEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entrySet()Ljava/util/Set;
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

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$EntrySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->entrySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v2, 0x4

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    iget-object v3, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v2

    aget-object v0, v3, v4

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget v4, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v4, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_1
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized hashCode()I
    .locals 8

    const/4 v6, 0x0

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq v2, p0, :cond_0

    if-eq v4, p0, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    move v7, v5

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    :goto_2
    xor-int/2addr v5, v7

    add-int/2addr v3, v5

    goto :goto_0

    :cond_1
    move v7, v6

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeySet;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keys()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/Hashtable$KeyEnumeration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$KeyEnumeration;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_0

    :try_start_0
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v2

    iget-object v5, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    aget-object v1, v5, v3

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v6, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v6, v2, :cond_1

    iget-object v6, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v4, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;

    iput-object p2, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    goto :goto_0

    :cond_2
    iget v6, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/Hashtable;->modCount:I

    iget v6, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/util/Hashtable;->size:I

    iget v7, p0, Ljava/util/Hashtable;->threshold:I

    if-le v6, v7, :cond_3

    invoke-virtual {p0}, Ljava/util/Hashtable;->rehash()V

    invoke-direct {p0}, Ljava/util/Hashtable;->doubleCapacity()[Ljava/util/Hashtable$HashtableEntry;

    move-result-object v5

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v3, v2, v6

    aget-object v1, v5, v3

    :cond_3
    new-instance v6, Ljava/util/Hashtable$HashtableEntry;

    invoke-direct {v6, p1, p2, v2, v1}, Ljava/util/Hashtable$HashtableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/util/Hashtable$HashtableEntry;)V

    aput-object v6, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    goto :goto_1
.end method

.method public declared-synchronized putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/Hashtable;->ensureCapacity(I)V

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

    invoke-virtual {p0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    return-void
.end method

.method protected rehash()V
    .locals 0

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/util/Hashtable;->secondaryHash(I)I

    move-result v1

    iget-object v4, p0, Ljava/util/Hashtable;->table:[Ljava/util/Hashtable$HashtableEntry;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int v2, v1, v5

    aget-object v0, v4, v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v5, v0, Ljava/util/Hashtable$HashtableEntry;->hash:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    aput-object v5, v4, v2

    :goto_1
    iget v5, p0, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/Hashtable;->modCount:I

    iget v5, p0, Ljava/util/Hashtable;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/util/Hashtable;->size:I

    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->value:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v5

    :cond_0
    :try_start_1
    iget-object v5, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;

    iput-object v5, v3, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    move-object v3, v0

    :try_start_2
    iget-object v0, v0, Ljava/util/Hashtable$HashtableEntry;->next:Ljava/util/Hashtable$HashtableEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/util/Hashtable;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget v6, p0, Ljava/util/Hashtable;->size:I

    mul-int/lit8 v6, v6, 0xf

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x7b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_1

    const-string v6, "(this Map)"

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_2

    const-string v6, "(this Map)"

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const/16 v6, 0x7d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/Hashtable$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/Hashtable$Values;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable$1;)V

    iput-object v0, p0, Ljava/util/Hashtable;->values:Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

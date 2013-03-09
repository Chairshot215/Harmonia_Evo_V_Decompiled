.class public Ljava/util/EnumMap;
.super Ljava/util/AbstractMap;
.source "EnumMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/EnumMap$EnumMapEntrySet;,
        Ljava/util/EnumMap$EnumMapEntryIterator;,
        Ljava/util/EnumMap$EnumMapValueCollection;,
        Ljava/util/EnumMap$EnumMapKeySet;,
        Ljava/util/EnumMap$EnumMapIterator;,
        Ljava/util/EnumMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum",
        "<TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65d7df7be907ca1L


# instance fields
.field private transient entrySet:Ljava/util/EnumMap$EnumMapEntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap$EnumMapEntrySet",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient enumSize:I

.field transient hasMapping:[Z

.field private keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient keys:[Ljava/lang/Enum;

.field private transient mappingsCount:I

.field transient values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    instance-of v3, p1, Ljava/util/EnumMap;

    if-eqz v3, :cond_0

    check-cast p1, Ljava/util/EnumMap;

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    :goto_1
    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    goto :goto_1
.end method

.method private initialization(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;)V"
        }
    .end annotation

    iput-object p1, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Enum;->getSharedConstants(Ljava/lang/Class;)[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    array-length v0, v0

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget v0, p0, Ljava/util/EnumMap;->enumSize:I

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    return-void
.end method

.method private initialization(Ljava/util/EnumMap;)V
    .locals 1

    iget-object v0, p1, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iput-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v0, p1, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iput-object v0, p0, Ljava/util/EnumMap;->keys:[Ljava/lang/Enum;

    iget v0, p1, Ljava/util/EnumMap;->enumSize:I

    iput v0, p0, Ljava/util/EnumMap;->enumSize:I

    iget-object v0, p1, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget-object v0, p1, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-virtual {v0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    iget v0, p1, Ljava/util/EnumMap;->mappingsCount:I

    iput v0, p0, Ljava/util/EnumMap;->mappingsCount:I

    return-void
.end method

.method private isValidKeyType(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putAllImpl(Ljava/util/Map;)V
    .locals 4

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

    check-cast v2, Ljava/lang/Enum;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    :cond_1
    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object p2, v2, v0

    return-object v1
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

    iget-object v4, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    invoke-direct {p0, v4}, Ljava/util/EnumMap;->initialization(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    move v2, v0

    :goto_0
    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
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

    iget v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

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

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    iput v2, p0, Ljava/util/EnumMap;->mappingsCount:I

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/util/EnumMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<TK;TV;>;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumMap;

    invoke-direct {v1, p0}, Ljava/util/EnumMap;->initialization(Ljava/util/EnumMap;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Ljava/util/EnumMap;->enumSize:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
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

    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/EnumMap$EnumMapEntrySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapEntrySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    :cond_0
    iget-object v0, p0, Ljava/util/EnumMap;->entrySet:Ljava/util/EnumMap$EnumMapEntrySet;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/util/EnumMap;

    if-nez v3, :cond_2

    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/util/EnumMap;

    iget-object v3, p0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    iget-object v4, v0, Ljava/util/EnumMap;->keyType:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/EnumMap;->size()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    iget-object v4, v0, Ljava/util/EnumMap;->hasMapping:[Z

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    iget-object v4, v0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

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

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

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

    new-instance v0, Ljava/util/EnumMap$EnumMapKeySet;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapKeySet;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/util/EnumMap;->putImpl(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->putAllImpl(Ljava/util/Map;)V

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

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/util/EnumMap;->isValidKeyType(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/util/EnumMap;->hasMapping:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    iget v3, p0, Ljava/util/EnumMap;->mappingsCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljava/util/EnumMap;->mappingsCount:I

    :cond_1
    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aget-object v1, v3, v0

    iget-object v3, p0, Ljava/util/EnumMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/EnumMap;->mappingsCount:I

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

    new-instance v0, Ljava/util/EnumMap$EnumMapValueCollection;

    invoke-direct {v0, p0}, Ljava/util/EnumMap$EnumMapValueCollection;-><init>(Ljava/util/EnumMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method

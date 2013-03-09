.class public Ljava/util/ArrayList;
.super Ljava/util/AbstractList;
.source "ArrayList.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ArrayList$1;,
        Ljava/util/ArrayList$ArrayListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc

.field private static final serialVersionUID:J = 0x7881d21d99c7619dL


# instance fields
.field transient array:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :goto_0
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    return-void

    :cond_1
    new-array v0, p1, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, [Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    array-length v2, v0

    new-array v1, v2, [Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v0

    iput v2, p0, Ljava/util/ArrayList;->size:I

    return-void
.end method

.method private static newCapacity(I)I
    .locals 2

    const/4 v1, 0x6

    if-ge p0, v1, :cond_0

    const/16 v0, 0xc

    :goto_0
    add-int v1, p0, v0

    return v1

    :cond_0
    shr-int/lit8 v0, p0, 0x1

    goto :goto_0
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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/io/InvalidObjectException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capacity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez v0, :cond_1

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    :goto_0
    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v0, [Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method static throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;
    .locals 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/util/ArrayList;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    :cond_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    sub-int v4, v2, p1

    invoke-static {v0, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aput-object p2, v0, p1

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_2
    invoke-static {v2}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p1, 0x1

    sub-int v4, v2, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    array-length v3, v0

    if-ne v2, v3, :cond_0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    const/16 v3, 0xc

    :goto_0
    add-int/2addr v3, v2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    :cond_0
    aput-object p1, v0, v2

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v3, 0x1

    return v3

    :cond_1
    shr-int/lit8 v3, v2, 0x1

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    iget v6, p0, Ljava/util/ArrayList;->size:I

    if-gt p1, v6, :cond_0

    if-gez p1, :cond_1

    :cond_0
    invoke-static {p1, v6}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_2

    :goto_0
    return v7

    :cond_2
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    add-int v5, v6, v4

    array-length v8, v0

    if-gt v5, v8, :cond_3

    add-int v8, p1, v4

    sub-int v9, v6, p1

    invoke-static {v0, p1, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-static {v3, v7, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Ljava/util/ArrayList;->size:I

    iget v7, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, p1, v4

    sub-int v9, v6, p1

    invoke-static {v0, p1, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_0

    :goto_0
    return v7

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v6, p0, Ljava/util/ArrayList;->size:I

    add-int v5, v6, v4

    array-length v8, v0

    if-le v5, v8, :cond_1

    add-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Ljava/util/ArrayList;->newCapacity(I)I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    :cond_1
    invoke-static {v3, v7, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Ljava/util/ArrayList;->size:I

    iget v7, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/ArrayList;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Ljava/util/ArrayList;->size:I

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, v1, Ljava/util/ArrayList;->array:[Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v2, p1, :cond_0

    new-array v1, p1, [Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    instance-of v10, p1, Ljava/util/List;

    if-nez v10, :cond_2

    move v8, v9

    goto :goto_0

    :cond_2
    move-object v7, p1

    check-cast v7, Ljava/util/List;

    iget v6, p0, Ljava/util/ArrayList;->size:I

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eq v10, v6, :cond_3

    move v8, v9

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    instance-of v10, v7, Ljava/util/RandomAccess;

    if-eqz v10, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_4
    move v8, v9

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v2, v0, v4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v2, :cond_9

    if-eqz v1, :cond_a

    :cond_8
    move v8, v9

    goto :goto_0

    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v0}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p0, Ljava/util/ArrayList;->size:I

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    mul-int/lit8 v6, v2, 0x1f

    if-nez v1, :cond_0

    const/4 v5, 0x0

    :goto_1
    add-int v2, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1

    :cond_1
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList$ArrayListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/ArrayList$ArrayListIterator;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList$1;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    if-eqz p1, :cond_1

    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Ljava/util/ArrayList;->size:I

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_3

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_0

    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    :cond_0
    aget-object v1, v0, p1

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v4, v2, p1

    invoke-static {v0, v3, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    aput-object v3, v0, v2

    iput v2, p0, Ljava/util/ArrayList;->size:I

    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v2, v1

    invoke-static {v0, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, v0, v2

    iput v2, p0, Ljava/util/ArrayList;->size:I

    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    if-nez v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    sub-int v5, v2, v1

    invoke-static {v0, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, v0, v2

    iput v2, p0, Ljava/util/ArrayList;->size:I

    iget v4, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected removeRange(II)V
    .locals 6

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_1

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " >= size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-le p2, v2, :cond_2

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Ljava/util/ArrayList;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    if-le p1, p2, :cond_3

    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fromIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > toIndex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    sub-int v3, v2, p2

    invoke-static {v0, p2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, p2, p1

    sub-int v3, v2, v1

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    sub-int v3, v2, v1

    iput v3, p0, Ljava/util/ArrayList;->size:I

    iget v3, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/AbstractList;->modCount:I

    goto/16 :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    iget-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/ArrayList;->size:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Ljava/util/ArrayList;->size:I

    invoke-static {p1, v2}, Ljava/util/ArrayList;->throwIndexOutOfBoundsException(II)Ljava/lang/IndexOutOfBoundsException;

    :cond_0
    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ljava/util/ArrayList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    array-length v2, p1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    if-le v2, v1, :cond_1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_1
    return-object p1
.end method

.method public trimToSize()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/util/ArrayList;->size:I

    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    :goto_1
    iget v2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList;->modCount:I

    goto :goto_0

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljava/util/ArrayList;->array:[Ljava/lang/Object;

    goto :goto_1
.end method

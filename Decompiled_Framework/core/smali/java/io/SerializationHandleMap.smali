.class final Ljava/io/SerializationHandleMap;
.super Ljava/lang/Object;
.source "SerializationHandleMap.java"


# static fields
.field private static final LOAD_FACTOR:I = 0x1d4c


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private threshold:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Ljava/io/SerializationHandleMap;->size:I

    const/16 v1, 0x15

    iput v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    iget v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2710

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x1d4c

    div-long/2addr v1, v3

    long-to-int v0, v1

    invoke-direct {p0, v0}, Ljava/io/SerializationHandleMap;->resizeArrays(I)V

    return-void
.end method

.method private findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4

    array-length v2, p2

    invoke-direct {p0, p1, v2}, Ljava/io/SerializationHandleMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

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
    add-int/lit8 v3, v0, 0x1

    rem-int v0, v3, v2

    goto :goto_0
.end method

.method private getModuloHash(Ljava/lang/Object;I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p2

    return v0
.end method

.method private rehash()V
    .locals 5

    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {p0, v0}, Ljava/io/SerializationHandleMap;->resizeArrays(I)V

    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1d4c

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Ljava/io/SerializationHandleMap;->threshold:I

    return-void
.end method

.method private resizeArrays(I)V
    .locals 7

    iget-object v3, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    new-array v6, p1, [Ljava/lang/Object;

    iput-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    new-array v6, p1, [I

    iput-object v6, p0, Ljava/io/SerializationHandleMap;->values:[I

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_0

    aget-object v2, v3, v0

    aget v5, v4, v0

    iget-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v2, v6}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    iget-object v6, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aput-object v2, v6, v1

    iget-object v6, p0, Ljava/io/SerializationHandleMap;->values:[I

    aput v5, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)I
    .locals 2

    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Ljava/io/SerializationHandleMap;->values:[I

    aget v1, v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ljava/io/SerializationHandleMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;I)I
    .locals 6

    move-object v0, p1

    move v1, p2

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-eq v4, v0, :cond_1

    iget v4, p0, Ljava/io/SerializationHandleMap;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/SerializationHandleMap;->size:I

    iget v5, p0, Ljava/io/SerializationHandleMap;->threshold:I

    if-le v4, v5, :cond_0

    invoke-direct {p0}, Ljava/io/SerializationHandleMap;->rehash()V

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v0, v4}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    :cond_0
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aput-object v0, v4, v2

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    const/4 v5, -0x1

    aput v5, v4, v2

    :cond_1
    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    aget v3, v4, v2

    iget-object v4, p0, Ljava/io/SerializationHandleMap;->values:[I

    aput v1, v4, v2

    return v3
.end method

.method public remove(Ljava/lang/Object;)I
    .locals 12

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    invoke-direct {p0, p1, v10}, Ljava/io/SerializationHandleMap;->findIndex(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v4

    move v2, v4

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v2

    if-eq v10, p1, :cond_0

    move v6, v9

    :goto_0
    return v6

    :cond_0
    iget-object v10, p0, Ljava/io/SerializationHandleMap;->values:[I

    aget v6, v10, v2

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    array-length v3, v10

    :cond_1
    :goto_1
    add-int/lit8 v10, v4, 0x2

    rem-int v4, v10, v3

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aget-object v5, v10, v4

    if-nez v5, :cond_2

    iget v7, p0, Ljava/io/SerializationHandleMap;->size:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Ljava/io/SerializationHandleMap;->size:I

    iget-object v7, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v8, v7, v2

    iget-object v7, p0, Ljava/io/SerializationHandleMap;->values:[I

    aput v9, v7, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v5, v3}, Ljava/io/SerializationHandleMap;->getModuloHash(Ljava/lang/Object;I)I

    move-result v0

    if-le v0, v2, :cond_4

    move v1, v8

    :goto_2
    if-ge v4, v2, :cond_6

    if-nez v1, :cond_3

    if-gt v0, v4, :cond_5

    :cond_3
    move v1, v8

    :goto_3
    if-nez v1, :cond_1

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->keys:[Ljava/lang/Object;

    aput-object v5, v10, v2

    iget-object v10, p0, Ljava/io/SerializationHandleMap;->values:[I

    iget-object v11, p0, Ljava/io/SerializationHandleMap;->values:[I

    aget v11, v11, v4

    aput v11, v10, v2

    move v2, v4

    goto :goto_1

    :cond_4
    move v1, v7

    goto :goto_2

    :cond_5
    move v1, v7

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    if-gt v0, v4, :cond_7

    move v1, v8

    :goto_4
    goto :goto_3

    :cond_7
    move v1, v7

    goto :goto_4
.end method

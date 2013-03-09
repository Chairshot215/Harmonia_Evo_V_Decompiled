.class public Lorg/apache/xml/utils/SuballocatedIntVector;
.super Ljava/lang/Object;
.source "SuballocatedIntVector.java"


# static fields
.field protected static final NUMBLOCKS_DEFAULT:I = 0x20


# instance fields
.field protected m_MASK:I

.field protected m_SHIFT:I

.field protected m_blocksize:I

.field protected m_buildCache:[I

.field protected m_buildCacheStartIndex:I

.field protected m_firstFree:I

.field protected m_map:[[I

.field protected m_map0:[I

.field protected m_numblocks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    :goto_0
    ushr-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    iput p2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    new-array v0, p2, [[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    iput v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method private addElements(I)V
    .locals 6

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int v3, v4, p1

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-le v3, v4, :cond_0

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v4, v5

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v4, p1

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, v4, v5

    add-int/lit8 v0, v1, 0x1

    :goto_0
    if-gt v0, v2, :cond_0

    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v5, v5, [I

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method

.method private addElements(II)V
    .locals 12

    const/4 v11, 0x0

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v9, p2

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v9, v10, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_5

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    aput p1, v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v4, v9, v10

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v7, v9, v10

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/2addr v9, p2

    iput v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :goto_1
    if-lez p2, :cond_5

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v9, v9

    if-lt v4, v9, :cond_1

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v6, v4, v9

    new-array v5, v6, [[I

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v10, v10

    invoke-static {v9, v11, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    :cond_1
    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v9, v4

    if-nez v0, :cond_2

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v10, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v10, [I

    aput-object v0, v9, v4

    :cond_2
    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v9, v7

    if-ge v9, p2, :cond_3

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int v1, v9, v7

    :goto_2
    sub-int/2addr p2, v1

    move v2, v1

    move v8, v7

    :goto_3
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_4

    add-int/lit8 v7, v8, 0x1

    aput p1, v0, v8

    move v2, v1

    move v8, v7

    goto :goto_3

    :cond_3
    move v1, p2

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method

.method private contains(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private insertElementAt(II)V
    .locals 11

    const/4 v10, 0x0

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ne p2, v8, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/SuballocatedIntVector;->addElement(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-le p2, v8, :cond_4

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p2, v8

    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v8, v8

    if-lt v2, v8, :cond_2

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v5, v2, v8

    new-array v4, v5, [[I

    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v9, v9

    invoke-static {v8, v10, v4, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    :cond_2
    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v8, v2

    if-nez v0, :cond_3

    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v9, [I

    aput-object v0, v8, v2

    :cond_3
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v6, p2, v8

    aput p1, v0, v6

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_0

    :cond_4
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p2, v8

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v8, v9

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v6, p2, v8

    :goto_1
    if-gt v2, v3, :cond_0

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v8, v6

    add-int/lit8 v1, v8, -0x1

    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v8, v2

    if-nez v0, :cond_5

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v9, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v9, [I

    aput-object v0, v8, v2

    :goto_2
    aput p1, v0, v6

    move p1, v7

    const/4 v6, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v8, v8, -0x1

    aget v7, v0, v8

    add-int/lit8 v8, v6, 0x1

    invoke-static {v0, v6, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method private lastIndexOf(I)I
    .locals 6

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v1, v4, v5

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, v4, v5

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v4, v2

    if-eqz v0, :cond_1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    iget v4, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_2
    return v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_2
.end method

.method private removeElement(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->removeElementAt(I)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeElementAt(I)V
    .locals 9

    const/4 v7, 0x0

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-ge p1, v6, :cond_4

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v2, p1, v6

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v6, v8

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v5, p1, v6

    :goto_0
    if-gt v2, v3, :cond_4

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    sub-int/2addr v6, v5

    add-int/lit8 v1, v6, -0x1

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v6, v2

    if-nez v0, :cond_1

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v8, [I

    aput-object v0, v6, v2

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    add-int/lit8 v8, v2, 0x1

    aget-object v4, v6, v8

    if-eqz v4, :cond_0

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v8, v6, -0x1

    if-eqz v4, :cond_2

    aget v6, v4, v7

    :goto_2
    aput v6, v0, v8

    :cond_0
    :goto_3
    const/4 v5, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-static {v0, v6, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    add-int/lit8 v6, v6, -0x1

    aput v7, v0, v6

    goto :goto_3

    :cond_4
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 9

    const/4 v8, 0x0

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    sub-int v2, v6, v7

    if-ltz v2, :cond_0

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    aput p1, v6, v2

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :goto_0
    return-void

    :cond_0
    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, v6, v7

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v5, v6, v7

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v6, v6

    if-lt v1, v6, :cond_1

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v4, v1, v6

    new-array v3, v4, [[I

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v7, v7

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    :cond_1
    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v6, v1

    if-nez v0, :cond_2

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v7, [I

    aput-object v0, v6, v1

    :cond_2
    aput p1, v0, v5

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    sub-int/2addr v6, v5

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    goto :goto_0
.end method

.method public elementAt(I)I
    .locals 2

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int/2addr v1, p1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final getMap()[[I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    return-object v0
.end method

.method public final getMap0()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    return-object v0
.end method

.method public indexOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/SuballocatedIntVector;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .locals 9

    const/4 v6, -0x1

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v0, p2, v7

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v2, p2, v7

    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v3, v7, v8

    :goto_1
    if-ge v0, v3, :cond_4

    iget-object v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v1, v7, v0

    if-eqz v1, :cond_3

    move v5, v2

    :goto_2
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge v5, v7, :cond_3

    aget v7, v1, v5

    if-ne v7, p1, :cond_2

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v6, v0

    add-int/2addr v6, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget v8, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v4, v7, v8

    iget-object v7, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v1, v7, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_0

    aget v7, v1, v5

    if-ne v7, p1, :cond_5

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public removeAllElements()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    iput-object v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCache:[I

    iput v1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_buildCacheStartIndex:I

    return-void
.end method

.method public setElementAt(II)V
    .locals 8

    const/4 v7, 0x0

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    if-ge p2, v5, :cond_1

    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map0:[I

    aput p1, v5, p2

    :goto_0
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-lt p2, v5, :cond_0

    add-int/lit8 v5, p2, 0x1

    iput v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_SHIFT:I

    ushr-int v1, p2, v5

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_MASK:I

    and-int v4, p2, v5

    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v5, v5

    if-lt v1, v5, :cond_2

    iget v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_numblocks:I

    add-int v3, v1, v5

    new-array v2, v3, [[I

    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget-object v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    :cond_2
    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    aget-object v0, v5, v1

    if-nez v0, :cond_3

    iget-object v5, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_map:[[I

    iget v6, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_blocksize:I

    new-array v0, v6, [I

    aput-object v0, v5, v1

    :cond_3
    aput p1, v0, v4

    goto :goto_0
.end method

.method public setSize(I)V
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/SuballocatedIntVector;->m_firstFree:I

    return v0
.end method

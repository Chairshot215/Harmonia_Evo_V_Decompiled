.class public Lorg/apache/xml/utils/NodeVector;
.super Ljava/lang/Object;
.source "NodeVector.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x9e6c3ff496c94deL


# instance fields
.field private m_blocksize:I

.field protected m_firstFree:I

.field private m_map:[I

.field private m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    iput p1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    return-void
.end method


# virtual methods
.method public RemoveAllNoClear()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    goto :goto_0
.end method

.method public addElement(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void

    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public appendNodes(Lorg/apache/xml/utils/NodeVector;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/xml/utils/NodeVector;->size()I

    move-result v0

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    :cond_0
    :goto_0
    iget-object v2, p1, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v1, v2, [I

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/2addr v3, v0

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/utils/NodeVector;

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, v0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public contains(I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public elementAt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 4

    const/4 v2, -0x1

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, p2

    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public insertElementAt(II)V
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_2

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_0
    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v1, p2

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void

    :cond_2
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public insertInOrder(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/utils/NodeVector;->insertElementAt(II)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    goto :goto_1
.end method

.method public final peepOrNull()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final peepTail()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final peepTailSub1()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method public final pop()I
    .locals 4

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aget v0, v1, v2

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v3, -0x1

    aput v3, v1, v2

    return v0
.end method

.method public final popAndTop()I
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput v0, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public final popPair()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    aput v2, v0, v1

    return-void
.end method

.method public final popQuick()V
    .locals 3

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v2, -0x1

    aput v2, v0, v1

    return-void
.end method

.method public final push(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v2, :cond_1

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v2, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void

    :cond_1
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v1, v2, [I

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public final pushPair(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    aput p1, v1, v2

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    aput p2, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return-void

    :cond_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 3

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    goto :goto_0
.end method

.method public removeElement(I)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aget v1, v3, v0

    if-ne v1, p1, :cond_3

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v5, v0, -0x1

    iget v6, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v6, v0

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public removeElementAt(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    add-int/lit8 v3, p1, -0x1

    iget v4, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    sub-int/2addr v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    goto :goto_0
.end method

.method public setElementAt(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/NodeVector;->m_mapSize:I

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/xml/utils/NodeVector;->addElement(I)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    aput p1, v0, p2

    return-void
.end method

.method public final setTail(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    return-void
.end method

.method public final setTailSub1(I)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    iget v1, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x2

    aput p1, v0, v1

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    return v0
.end method

.method public sort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/xml/utils/NodeVector;->m_map:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/xml/utils/NodeVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    return-void
.end method

.method public sort([III)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move v2, p2

    move v1, p3

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_2

    aget v4, p1, v2

    aget v5, p1, v1

    if-le v4, v5, :cond_0

    aget v0, p1, v2

    aget v4, p1, v1

    aput v4, p1, v2

    aput v0, p1, v1

    goto :goto_0

    :cond_2
    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    aget v3, p1, v4

    add-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    aget v5, p1, v1

    aput v5, p1, v4

    aput v3, p1, v1

    :cond_3
    :goto_1
    if-ge v2, v1, :cond_6

    :goto_2
    aget v4, p1, v2

    if-gt v4, v3, :cond_4

    if-ge v2, v1, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    aget v4, p1, v1

    if-gt v3, v4, :cond_5

    if-ge v2, v1, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    if-ge v2, v1, :cond_3

    aget v0, p1, v2

    aget v4, p1, v1

    aput v4, p1, v2

    aput v0, p1, v1

    goto :goto_1

    :cond_6
    aget v4, p1, v1

    aput v4, p1, p3

    aput v3, p1, v1

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, p1, p2, v4}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, p1, v4, p3}, Lorg/apache/xml/utils/NodeVector;->sort([III)V

    goto :goto_0
.end method

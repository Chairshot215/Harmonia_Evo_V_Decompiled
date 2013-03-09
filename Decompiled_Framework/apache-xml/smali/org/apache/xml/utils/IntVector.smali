.class public Lorg/apache/xml/utils/IntVector;
.super Ljava/lang/Object;
.source "IntVector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iput p2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/utils/IntVector;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    iget v0, p1, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    iget-object v0, p1, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final addElement(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final addElements(I)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final addElements(II)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v3, p2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v1, v2, [I

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    aput p1, v2, v3

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/apache/xml/utils/IntVector;

    invoke-direct {v0, p0}, Lorg/apache/xml/utils/IntVector;-><init>(Lorg/apache/xml/utils/IntVector;)V

    return-object v0
.end method

.method public final contains(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final elementAt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v0, v0, p1

    return v0
.end method

.method public final indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x8000

    goto :goto_1
.end method

.method public final indexOf(II)I
    .locals 2

    move v0, p2

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x8000

    goto :goto_1
.end method

.method public final insertElementAt(II)V
    .locals 5

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_mapSize:I

    new-array v0, v1, [I

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    :cond_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v3, p2, 0x1

    iget v4, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    sub-int/2addr v4, p2

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, v1, p2

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final lastIndexOf(I)I
    .locals 2

    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x8000

    goto :goto_1
.end method

.method public final removeAllElements()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v2, -0x8000

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final removeElement(I)Z
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_1

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    sub-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v2, -0x8000

    aput v2, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public final removeElementAt(I)V
    .locals 4

    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    iget v3, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    const/high16 v1, -0x8000

    aput v1, v0, p1

    goto :goto_0
.end method

.method public final setElementAt(II)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/IntVector;->m_map:[I

    aput p1, v0, p2

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/IntVector;->m_firstFree:I

    return v0
.end method

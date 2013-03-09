.class public Lorg/apache/xpath/compiler/OpMapVector;
.super Ljava/lang/Object;
.source "OpMapVector.java"


# instance fields
.field protected m_blocksize:I

.field protected m_lengthPos:I

.field protected m_map:[I

.field protected m_mapSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    iput p2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iput p3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    return-void
.end method


# virtual methods
.method public final elementAt(I)I
    .locals 1

    iget-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aget v0, v0, p1

    return v0
.end method

.method public final setElementAt(II)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    if-lt p2, v2, :cond_0

    iget v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_blocksize:I

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    new-array v0, v2, [I

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    :cond_0
    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    aput p1, v2, p2

    return-void
.end method

.method public final setToSize(I)V
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [I

    iget-object v1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    iget-object v2, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    iget v3, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_lengthPos:I

    aget v2, v2, v3

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_mapSize:I

    iput-object v0, p0, Lorg/apache/xpath/compiler/OpMapVector;->m_map:[I

    return-void
.end method

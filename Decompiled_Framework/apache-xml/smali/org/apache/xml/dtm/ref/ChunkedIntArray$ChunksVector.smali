.class Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;
.super Ljava/lang/Object;
.source "ChunkedIntArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/ChunkedIntArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChunksVector"
.end annotation


# instance fields
.field final BLOCKSIZE:I

.field m_map:[[I

.field m_mapSize:I

.field pos:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;


# direct methods
.method constructor <init>(Lorg/apache/xml/dtm/ref/ChunkedIntArray;)V
    .locals 2

    const/16 v1, 0x40

    iput-object p1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->this$0:Lorg/apache/xml/dtm/ref/ChunkedIntArray;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->BLOCKSIZE:I

    new-array v0, v1, [[I

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iput v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method


# virtual methods
.method addElement([I)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v2, v3, :cond_1

    iget v1, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    :goto_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    add-int/lit8 v2, v2, 0x40

    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_mapSize:I

    new-array v0, v2, [[I

    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    :cond_1
    iget-object v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    iget v3, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    aput-object p1, v2, v3

    iget v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return-void
.end method

.method final elementAt(I)[I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->m_map:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method final size()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/dtm/ref/ChunkedIntArray$ChunksVector;->pos:I

    return v0
.end method

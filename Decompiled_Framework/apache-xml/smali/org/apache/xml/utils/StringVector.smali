.class public Lorg/apache/xml/utils/StringVector;
.super Ljava/lang/Object;
.source "StringVector.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x4552a3bdbda168c4L


# instance fields
.field protected m_blocksize:I

.field protected m_firstFree:I

.field protected m_map:[Ljava/lang/String;

.field protected m_mapSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    iput p1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final containsIgnoreCase(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final elementAt(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method

.method public final peek()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final pop()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    if-gtz v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aget-object v0, v2, v3

    iget-object v2, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object v1, v2, v3

    goto :goto_0
.end method

.method public final push(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_blocksize:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_mapSize:I

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/apache/xml/utils/StringVector;->m_map:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    aput-object p1, v1, v2

    iget v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lorg/apache/xml/utils/StringVector;->m_firstFree:I

    return v0
.end method

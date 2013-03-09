.class public Lcom/futuredial/wbxml/BinArray;
.super Ljava/lang/Object;
.source "BinArray.java"


# instance fields
.field protected m_nIndex:I

.field protected m_pData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 27
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "nSize"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 32
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    .line 33
    return-void
.end method


# virtual methods
.method public ReSizeBuffer(I)I
    .locals 6
    .parameter "nLen"

    .prologue
    const/4 v5, 0x0

    .line 9
    invoke-virtual {p0}, Lcom/futuredial/wbxml/BinArray;->getRemainSize()I

    move-result v3

    if-lt v3, p1, :cond_0

    .line 11
    iget-object v3, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v3, v3

    .line 22
    :goto_0
    return v3

    .line 13
    :cond_0
    move v0, p1

    .line 14
    .local v0, nAS:I
    const/16 v3, 0x200

    if-ge p1, v3, :cond_1

    .line 16
    const/16 v0, 0x200

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v3, v3

    add-int v1, v3, v0

    .line 19
    .local v1, nNewSize:I
    new-array v2, v1, [B

    .line 20
    .local v2, pTmpBuffer:[B
    iget-object v3, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget-object v4, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput-object v2, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    .line 22
    iget-object v3, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v3, v3

    goto :goto_0
.end method

.method public getBinData(I)[B
    .locals 4
    .parameter "nLen"

    .prologue
    .line 71
    new-array v0, p1, [B

    .line 72
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 74
    return-object v0
.end method

.method public getByte()I
    .locals 3

    .prologue
    .line 64
    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    aget-byte v0, v1, v2

    .line 65
    .local v0, ret:I
    and-int/lit16 v0, v0, 0xff

    .line 66
    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 67
    return v0
.end method

.method public getData()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    new-array v0, v1, [B

    .line 44
    .local v0, ret:[B
    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    return v0
.end method

.method public getInt32()I
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    aget-byte v1, v1, v2

    and-int/lit8 v0, v1, 0x7f

    .line 80
    .local v0, ret:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 82
    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 83
    shl-int/lit8 v1, v0, 0x7

    iget-object v2, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v3, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x7f

    or-int v0, v1, v2

    goto :goto_0

    .line 85
    :cond_0
    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 86
    return v0
.end method

.method public getRemainSize()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v0, v0

    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getStringA()[B
    .locals 3

    .prologue
    .line 90
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 91
    .local v1, ret:[B
    iget v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_1

    .line 95
    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/futuredial/wbxml/BinArray;->getBinData(I)[B

    move-result-object v1

    .line 96
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 100
    :cond_0
    return-object v1

    .line 91
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStringA(I)[B
    .locals 1
    .parameter "nLen"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/BinArray;->getBinData(I)[B

    move-result-object v0

    .line 106
    .local v0, ret:[B
    return-object v0
.end method

.method public setBinData([B)V
    .locals 4
    .parameter "binData"

    .prologue
    .line 132
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/BinArray;->ReSizeBuffer(I)I

    .line 133
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 135
    return-void
.end method

.method public setByte(I)V
    .locals 3
    .parameter "nData"

    .prologue
    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/BinArray;->ReSizeBuffer(I)I

    .line 127
    iget-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 128
    iget v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 129
    return-void
.end method

.method public setData([B)V
    .locals 3
    .parameter "pData"

    .prologue
    const/4 v2, 0x0

    .line 37
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    .line 38
    iget-object v0, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iput v2, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 40
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "nIndex"

    .prologue
    .line 50
    iput p1, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 51
    return-void
.end method

.method public setInt32(I)V
    .locals 7
    .parameter "nData"

    .prologue
    .line 139
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/futuredial/wbxml/BinArray;->ReSizeBuffer(I)I

    .line 140
    const/4 v4, 0x5

    new-array v0, v4, [B

    .line 141
    .local v0, b:[B
    const/4 v2, 0x0

    .line 142
    .local v2, i:I
    move v3, p1

    .line 143
    .local v3, t:I
    const/4 v1, 0x0

    .line 144
    .local v1, f:I
    :goto_0
    if-eqz v3, :cond_0

    .line 146
    int-to-byte v4, v3

    and-int/lit8 v4, v4, 0x7f

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 147
    aget-byte v4, v0, v2

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 148
    shr-int/lit8 v3, v3, 0x7

    .line 149
    if-lez v3, :cond_0

    .line 151
    add-int/lit8 v2, v2, 0x1

    .line 152
    const/16 v1, 0x80

    .line 153
    goto :goto_0

    .line 160
    :cond_0
    :goto_1
    if-ltz v2, :cond_1

    .line 162
    iget-object v4, p0, Lcom/futuredial/wbxml/BinArray;->m_pData:[B

    iget v5, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    aget-byte v6, v0, v2

    aput-byte v6, v4, v5

    .line 163
    iget v4, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/futuredial/wbxml/BinArray;->m_nIndex:I

    .line 160
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 165
    :cond_1
    return-void
.end method

.method public setStringA([B)V
    .locals 1
    .parameter "binData"

    .prologue
    .line 169
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/BinArray;->ReSizeBuffer(I)I

    .line 170
    invoke-virtual {p0, p1}, Lcom/futuredial/wbxml/BinArray;->setBinData([B)V

    .line 171
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/futuredial/wbxml/BinArray;->setByte(I)V

    .line 175
    :cond_0
    return-void
.end method

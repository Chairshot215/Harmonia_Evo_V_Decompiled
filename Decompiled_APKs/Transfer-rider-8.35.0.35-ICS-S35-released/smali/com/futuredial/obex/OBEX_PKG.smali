.class public Lcom/futuredial/obex/OBEX_PKG;
.super Ljava/lang/Object;
.source "OBEX_PKG.java"


# instance fields
.field protected Command:B

.field protected HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

.field protected LastFrame:Z

.field protected PkgLen:Lcom/futuredial/obex/XWORD;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    .line 12
    iput-byte v1, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    .line 14
    new-array v0, v1, [Lcom/futuredial/obex/OBEX_HEADER;

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    .line 15
    return-void
.end method


# virtual methods
.method public IsLastFrame()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    return v0
.end method

.method public addHeader(BI)V
    .locals 1
    .parameter "nHeaderTag"
    .parameter "nValue"

    .prologue
    .line 189
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;-><init>()V

    .line 190
    .local v0, header:Lcom/futuredial/obex/OBEX_HEADER_D;
    invoke-virtual {v0, p1}, Lcom/futuredial/obex/OBEX_HEADER_D;->setTag(B)V

    .line 191
    invoke-virtual {v0, p2}, Lcom/futuredial/obex/OBEX_HEADER_D;->setValue(I)V

    .line 192
    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    .line 193
    return-void
.end method

.method public addHeader(B[B)V
    .locals 1
    .parameter "nHeaderTag"
    .parameter "StreamValue"

    .prologue
    .line 196
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_W;-><init>()V

    .line 197
    .local v0, header:Lcom/futuredial/obex/OBEX_HEADER_W;
    invoke-virtual {v0, p1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setTag(B)V

    .line 198
    invoke-virtual {v0, p2}, Lcom/futuredial/obex/OBEX_HEADER_W;->setValue([B)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    .line 200
    return-void
.end method

.method public addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V
    .locals 4
    .parameter "Header"

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lcom/futuredial/obex/OBEX_HEADER;

    .line 183
    .local v0, TmpHdr:[Lcom/futuredial/obex/OBEX_HEADER;
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 185
    iput-object v0, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    .line 186
    return-void
.end method

.method public addUStrHeader(B[B)V
    .locals 1
    .parameter "nHeaderTag"
    .parameter "StreamValue"

    .prologue
    .line 203
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_USTR;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_USTR;-><init>()V

    .line 204
    .local v0, header:Lcom/futuredial/obex/OBEX_HEADER_USTR;
    invoke-virtual {v0, p1}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->setTag(B)V

    .line 205
    invoke-virtual {v0, p2}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->setValue([B)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    .line 207
    return-void
.end method

.method public freeHeader()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/futuredial/obex/OBEX_HEADER;

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    .line 211
    return-void
.end method

.method public getCommand()B
    .locals 1

    .prologue
    .line 252
    iget-byte v0, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    return v0
.end method

.method public getHeader(B)Lcom/futuredial/obex/OBEX_HEADER;
    .locals 2
    .parameter "HeaderTag"

    .prologue
    .line 214
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/futuredial/obex/OBEX_HEADER;->getTag()B

    move-result v1

    if-ne v1, p1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v1, v1, v0

    .line 221
    :goto_1
    return-object v1

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected getHeaderLen(Lcom/futuredial/obex/OBEX_HEADER;)I
    .locals 3
    .parameter "Header"

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/futuredial/obex/OBEX_HEADER;->getTag()B

    move-result v0

    .line 226
    .local v0, Tag:B
    and-int/lit8 v1, v0, -0x40

    const/16 v2, -0x40

    if-ne v1, v2, :cond_0

    .line 228
    check-cast p1, Lcom/futuredial/obex/OBEX_HEADER_D;

    .end local p1
    invoke-virtual {p1}, Lcom/futuredial/obex/OBEX_HEADER_D;->getSize()I

    move-result v1

    .line 238
    :goto_0
    return v1

    .line 230
    .restart local p1
    :cond_0
    and-int/lit8 v1, v0, -0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 232
    check-cast p1, Lcom/futuredial/obex/OBEX_HEADER_W;

    .end local p1
    invoke-virtual {p1}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v1

    goto :goto_0

    .line 234
    .restart local p1
    :cond_1
    and-int/lit8 v1, v0, -0x40

    if-nez v1, :cond_2

    .line 236
    check-cast p1, Lcom/futuredial/obex/OBEX_HEADER_USTR;

    .end local p1
    invoke-virtual {p1}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->getSize()I

    move-result v1

    goto :goto_0

    .line 238
    .restart local p1
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getObexPkgStream(IZ)[B
    .locals 9
    .parameter "nFreeByte"
    .parameter "bLastFrame"

    .prologue
    const/4 v8, 0x0

    .line 27
    new-array v5, v8, [B

    .line 28
    .local v5, retArray:[B
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_PKG;->getSize()I

    move-result v3

    .line 29
    .local v3, nLen:I
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    int-to-short v7, v3

    invoke-virtual {v6, v7}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 30
    new-array v5, v3, [B

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, nIdx:I
    iget-byte v6, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    aput-byte v6, v5, v8

    .line 33
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v7}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 34
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v7}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 35
    add-int/lit8 v2, p1, 0x3

    .line 36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 38
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER;->getTag()B

    move-result v4

    .line 39
    .local v4, nTag:B
    new-array v0, v8, [B

    .line 40
    .local v0, TmpArray:[B
    and-int/lit8 v6, v4, -0x40

    const/16 v7, -0x40

    if-ne v6, v7, :cond_1

    .line 42
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v6, v6, v1

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_D;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER_D;->getHeaderStream()[B

    move-result-object v0

    .line 56
    :goto_1
    array-length v6, v0

    invoke-static {v0, v8, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    array-length v6, v0

    add-int/2addr v2, v6

    .line 36
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_1
    and-int/lit8 v6, v4, -0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_2

    .line 46
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v6, v6, v1

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER_W;->getHeaderStream()[B

    move-result-object v0

    goto :goto_1

    .line 48
    :cond_2
    and-int/lit8 v6, v4, -0x40

    if-nez v6, :cond_0

    .line 50
    iget-object v6, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v6, v6, v1

    check-cast v6, Lcom/futuredial/obex/OBEX_HEADER_USTR;

    invoke-virtual {v6}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->getHeaderStream()[B

    move-result-object v0

    goto :goto_1

    .line 59
    .end local v0           #TmpArray:[B
    .end local v4           #nTag:B
    :cond_3
    if-eqz p2, :cond_4

    .line 61
    aget-byte v6, v5, v8

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 63
    :cond_4
    return-object v5
.end method

.method public getPkgLen()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v2}, Lcom/futuredial/obex/XWORD;->getSize()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 243
    .local v1, nRet:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/futuredial/obex/OBEX_PKG;->getHeaderLen(Lcom/futuredial/obex/OBEX_HEADER;)I

    move-result v2

    add-int/2addr v1, v2

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    return v1
.end method

.method public setCommand(B)V
    .locals 0
    .parameter "nCommand"

    .prologue
    .line 256
    iput-byte p1, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    .line 257
    return-void
.end method

.method public setLastFrame(Z)V
    .locals 0
    .parameter "bLastFrame"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    .line 24
    return-void
.end method

.method public setObexPkgStream([BI)Z
    .locals 9
    .parameter "ObexStream"
    .parameter "nFreeByte"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 71
    new-array v7, v5, [Lcom/futuredial/obex/OBEX_HEADER;

    iput-object v7, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    .line 72
    aget-byte v7, p1, v5

    invoke-virtual {p0, v7}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 74
    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    and-int/lit8 v7, v7, 0x7f

    const/16 v8, 0x20

    if-eq v7, v8, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    and-int/lit8 v7, v7, 0x7f

    const/16 v8, 0x10

    if-eq v7, v8, :cond_0

    .line 123
    :goto_0
    return v5

    .line 81
    :cond_0
    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    const/16 v8, -0x60

    if-ne v7, v8, :cond_2

    .line 83
    iput-boolean v6, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    .line 89
    :goto_1
    iget-object v5, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    aget-byte v7, p1, v6

    const/4 v8, 0x2

    aget-byte v8, p1, v8

    invoke-virtual {v5, v7, v8}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 90
    add-int/lit8 v1, p2, 0x3

    .line 93
    .local v1, nIdx:I
    :cond_1
    :goto_2
    array-length v5, p1

    if-lt v1, v5, :cond_3

    move v5, v6

    .line 123
    goto :goto_0

    .line 87
    .end local v1           #nIdx:I
    :cond_2
    iput-boolean v5, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    goto :goto_1

    .line 98
    .restart local v1       #nIdx:I
    :cond_3
    new-instance v3, Lcom/futuredial/obex/OBEX_HEADER;

    invoke-direct {v3}, Lcom/futuredial/obex/OBEX_HEADER;-><init>()V

    .line 99
    .local v3, tmpHdr:Lcom/futuredial/obex/OBEX_HEADER;
    aget-byte v5, p1, v1

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_HEADER;->setTag(B)V

    .line 100
    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER;->getTag()B

    move-result v2

    .line 101
    .local v2, nTag:B
    and-int/lit8 v5, v2, -0x40

    const/16 v7, -0x40

    if-ne v5, v7, :cond_4

    .line 103
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;-><init>()V

    .line 104
    .local v0, dhdr:Lcom/futuredial/obex/OBEX_HEADER_D;
    invoke-virtual {v0, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_D;->setHeaderStream([BI)V

    .line 105
    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 106
    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2

    .line 108
    .end local v0           #dhdr:Lcom/futuredial/obex/OBEX_HEADER_D;
    :cond_4
    and-int/lit8 v5, v2, -0x40

    const/16 v7, 0x40

    if-ne v5, v7, :cond_5

    .line 110
    new-instance v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-direct {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;-><init>()V

    .line 111
    .local v4, whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    invoke-virtual {v4, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setHeaderStream([BI)V

    .line 112
    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 113
    invoke-virtual {p0, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2

    .line 115
    .end local v4           #whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_5
    and-int/lit8 v5, v2, -0x40

    if-nez v5, :cond_1

    .line 117
    new-instance v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-direct {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;-><init>()V

    .line 118
    .restart local v4       #whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    invoke-virtual {v4, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setHeaderStream([BI)V

    .line 119
    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 120
    invoke-virtual {p0, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2
.end method

.method public setObexRequestPkgStream([BI)Z
    .locals 11
    .parameter "ObexStream"
    .parameter "nFreeByte"

    .prologue
    const/4 v10, 0x2

    const/16 v9, -0x80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    new-array v7, v5, [Lcom/futuredial/obex/OBEX_HEADER;

    iput-object v7, p0, Lcom/futuredial/obex/OBEX_PKG;->HeaderArray:[Lcom/futuredial/obex/OBEX_HEADER;

    .line 128
    aget-byte v7, p1, v5

    invoke-virtual {p0, v7}, Lcom/futuredial/obex/OBEX_PKG;->setCommand(B)V

    .line 130
    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    if-eq v7, v9, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    const/16 v8, -0x7f

    if-eq v7, v8, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    and-int/lit8 v7, v7, 0x7f

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    and-int/lit8 v7, v7, 0x7f

    if-eq v7, v10, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    const/16 v8, -0x7b

    if-eq v7, v8, :cond_0

    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 178
    :goto_0
    return v5

    .line 137
    :cond_0
    iget-byte v7, p0, Lcom/futuredial/obex/OBEX_PKG;->Command:B

    and-int/lit8 v7, v7, -0x80

    if-ne v7, v9, :cond_2

    .line 139
    iput-boolean v6, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    .line 145
    :goto_1
    iget-object v5, p0, Lcom/futuredial/obex/OBEX_PKG;->PkgLen:Lcom/futuredial/obex/XWORD;

    aget-byte v7, p1, v6

    aget-byte v8, p1, v10

    invoke-virtual {v5, v7, v8}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 146
    add-int/lit8 v1, p2, 0x3

    .line 149
    .local v1, nIdx:I
    :cond_1
    :goto_2
    array-length v5, p1

    if-lt v1, v5, :cond_3

    move v5, v6

    .line 178
    goto :goto_0

    .line 143
    .end local v1           #nIdx:I
    :cond_2
    iput-boolean v5, p0, Lcom/futuredial/obex/OBEX_PKG;->LastFrame:Z

    goto :goto_1

    .line 153
    .restart local v1       #nIdx:I
    :cond_3
    new-instance v3, Lcom/futuredial/obex/OBEX_HEADER;

    invoke-direct {v3}, Lcom/futuredial/obex/OBEX_HEADER;-><init>()V

    .line 154
    .local v3, tmpHdr:Lcom/futuredial/obex/OBEX_HEADER;
    aget-byte v5, p1, v1

    invoke-virtual {v3, v5}, Lcom/futuredial/obex/OBEX_HEADER;->setTag(B)V

    .line 155
    invoke-virtual {v3}, Lcom/futuredial/obex/OBEX_HEADER;->getTag()B

    move-result v2

    .line 156
    .local v2, nTag:B
    and-int/lit8 v5, v2, -0x40

    const/16 v7, -0x40

    if-ne v5, v7, :cond_4

    .line 158
    new-instance v0, Lcom/futuredial/obex/OBEX_HEADER_D;

    invoke-direct {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;-><init>()V

    .line 159
    .local v0, dhdr:Lcom/futuredial/obex/OBEX_HEADER_D;
    invoke-virtual {v0, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_D;->setHeaderStream([BI)V

    .line 160
    invoke-virtual {v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 161
    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2

    .line 163
    .end local v0           #dhdr:Lcom/futuredial/obex/OBEX_HEADER_D;
    :cond_4
    and-int/lit8 v5, v2, -0x40

    const/16 v7, 0x40

    if-ne v5, v7, :cond_5

    .line 165
    new-instance v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-direct {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;-><init>()V

    .line 166
    .local v4, whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    invoke-virtual {v4, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setHeaderStream([BI)V

    .line 167
    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 168
    invoke-virtual {p0, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2

    .line 170
    .end local v4           #whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    :cond_5
    and-int/lit8 v5, v2, -0x40

    if-nez v5, :cond_1

    .line 172
    new-instance v4, Lcom/futuredial/obex/OBEX_HEADER_W;

    invoke-direct {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;-><init>()V

    .line 173
    .restart local v4       #whdr:Lcom/futuredial/obex/OBEX_HEADER_W;
    invoke-virtual {v4, p1, v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setHeaderStream([BI)V

    .line 174
    invoke-virtual {v4}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v5

    add-int/2addr v1, v5

    .line 175
    invoke-virtual {p0, v4}, Lcom/futuredial/obex/OBEX_PKG;->addHeader(Lcom/futuredial/obex/OBEX_HEADER;)V

    goto :goto_2
.end method

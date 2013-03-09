.class public Lcom/futuredial/obex/OBEX_HEADER_W;
.super Lcom/futuredial/obex/OBEX_HEADER;
.source "OBEX_HEADER_W.java"


# instance fields
.field protected Len:Lcom/futuredial/obex/XWORD;

.field protected Value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_HEADER;-><init>()V

    .line 9
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    .line 10
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    .line 11
    return-void
.end method


# virtual methods
.method public getHeaderStream()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    new-array v1, v5, [B

    .line 34
    .local v1, retArray:[B
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_W;->getSize()I

    move-result v0

    .line 35
    .local v0, nLen:I
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    int-to-short v3, v0

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 36
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    .line 38
    new-array v1, v0, [B

    .line 39
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_W;->getTag()B

    move-result v2

    aput-byte v2, v1, v5

    .line 40
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 41
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 42
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    array-length v4, v4

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/futuredial/obex/OBEX_HEADER;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    return-object v0
.end method

.method public getValueSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    array-length v0, v0

    return v0
.end method

.method public setHeaderStream([BI)V
    .locals 5
    .parameter "HeaderStream"
    .parameter "nBeginIndex"

    .prologue
    .line 19
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 21
    add-int/lit8 v1, p2, 0x0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/futuredial/obex/OBEX_HEADER_W;->setTag(B)V

    .line 22
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 23
    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getXWORD()I

    move-result v0

    .line 24
    .local v0, nLen:I
    if-lez v0, :cond_0

    .line 26
    add-int/lit8 v1, v0, -0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    .line 27
    add-int/lit8 v1, p2, 0x3

    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x3

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .end local v0           #nLen:I
    :cond_0
    return-void
.end method

.method public setValue([B)V
    .locals 0
    .parameter "HeaderValue"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/futuredial/obex/OBEX_HEADER_W;->Value:[B

    .line 49
    return-void
.end method

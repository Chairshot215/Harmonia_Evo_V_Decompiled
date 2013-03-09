.class public Lcom/futuredial/obex/OBEX_HEADER_USTR;
.super Lcom/futuredial/obex/OBEX_HEADER;
.source "OBEX_HEADER_USTR.java"


# instance fields
.field protected Len:Lcom/futuredial/obex/XWORD;

.field protected Value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_HEADER;-><init>()V

    .line 8
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    .line 9
    new-instance v0, Lcom/futuredial/obex/XWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    .line 10
    return-void
.end method


# virtual methods
.method public getHeaderStream()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->getSize()I

    move-result v0

    .line 36
    .local v0, nLen:I
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    int-to-short v3, v0

    invoke-virtual {v2, v3}, Lcom/futuredial/obex/XWORD;->setXWORD(I)V

    .line 37
    new-array v1, v0, [B

    .line 38
    .local v1, ret:[B
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->getTag()B

    move-result v2

    aput-byte v2, v1, v5

    .line 39
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XWORD;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 40
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XWORD;->getLow()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 41
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    array-length v4, v4

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-object v1
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/futuredial/obex/OBEX_HEADER;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    invoke-virtual {v1}, Lcom/futuredial/obex/XWORD;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    return-object v0
.end method

.method public setHeaderStream([BI)V
    .locals 5
    .parameter "HeaderStream"
    .parameter "nBeginIndex"

    .prologue
    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, nSize:I
    aget-byte v2, p1, p2

    invoke-virtual {p0, v2}, Lcom/futuredial/obex/OBEX_HEADER_USTR;->setTag(B)V

    .line 21
    iget-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Len:Lcom/futuredial/obex/XWORD;

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    invoke-virtual {v2, v3, v4}, Lcom/futuredial/obex/XWORD;->setXWORD(BB)V

    .line 22
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 24
    add-int v2, v0, p2

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    add-int v2, v0, p2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    if-nez v2, :cond_1

    .line 26
    add-int/lit8 v2, v0, -0x3

    add-int/lit8 v1, v2, 0x1

    .line 30
    :cond_0
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    .line 31
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    return-void

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setValue([B)V
    .locals 0
    .parameter "binData"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/futuredial/obex/OBEX_HEADER_USTR;->Value:[B

    .line 47
    return-void
.end method

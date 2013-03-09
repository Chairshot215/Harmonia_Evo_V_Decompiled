.class public Lcom/futuredial/obex/OBEX_HEADER_D;
.super Lcom/futuredial/obex/OBEX_HEADER;
.source "OBEX_HEADER_D.java"


# instance fields
.field Value:Lcom/futuredial/obex/XDWORD;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/futuredial/obex/OBEX_HEADER;-><init>()V

    .line 8
    new-instance v0, Lcom/futuredial/obex/XDWORD;

    invoke-direct {v0}, Lcom/futuredial/obex/XDWORD;-><init>()V

    iput-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    .line 9
    return-void
.end method


# virtual methods
.method public getHeaderStream()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    new-array v1, v3, [B

    .line 34
    .local v1, retArray:[B
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getSize()I

    move-result v0

    .line 35
    .local v0, nLen:I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 37
    new-array v1, v0, [B

    .line 38
    invoke-virtual {p0}, Lcom/futuredial/obex/OBEX_HEADER_D;->getTag()B

    move-result v2

    aput-byte v2, v1, v3

    .line 39
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XDWORD;->getHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 40
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XDWORD;->getMHeight()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 41
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XDWORD;->getMLow()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 42
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v3}, Lcom/futuredial/obex/XDWORD;->getLow()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 44
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/futuredial/obex/OBEX_HEADER;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v1}, Lcom/futuredial/obex/XDWORD;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v0}, Lcom/futuredial/obex/XDWORD;->getXDWORD()I

    move-result v0

    return v0
.end method

.method public setHeaderStream([BI)V
    .locals 5
    .parameter "HeaderStream"
    .parameter "nStartIndex"

    .prologue
    .line 12
    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 14
    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/futuredial/obex/OBEX_HEADER_D;->setTag(B)V

    .line 15
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/futuredial/obex/XDWORD;->setXDWORD(BBBB)V

    .line 17
    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "nValue"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/futuredial/obex/OBEX_HEADER_D;->Value:Lcom/futuredial/obex/XDWORD;

    invoke-virtual {v0, p1}, Lcom/futuredial/obex/XDWORD;->setXDWORD(I)V

    .line 25
    return-void
.end method
